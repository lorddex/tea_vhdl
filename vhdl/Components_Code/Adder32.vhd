library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder32 is

    port (
        A, B            : in BIT_VECTOR (31 downto 0);
		  Ci					: in BIT;
		  
		  SUM					: out BIT_VECTOR (31 downto 0);
        Co					: out BIT
	 );
	
end entity Adder32;

architecture behave of Adder32 is
signal CAR 					: BIT_VECTOR (32 downto 0);
begin
	 
    process (A,B,CAR) begin
	 CAR(0) <= Ci;
			for i in 0 to 31 loop
				SUM(i) <= A(i) xor B(i) xor CAR(i);
				CAR(i+1) <= (A(i) and B(i)) or ( CAR(i) and (A(i) xor B(i)));
			end loop;
	 Co <= CAR(32);
    end process;
	 
end behave;
