-- Pietrofrancesco Apollonio
-- 00609919

-- Attività progettuale di Sistemi Digitali
-- CryptBox

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Ksa is
    port (
		  clk				   : in std_logic;
		  key             : in std_logic_vector(127 downto 0);
		  reset				: in std_logic;
		  status				: out std_logic_vector(2047 downto 0);
		  ready				: out std_logic
	 );
end entity Arc4_Ksa;

architecture behave of Arc4_Ksa is

	type status_array is array(255 downto 0) of unsigned(7 downto 0);
	type key_array is array(15 downto 0) of unsigned(7 downto 0);
	
   signal s_key  		  		: key_array;
   signal s_status 			: status_array;
	signal round				: std_logic_vector(1 downto 0) := "00";
	signal ctr					: integer;
	
begin
	
	process (clk, reset) 
		variable mline : line;
		variable j		: integer := 0;
		variable temp	: unsigned(7 downto 0);
	begin
		if (reset = '0') then
			if (rising_edge(clk)) then
				if round = "00" then
					ready <= '0';
					for i in 1 to 16 loop
						s_key(i-1) <= unsigned(key(8*i-1 downto 8*(i-1)));
					end loop;
					for i in 0 to 255 loop
						s_status(i) <= to_unsigned(i, 8);
					end loop;
					round <= "01";
				elsif round = "01" then
						if (ctr < 256) then
							temp := (to_unsigned(j, 8) + s_status(ctr) + s_key(ctr mod 16)) mod 256;
							j := to_integer(temp);
							temp := s_status(ctr);
							s_status(ctr) <= s_status(j);
							s_status(j) <= temp;
							if (ctr=255) then
								round <= "10";
							else
								ctr <= ctr + 1;
							end if;
					end if;
				elsif round = "10" then
					for i in 1 to 256 loop
						status((i*8 -1) downto ((i-1)*8)) <= std_logic_vector(s_status(i-1));	
					end loop;
					ready <= '1';
					round <= "11";
				end if;
			end if;
		else
			ctr <= 0;
			j := 0;
			temp := x"00";
			round <= "00";
		end if;
	end process;
	
end behave;
