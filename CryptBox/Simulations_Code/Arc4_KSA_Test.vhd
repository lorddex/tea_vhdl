library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
	component Arc4_Ksa is
	 port (
		  clk					: in std_logic;
		  key             : in std_logic_vector(127 downto 0);
		  reset				: in std_logic;
		  status				: out std_logic_vector(2047 downto 0);
		  ready				: out std_logic
	 );
	end component;

	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_reset			  : std_logic;
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_status		  : std_logic_vector(2047 downto 0);
	signal s_ready			  : std_logic;
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Arc_i : Arc4_Ksa
        port map(
		      clk 	 => s_clk,
				key 	 => s_key,
				status => s_status,
				ready  => s_ready,
				reset => s_reset
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
		
		  s_reset <= '1';
		  wait for clk_period;
		  
		  s_reset <= '0';
			
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101";
		
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		
		  s_reset <= '0';
		  wait for clk_period;
		  
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101";
	 
	     while s_ready = '0' loop
			wait for clk_period;
		  end loop;
	 
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
