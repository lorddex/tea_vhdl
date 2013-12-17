library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Tea_Sim is
end Tea_Sim;

architecture behav of Tea_Sim is
	component TeaCore is
	 port (
		  mode				: in std_logic; 								-- 0 code 1 decode
		  key             : in std_logic_vector(127 downto 0);	-- key
		  vi      	      : in std_logic_vector (63 downto 0); 	-- input data
		  sum_i 				: in std_logic_vector(31 downto 0);		-- sum input
		  enable				: in std_logic;								-- enable
		  vo      	      : out std_logic_vector (63 downto 0);	-- data output
		  sum_o 				: out std_logic_vector(31 downto 0)		-- sum output
	 );
	end component;

	signal s_vi      	  	  : std_logic_vector (63 downto 0);
	signal s_vo      	     : std_logic_vector (63 downto 0);
	signal s_key      	  : std_logic_vector (127 downto 0);
   signal s_sum_i			  : std_logic_vector (31 downto 0);
	signal s_sum_o			  : std_logic_vector (31 downto 0);
	signal s_mode			  : std_logic;
	signal s_enable		  : std_logic;
	
begin

    Tea_i : TeaCore
        port map(
				vi		=> s_vi,
				vo		=> s_vo,
				key	=> s_key,
				sum_i => s_sum_i,
				sum_o => s_sum_o,
				mode => s_mode,
				enable => s_enable
        );
		  
    stim_proc: process begin
		  
		  s_enable <= '1';
		  
		  s_mode <= '0';
		  s_sum_i <= "00000000000000000000000000000000";
		  s_key <= std_logic_vector(to_unsigned(19860503, s_key'length));
		  s_vi <= std_logic_vector(to_unsigned(128, s_vi'length));
		
		  wait for 10 ns;
	 
		  s_mode <= '1';
		  s_sum_i <= "00000000000000000000000000000000";
		  s_key <= std_logic_vector(to_unsigned(19860503, s_key'length));
		  s_vi <= std_logic_vector(to_unsigned(128, s_vi'length));
	 
		  wait for 10 ns;
	 
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
