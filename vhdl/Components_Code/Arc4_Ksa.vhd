library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Ksa is
    port (
		  key             : in std_logic_vector(127 downto 0);	-- key
		  status				: out std_logic_vector(2047 downto 0);
		  ready				: out std_logic
	 );
end entity Arc4_Ksa;

architecture behave of Arc4_Ksa is

	type status_array is array(63 downto 0) of unsigned(31 downto 0);
	type key_array is array(3 downto 0) of unsigned(31 downto 0);
	
   signal s_key  		  		: key_array;
   signal s_status 			: status_array;
	signal moment				: std_logic_vector(2 downto 0) := "000";
	
begin

	s_key(0) <= unsigned(key(31 downto 0));
	s_key(1) <= unsigned(key(63 downto 32));
	s_key(2) <= unsigned(key(95 downto 64));
	s_key(3) <= unsigned(key(127 downto 96));
	
	process (s_key, moment) 
		variable mline : line;
		variable j		: integer := 0;
		variable temp	: unsigned(31 downto 0);
	begin
	
		if moment = "000" then
			ready <= '0';
			if (s_key(0) >= "00000000000000000000000000000000"
				AND s_key(1) >= "00000000000000000000000000000000"
				AND s_key(2) >= "00000000000000000000000000000000" 
				AND s_key(3) >= "00000000000000000000000000000000") then
--				for i in 0 to 3 loop
--					write(mline, string'(" s_key(i)="));
--					hwrite(mline, std_logic_vector(s_key(i)));
--					writeline(output, mline);
--				end loop;
				moment <= "001";
			end if;
		end if;
		
		if moment = "001" then
			for i in 0 to 63 loop
				s_status(i) <= to_unsigned(i, 32);
			end loop;
			moment <= "010";
		end if;
		
		if moment = "010" then
		
			j := 0;
			for i in 0 to 63 loop
				temp := (to_unsigned(j, 32) + s_status(i) + s_key(i mod 4)) mod 64;
				j := to_integer(temp);
				if j >= 0 then
					temp := s_status(i);
					s_status(i) <= s_status(j);
					s_status(j) <= temp;
				end if;
			end loop;
			moment <= "011";
		end if;
	
		if moment = "011" then
			for i in 1 to 64 loop
				status((i*32 -1) downto ((i-1)*32)) <= std_logic_vector(s_status(i-1));	
--				hwrite(mline, std_logic_vector(s_status(i-1)));	-- debug
			end loop;
--			writeline(output, mline);
			moment <= "100";
			ready <= '1';
		end if;
		
	end process;
	
end behave;
