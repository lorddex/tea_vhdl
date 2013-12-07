library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
	component Tea is
		port (
        clk             : in std_logic;
        start           : in std_logic;
        vi      	      : in std_logic_vector (63 downto 0);
		  vo      	      : out std_logic_vector (63 downto 0);
		  key             : in std_logic_vector(127 downto 0);
		  mode            : out std_logic
		);
	end component;

	constant clk_period : time := 10 ns;
	 
   signal s_clk           : std_logic := '0';
   signal s_start         : std_logic := '0';
	signal s_vi      	  	  : std_logic_vector (63 downto 0);
	signal s_vo      	     : std_logic_vector (63 downto 0);
	signal s_key      	  : std_logic_vector (127 downto 0);
   signal s_mode			  : std_logic;
		
	shared variable ENDSIM	: boolean:=false;	
	 
begin

    Tea_i : Tea
        port map(
            clk 	=> s_clk,
            start => s_start,
				mode 	=> s_mode,
				vi		=> s_vi,
				vo		=> s_vo,
				key	=> s_key
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
		  
		  s_key <= std_logic_vector(to_unsigned(19860503, s_key'length));
		  s_vi <= std_logic_vector(to_unsigned(128, s_vi'length));
	 
		  wait for 30 ns;
	 
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;
	 
--    process is begin
--        start <= '0';
--        wait until rising_edge(clk);
--        start <= '1';
--        wait;
--    end process;
--
--    din <= x"11112222_12345678";
--    key <=  (others => '0');
--
--    process begin
--        wait for 100 ns;
--        assert false report "end of test" severity note;
--        wait;
--    end process;

end behav;
