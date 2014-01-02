-- Pietrofrancesco Apollonio
-- 00609919

-- Attività progettuale di Sistemi Digitali
-- CryptBox

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity TeaCore is
    port (
	     clk					: in std_logic;
		  mode				: in std_logic; 								
		  key             : in std_logic_vector(127 downto 0);	
		  vi      	      : in std_logic_vector (63 downto 0); 	
		  reset				: in std_logic;								
		  vo      	      : out std_logic_vector (63 downto 0);	
		  ready				: out std_logic
	 );
end entity TeaCore;

architecture behave of TeaCore is

   signal k0  		  		: unsigned(31 downto 0);
	signal k1    			: unsigned(31 downto 0);
	signal k2    			: unsigned(31 downto 0);
	signal k3    			: unsigned(31 downto 0);
		
	signal delta			: unsigned(31 downto 0);
	signal round			: std_logic_vector(1 downto 0);
	signal ctr				: unsigned(5 downto 0);
	
begin

	process (clk, reset) 
		variable mline : line;
		variable sum : unsigned(31 downto 0);
		variable do0 : unsigned(31 downto 0);
		variable do1 : unsigned(31 downto 0);
	begin
		if (reset = '0') then
			if (rising_edge(clk)) then
				if (round = "00") then
					k3 <= unsigned(key(31 downto 0));
					k2 <= unsigned(key(63 downto 32));
					k1 <= unsigned(key(95 downto 64));
					k0 <= unsigned(key(127 downto 96));	
					delta <= x"9e3779b9";
					do1 := unsigned(vi(31 downto 0));
					do0 := unsigned(vi(63 downto 32));
					round <= "01";
				elsif round = "01" then
				   if mode = '0' and ctr="000000" then
						sum := x"00000000";
					elsif (mode = '1' and ctr="000000") then
						sum := x"C6EF3720";
					end if;
						if ctr < "100000" then
							if (mode = '0') then
								sum := sum + delta;
								do0 := do0 + (((do1(27 downto 0) & "0000") + k0) xor (do1 + sum) xor (("00000" & do1(31 downto 5)) + k1));
								do1 := do1 + (((do0(27 downto 0) & "0000") + k2) xor (do0 + sum) xor (("00000" & do0(31 downto 5)) + k3));
							else		
								do1 := do1 - (((do0(27 downto 0) & "0000") + k2) xor (do0 + sum) xor (("00000" & do0(31 downto 5)) + k3));
								do0 := do0 - (((do1(27 downto 0) & "0000") + k0) xor (do1 + sum) xor (("00000" & do1(31 downto 5)) + k1));
								sum := sum - delta;
							end if;
							ctr <= ctr + 1;
						else
							round <= "10";
						end if;					
				elsif round = "10" then
					vo(31 downto 0) <= std_logic_vector(do0);
					vo(63 downto 32) <= std_logic_vector(do1);
					ready <= '1';				
				end if;
			end if;
		else
			ready <= '0';
			round <= "00";
			sum := x"00000000";
			do0 := x"00000000";
			do1 := x"00000000";
			ctr <= "000000";
		end if;
		
	end process;
	
end behave;
