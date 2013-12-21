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

	type status_array is array(255 downto 0) of unsigned(7 downto 0);
	
   signal s_status_a			: status_array;
	signal s_status 			: std_logic_vector(2047 downto 0);
	signal step					: std_logic_vector(1 downto 0) := "00";	
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
	
	process (s_ready, clk, reset) 
		variable mline : line;
		variable j		: integer;
		variable x		: integer;
		variable t_int : integer;
		variable temp	: unsigned(7 downto 0);
		variable t_s   : unsigned(31 downto 0);
		begin
			if reset = '0' then
				if (s_ready = '1') then
					if (rising_edge(clk)) then
						if step = "00" then
							step <= "00";
							for i in 1 to 256 loop
								s_status_a(i-1) <= unsigned(s_status((i*8 -1) downto ((i-1)*8)));
							end loop;
							step <= "10";
						elsif step = "10" then
							x := old_x;
							j := old_j;
--							write(mline, x);
--							write(mline, string'(" "));
--							write(mline, j);
--							writeline(output, mline);
							old_in <= i_stream;
							for i in 0 to 3 loop
							x := (x + 1) mod 256;
							j := (j + to_integer(s_status_a(x))) mod 256;
							temp := s_status_a(x);
							s_status_a(x) <= s_status_a(j);
							s_status_a(j) <= temp;
							t_int := to_integer((s_status_a(x) + s_status_a(j)) mod 256);
							if i = 0 then
								t_s := x"000000" & s_status_a(t_int);
							elsif i = 1 then
								t_s := (x"0000" & s_status_a(t_int) & t_s(7 downto 0));
							elsif i = 2 then
								t_s := (x"00" & s_status_a(t_int) & t_s(15 downto 0));
							elsif i = 3 then
								t_s := (s_status_a(t_int) & t_s(23 downto 0));
							end if;
							end loop;
							old_x <= x;
							old_j <= j;
							o_stream <= std_logic_vector(unsigned(i_stream) xor t_s);
							step <= "11";
						elsif step = "11" then		
							if old_in /= i_stream then
								step <= "00";
								out_ok <= '0';
							else	
								out_ok <= '1';
							end if;
						end if;
					end if;
				end if;
		else
			out_ok <= '0';
			t_int := 0;
			t_s := x"00000000";
			temp := x"00";
			old_x <= 0;
			old_j <= 0;
			x:=0;
			j:=0;
			step <= "00";
		end if;
	end process;
	
end behave;
