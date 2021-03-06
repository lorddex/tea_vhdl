library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity ARC4_Sim is
end ARC4_Sim;

architecture behav of ARC4_Sim is

	component Arc4_Cypher is
	    port (
		  clk 			   : in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  reset				: in std_logic;
		  i_stream			: in std_logic_vector(31 downto 0);
		  o_stream			: out std_logic_vector(31 downto 0);
		  out_ok				: out std_logic
	 );
	 end component;

	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_i_s			  : std_logic_vector(31 downto 0);
	signal s_o_s			  : std_logic_vector(31 downto 0);	
	signal s_out_ok		  : std_logic;
	signal s_reset			  : std_logic;
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Arc_i : Arc4_Cypher
        port map(
		      clk => s_clk,
				key 	 => s_key,
				i_stream	 => s_i_s,
				o_stream  => s_o_s,
				out_ok	 => s_out_ok,
				reset		 => s_reset
        );
		  
	 clock_proc: process 
 	 begin
		if ENDSIM=false then
			wait for clk_period/2;
			s_clk<=NOT s_clk;
		else
			wait;
		end if;
	 end process;	  
		  
    stim_proc: process 
	 variable mline: line;
	 begin
		    
		  -- GENERAL	 
			 
		  s_reset <= '1';	  
		  wait for clk_period;
		  s_reset <= '0';
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101";
			
		  -- ENCODING 	
			
		  s_i_s <= x"075BCD15"; -- to code

		  wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10 us;
		  
		  s_i_s <= x"3ADE68B1"; -- to code
		  
		  wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);

		  wait for 10 us;
		  
		  s_i_s <= x"0B7E7759"; -- to code
		   wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10 us;
		  
		  s_i_s <= x"36BBBE6D"; -- to code
		   wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		 
		  wait for 10 us;

		  -- RESET		  
		  s_reset <= '1';	 	 
   	  wait for clk_period;
		  s_reset <= '0';
		  
		  -- DECODING
		  
		  s_i_s <= x"75F916F1"; -- to code

		  wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10 us;
		  
		  s_i_s <= x"FEBB7D8F"; -- to code
		  
		  wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);

		  wait for 10 us;
		  
		  s_i_s <= x"F2F4EC39"; -- to code
		   wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10 us;
		  
		  s_i_s <= x"572DE517"; -- to code
		   wait for clk_period;
		  
		  while s_out_ok = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		 
		  wait for 10 us;
		  
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
