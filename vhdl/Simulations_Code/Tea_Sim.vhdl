library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
	component Tea is
		port (
		  clk             : in std_logic;
        enable          : in std_logic;
        vi              : in std_logic_vector (63 downto 0);
		  key             : in std_logic_vector(127 downto 0);
		  mode            : in std_logic_vector(1 downto 0);
		  reset				: in std_logic;
		  vo       	      : out std_logic_vector (63 downto 0);
		  ready				: out std_logic
		);
	end component;

	constant clk_period : time := 10 ns;
	 
   signal s_clk           : std_logic := '0';
   signal s_enable        : std_logic := '0';
	signal s_vi      	  	  : std_logic_vector (63 downto 0);
	signal s_vo      	     : std_logic_vector (63 downto 0);
	signal s_key      	  : std_logic_vector (127 downto 0);
   signal s_mode			  : std_logic_vector(1 downto 0);
	signal s_reset			  : std_logic;
	signal s_ready			  : std_logic;
		
	shared variable ENDSIM	: boolean:=false;	
	 
begin

    Tea_i : Tea
        port map(
            clk 	 => s_clk,
            enable => s_enable,
				mode 	 => s_mode,
				vi		 => s_vi,
				vo		 => s_vo,
				key	 => s_key,
				reset	 => s_reset,
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
	 
    stim_proc: process  
		variable mline : line;
	 begin
	 
		  s_mode <= "00"; -- second mode
		  s_reset <= '1';
        s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"0000008000000000";
		  
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		
		  wait for clk_period;
		  hwrite(mline, s_vo);
		  writeline(output, mline);
		
		  wait for 10*clk_period;
		  
		  s_reset <= '1';
		  wait for clk_period;
		  s_mode <= "01";
		  s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"984F4C63BB71CCCE";
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  wait for clk_period;
		  hwrite(mline, s_vo);
		  writeline(output, mline);
		  
		  wait for 10*clk_period;
		
		  s_mode <= "10";
		  s_reset <= '1';
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101";
		  s_vi <= x"075BCD1500000000"; -- to code
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  wait for clk_period;
		  hwrite(mline, s_vo);
		  writeline(output, mline);
		  
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
