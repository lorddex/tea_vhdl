library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
	component TeaCore is
	 port (
		  clk					: in std_logic;
		  mode				: in std_logic; 								-- 0 code 1 decode
		  key             : in std_logic_vector(127 downto 0);	-- key
		  vi      	      : in std_logic_vector (63 downto 0); 	-- input data
		  reset				: in std_logic;								-- enable
		  vo      	      : out std_logic_vector (63 downto 0);	-- data output
		  ready 				: out std_logic
	 );
	end component;
	
	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_vi      	  	  : std_logic_vector (63 downto 0);
	signal s_vo      	     : std_logic_vector (63 downto 0);
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_mode			  : std_logic;
	signal s_reset 		  : std_logic;
	signal s_ready			  : std_logic;
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Tea_i : TeaCore
        port map(
				clk    => s_clk,
				vi		 => s_vi,
				vo		 => s_vo,
				key	 => s_key,
				mode   => s_mode,
				reset => s_reset,
				ready  => s_ready
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
		  
    stim_proc: process begin
		  
		  s_reset <= '1';
		  wait for clk_period; 
		  s_mode <= '0';
		  s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"0000008000000000";
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  wait for 10*clk_period;
		  
		  s_reset <= '1';
		  wait for clk_period;
		  s_mode <= '1';
		  s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"984F4C63BB71CCCE";
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  wait for 10*clk_period;
			
        ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
