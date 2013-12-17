library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Ksa is
    port (
		  
		  key             : in std_logic_vector(127 downto 0);	-- key
		  status				: out std_logic_vector(127 downto 0)
	 );
end entity Arc4_Ksa;

architecture behave of Arc4_Ksa is

	signal s_key0 : unsigned(32 downto 0);
	signal s_key1 : unsigned(32 downto 0);

begin

	process (key) 
		variable mline : line;
	begin
	
		s_key0 <= unsigned(key(31 downto 0));
		s_key1 <= unsigned(key(63 downto 32));
	
		status <= std_logic_vector(s_key0 & s_key1);
		
	end process;
	
end behave;
