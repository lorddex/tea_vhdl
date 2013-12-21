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

--   constant s_status : status_array := 
--				(x"73", x"43", x"4E", x"D7", x"A9", x"16", x"0E", x"46", x"3F", x"76", x"B8", x"E7", x"CC", x"58", x"10", x"A6", x"6A", x"D0", x"07", x"2F",
--				 x"74", x"4F", x"7D", x"CF", x"39", x"97", x"04", x"AE", x"62", x"B7", x"C9", x"3D", x"81", x"F7", x"8A", x"BB", x"25", x"A8", x"95", x"5B",
--				 x"9F", x"15", x"60", x"51", x"9A", x"87", x"C4", x"4A", x"B4", x"0D", x"A5", x"83", x"D3", x"1B", x"33", x"57", x"DF", x"D6", x"FA", x"6F",
--				 x"2B", x"49", x"C6", x"1A", x"53", x"01", x"80", x"1C", x"12", x"32", x"68", x"5C", x"E2", x"4D", x"79", x"7F", x"EB", x"EC", x"18", x"BD",
--				 x"BA", x"64", x"4B", x"D9", x"9D", x"C8", x"20", x"84", x"CE", x"E8", x"C0", x"45", x"7C", x"99", x"7E", x"E4", x"E5", x"13", x"30", x"82",
--				 x"42", x"06", x"8E", x"AD", x"F5", x"19", x"65", x"26", x"93", x"7B", x"34", x"88", x"C1", x"3E", x"8D", x"70", x"FE", x"41", x"F3", x"EA",
--				 x"D1", x"72", x"FF", x"24", x"CB", x"11", x"E6", x"CD", x"7A", x"47", x"B0", x"3A", x"A7", x"75", x"DE", x"C2", x"54", x"F8", x"6E", x"E9",
--				 x"67", x"C7", x"C5", x"B5", x"59", x"5F", x"40", x"B3", x"2D", x"F4", x"F9", x"F6", x"C3", x"61", x"1D", x"CA", x"8C", x"BC", x"D2", x"A3",
--				 x"27", x"0F", x"FC", x"6D", x"E3", x"BF", x"56", x"A1", x"D4", x"17", x"1E", x"35", x"DC", x"DB", x"F0", x"71", x"FB", x"6B", x"55", x"22",
--				 x"98", x"B9", x"3C", x"A0", x"D5", x"5A", x"EF", x"08", x"BE", x"96", x"91", x"2C", x"09", x"B2", x"86", x"9B", x"36", x"31", x"85", x"89",
--				 x"48", x"66", x"AB", x"92", x"A2", x"37", x"8F", x"3B", x"DA", x"29", x"E1", x"AC", x"00", x"F2", x"02", x"05", x"5E", x"77", x"44", x"E0",
--				 x"1F", x"B1", x"90", x"8B", x"A4", x"9E", x"63", x"AF", x"9C", x"EE", x"69", x"03", x"0B", x"ED", x"AA", x"4C", x"2A", x"94", x"23", x"DD",
--				 x"38", x"2E", x"D8", x"28", x"52", x"21", x"50", x"F1", x"5D", x"78", x"0A", x"FD", x"6C", x"14", x"B6", x"0C");
				
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
