library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Cypher is
    port (
		  clk					: in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  reset				: in std_logic;
		  i_stream			: in std_logic_vector(31 downto 0);
		  o_stream			: out std_logic_vector(31 downto 0);
		  out_ok				: out std_logic
	 );
end entity Arc4_Cypher;

architecture behave of Arc4_Cypher is

	component Arc4_Ksa is
		port (  
			  clk					: in std_logic;
			  reset				: in std_logic;
			  key             : in std_logic_vector(127 downto 0);	-- key
			  status				: out std_logic_vector(2047 downto 0);
			  ready				: out std_logic
		);
	end component;

	type status_array is array(63 downto 0) of unsigned(31 downto 0);
	type key_array is array(3 downto 0) of unsigned(31 downto 0);
	
   signal s_key  		  		: key_array;
   signal s_status_a			: status_array;
	signal s_status 			: std_logic_vector(2047 downto 0);
	signal moment				: std_logic_vector(1 downto 0) := "00";	
	signal s_ready				: std_logic;
	signal old_in				: std_logic_vector(31 downto 0);
	signal old_x				: integer := 0;
	signal old_j				: integer := 0;
	
begin
	
	arc4_1: Arc4_Ksa port map (
		clk 		=> clk,
		key 		=> key,
	   status	=> s_status,
		ready 	=> s_ready,
		reset		=> reset
	);
	
	--process (clk, moment, s_ready, s_status, s_status_a, i_stream) 
	process (s_ready, clk, reset) 
		variable mline : line;
		variable j		: integer;
		variable x		: integer;
		variable temp	: unsigned(31 downto 0);

		begin
			if reset = '0' then
				if (s_ready = '1') then
					if (rising_edge(clk)) then
						if moment = "00" then
							out_ok <= '0';
							old_x <= 0;
							old_j <= 0;
		--					write(mline, string'("STATUS(i): "));
							for i in 1 to 64 loop
								s_status_a(i-1) <= unsigned(s_status((i*32 -1) downto ((i-1)*32)));
		--						hwrite(mline, std_logic_vector(s_status_a(i-1)));
		--						write(mline, string'(" "));
							end loop;
		--					writeline(output, mline);
							moment <= "10";
						elsif moment = "10" then
					-- 	 C CODE	
					--     i = (i + 1) % 64;
					--     j = (j + state[i]) % 64;
					--     t = state[i];
					--     state[i] = state[j];
					--     state[j] = t;
					--     out[x] ^= state[(state[i] + state[j]) % 64];
							x := old_x;
							j := old_j;
							old_in <= i_stream;
							x := (x + 1) mod 64;
							j := (j + to_integer(s_status_a(x))) mod 64;
							temp := s_status_a(x);
							s_status_a(x) <= s_status_a(j);
							s_status_a(j) <= temp;
							old_x <= x;
							old_j <= j;
							moment <= "11";
						elsif moment = "11" then
							if old_in /= i_stream then
								old_x <= 0;
								old_j <= 0;
								moment <= "00";
							else
								x := to_integer((s_status_a(x) + s_status_a(j)) mod 64);
								o_stream <= std_logic_vector(unsigned(i_stream) xor s_status_a(x));
				--				hwrite(mline, std_logic_vector(unsigned(i_stream) xor s_status_a(x)));
				--				writeline(output, mline);
								out_ok <= '1';
							end if;
						end if;
					end if;
				end if;
		else
			out_ok <= '0';
			old_x <= 0;
			old_j <= 0;
			moment <= "00";
		end if;
	end process;
	
end behave;
