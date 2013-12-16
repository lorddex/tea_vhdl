library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Cypher is
    port (
		  clk					: in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  i_stream			: in std_logic_vector(31 downto 0);
		  o_stream			: out std_logic_vector(31 downto 0)
	 );
end entity Arc4_Cypher;

architecture behave of Arc4_Cypher is

	component Arc4_Ksa is
		port (  
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
	
begin
	
	arc4_1: Arc4_Ksa port map (
		key 		=> key,
	   status	=> s_status,
		ready 	=> s_ready
	);
	
	--process (clk, moment, s_ready, s_status, s_status_a, i_stream) 
	process (clk) 
		variable mline : line;
		variable j		: integer := 0;
		variable x		: integer := 0;
		variable temp	: unsigned(31 downto 0);

		begin
	
		if (rising_edge(clk)) then
		if moment = "00" then
				if (s_ready = '1') then
					moment <= "01";
				else
					moment <= "00";
				end if;
				for i in 1 to 64 loop		
					s_status_a(i-1) <= "00000000000000000000000000000000";
				end loop;
--				o_stream<="00000000000000000000000000000000";
		elsif moment = "01" then
			for i in 1 to 64 loop
				hwrite(mline, s_status((i*32 -1) downto ((i-1)*32)));
				write(mline, string'(" to "));
				s_status_a(i-1) <= unsigned(s_status((i*32 -1) downto ((i-1)*32)));
				hwrite(mline, std_logic_vector(s_status_a(i-1)));	-- debug
				writeline(output, mline);
			end loop;
			moment <= "10";
--			o_stream<="00000000000000000000000000000000";
		elsif moment = "10" then
		
--      i = (i + 1) % 64;
--      j = (j + state[i]) % 64;
--      t = state[i];
--      state[i] = state[j];
--      state[j] = t;
--      out[x] ^= state[(state[i] + state[j]) % 64];
			
			x := (x + 1) mod 64;
			j := (j + to_integer(s_status_a(x))) mod 64;
			write(mline, string'("x= ")); 
			write(mline, x); 
			write(mline, string'(" "));
			hwrite(mline, std_logic_vector(s_status_a(x)));	-- debug
			write(mline, string'("j= ")); write(mline, j); write(mline, string'(" "));
			hwrite(mline, std_logic_vector(s_status_a(j)));	-- debug
			writeline(output, mline);
			temp := s_status_a(x);
			s_status_a(x) <= s_status_a(j);
			s_status_a(j) <= temp;
			x := to_integer((s_status_a(x) + s_status_a(j)) mod 64);
			o_stream <= std_logic_vector(unsigned(i_stream) xor s_status_a(x));
			hwrite(mline, std_logic_vector(unsigned(i_stream) xor s_status_a(x)));
			writeline(output, mline);
			moment <= "11";
		end if;
		end if;
	end process;
	
end behave;
