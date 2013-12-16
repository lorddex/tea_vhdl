library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
--	component Arc4_Ksa is
--	 port (
--		  key             : in std_logic_vector(127 downto 0);
--		  status				: out std_logic_vector(2047 downto 0);
--		  ready				: out std_logic
--	 );
--	end component;
	component Arc4_Cypher is
	    port (
		  clk 			   : in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  i_stream			: in std_logic_vector(31 downto 0);
		  o_stream			: out std_logic_vector(31 downto 0)
	 );
	 end component;

	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_i_s			  : std_logic_vector(31 downto 0);
	signal s_o_s			  : std_logic_vector(31 downto 0);	
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Arc_i : Arc4_Cypher
        port map(
		      clk => s_clk,
				key 	 => s_key,
				i_stream	 => s_i_s,
				o_stream  => s_o_s
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
		    
		  s_key <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
		
		  wait for 10 ns;
		
		  s_i_s <= "11111111000000001111111100000000";
		
		  wait for 10 ns;
		  
		  hwrite(mline, s_o_s);
		  writeline(output, mline);
		
		  wait for 1000000 ns;
	 
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
