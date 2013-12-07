library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_bit.all;
use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity TeaCore is
    port (
		  mode				: in std_logic; 								-- 0 code 1 decode
		  key             : in std_logic_vector(127 downto 0);	-- key
		  vi      	      : in std_logic_vector (63 downto 0); 	-- input data
		  sum_i 				: in std_logic_vector(31 downto 0);		-- sum input
		  vo      	      : out std_logic_vector (63 downto 0);	-- data output
		  sum_o 				: out std_logic_vector(31 downto 0)		-- sum output
	 );
end entity TeaCore;

architecture behave of TeaCore is

   signal k0  		  		: unsigned(31 downto 0);
	signal k1    			: unsigned(31 downto 0);
	signal k2    			: unsigned(31 downto 0);
	signal k3    			: unsigned(31 downto 0);
	
	signal di0				: unsigned(31 downto 0);
	signal di1				: unsigned(31 downto 0);
	
	signal do0				: unsigned(31 downto 0);
	signal do1				: unsigned(31 downto 0);
	
	signal delta			: unsigned(31 downto 0);
	signal sum				: unsigned(31 downto 0);
	
begin

 

	process (k0, k1, k2, k3, di0, di1, do0, do1, vi, sum, delta, sum_i, key, mode) 
		variable mline : line;
	begin
	
		k0 <= unsigned(key(31 downto 0));
		k1 <= unsigned(key(63 downto 32));
		k2 <= unsigned(key(95 downto 64));
		k3 <= unsigned(key(127 downto 96));	
		
		delta <= "10011110001101110111100110111001";
		
		di0 <= unsigned(vi(31 downto 0));
		di1 <= unsigned(vi(63 downto 32));
		
		if (mode = '0') then
	
			--	 c encoder code
			--	 sum += delta;
			--  v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
			--  v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3); 
	
			sum <= unsigned(sum_i) + delta;

			do0 <= di0 + (((di1(27 downto 0) & "0000") + k0) xor (di1 + sum) xor (("00000" & di1(31 downto 5)) + k1));
			do1 <= di1 + (((do0(27 downto 0) & "0000") + k2) xor (do0 + sum) xor (("00000" & do0(31 downto 5)) + k3)); 

		else
		
			-- c decoder code
			-- v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
			-- v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
			-- sum -= delta;   
				
			sum <= "11000110111011110011011100100000" - delta;
			
			do1 <= di1 - (((di0(27 downto 0) & "0000") + k2) xor (di0 + sum) xor (("00000" & di0(31 downto 5)) + k3));
			do0 <= di0 - (((do1(27 downto 0) & "0000") + k0) xor (do1 + sum) xor (("00000" & do1(31 downto 5)) + k1));
			
		end if;
		
		vo(31 downto 0) <= std_logic_vector(do0);
		vo(63 downto 32) <= std_logic_vector(do1);
		sum_o <= std_logic_vector(sum);
		
		-- debug code
--		write(mline, string'(" k0="));
--		hwrite(mline, std_logic_vector(k0));
--		write(mline, string'(" k1="));
--		hwrite(mline, std_logic_vector(k1));
--		write(mline, string'(" k2="));
--		hwrite(mline, std_logic_vector(k2));
--		write(mline, string'(" k3="));
--		hwrite(mline, std_logic_vector(k3));
--		write(mline, string'("delta="));
--		hwrite(mline, std_logic_vector(delta));
--		write(mline, string'(" sum="));
--		hwrite(mline, std_logic_vector(sum));
--		write(mline, string'(" v0="));
--		hwrite(mline, std_logic_vector(do0));
--		write(mline, string'(" v1="));
--		hwrite(mline, std_logic_vector(do1));
--		writeline(output, mline);
		
	end process;
	
end behave;
