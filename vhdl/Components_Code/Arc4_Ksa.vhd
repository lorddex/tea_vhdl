library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Ksa is
    port (
		  clk				   : in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  reset				: in std_logic;
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
	signal cntr					: integer:=0;
	
begin
	
	process (clk, reset) 
		variable mline : line;
		variable j		: integer := 0;
		variable temp	: unsigned(31 downto 0);
	begin
		if (reset = '0') then
			if (rising_edge(clk)) then
				if moment = "000" then
					ready <= '0';
					s_key(0) <= unsigned(key(31 downto 0));
					s_key(1) <= unsigned(key(63 downto 32));
					s_key(2) <= unsigned(key(95 downto 64));
					s_key(3) <= unsigned(key(127 downto 96));
					--   for (i=0; i < 64; ++i)
					--      state[i] = i;
					for i in 0 to 63 loop
						s_status(i) <= to_unsigned(i, 32);
					end loop;
					moment <= "010";
				elsif moment = "010" then
	--				if (cntr = 0) then
	--					write(mline, string'("KEY(i): "));
	--					for i in 0 to 3 loop
	--						hwrite(mline, std_logic_vector(s_key(i)));
	--						write(mline, string'(" "));
	--					end loop;
	--					writeline(output, mline);
	--				
	--					write(mline, string'("STATUS(i): "));
	--					
	--					for i in 0 to 63 loop
	--						hwrite(mline, std_logic_vector(s_status(i)));
	--						write(mline, string'(" "));
	--					end loop;
	--					writeline(output, mline);
	--				end if;
					
					--   for (i=0; i < 64; ++i) {
					--      j = (j + state[i] + key[i % KEY]) % 64;
					--      t = state[i];
					--      state[i] = state[j];
					--      state[j] = t;
					--   }
					
					if (cntr < 64) then
	--				for i in 0 to 63 loop
	--					write(mline, string'("switch i(value)="));
	--					write(mline, cntr);
	--					write(mline, string'("("));
	--					hwrite(mline, std_logic_vector(s_status(cntr)));
						temp := (to_unsigned(j, 32) + s_status(cntr) + s_key(cntr mod 4)) mod 64;
						j := to_integer(temp);
	--					write(mline, string'(") key(i)="));
	--					hwrite(mline, std_logic_vector(s_key(cntr mod 4)));
	--					write(mline, string'("("));
	--					write(mline, cntr mod 4);
	--					write(mline, string'(") with j(value)="));
	--					write(mline, j);
	--					write(mline, string'("("));
	--					hwrite(mline, std_logic_vector(s_status(j)));
	--					write(mline, string'(")"));
	--					writeline(output, mline);
						temp := s_status(cntr);
						s_status(cntr) <= s_status(j);
						s_status(j) <= temp;
	--				end loop;
						if (cntr=63) then
							moment <= "011";
						else
							cntr <= cntr + 1;
						end if;
					end if;
				elsif moment = "011" then
					write(mline, string'("STATUS(i+1): "));
					for i in 0 to 63 loop
						hwrite(mline, std_logic_vector(s_status(i)));
						write(mline, string'(" "));
					end loop;
					writeline(output, mline);
					for i in 1 to 64 loop
						status((i*32 -1) downto ((i-1)*32)) <= std_logic_vector(s_status(i-1));	
					end loop;
					moment <= "100";
					ready <= '1';
				end if;
			end if;
		else
			cntr <= 0;
			j := 0;
			temp := x"00000000";
			moment <= "000";
		end if;
	end process;
	
end behave;
