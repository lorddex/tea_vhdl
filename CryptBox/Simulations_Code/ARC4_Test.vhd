-- Pietrofrancesco Apollonio
-- 00609919

-- Attività progettuale di Sistemi Digitali
-- CryptBox

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
		  key             : in std_logic_vector(127 downto 0);
		  reset				: in std_logic;
		  vi			: in std_logic_vector(63 downto 0);
		  vo			: out std_logic_vector(63 downto 0);
		  ready				: out std_logic
	 );
	 end component;

	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_i_s			  : std_logic_vector(63 downto 0);
	signal s_o_s			  : std_logic_vector(63 downto 0);	
	signal s_ready		  : std_logic;
	signal s_reset			  : std_logic;
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Arc_i : Arc4_Cypher
        port map(
		      clk => s_clk,
				key 	 => s_key,
				vi	 => s_i_s,
				vo  => s_o_s,
				ready	 => s_ready,
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
			
		  s_i_s <= x"3ADE68B1075BCD15"; 

		  wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10*clk_period;
		  
		  s_i_s <= x"000000000B7E7759"; 
		   wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10*clk_period;

		  -- RESET		  
		  s_reset <= '1';	 	 
   	  wait for clk_period;
		  s_reset <= '0';
		  
		  -- DECODING
		  
		  s_i_s <= x"FEBB7D8F75F916F1"; 

		  wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10*clk_period;
		  
		  s_i_s <= x"61965B7AF2F4EC39";
		   wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		  
		  wait for 10*clk_period;
		  
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
