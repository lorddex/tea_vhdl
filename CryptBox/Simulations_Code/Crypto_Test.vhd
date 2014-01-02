-- Pietrofrancesco Apollonio
-- 00609919

-- Attività progettuale di Sistemi Digitali
-- CryptBox

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Crypt_Sim is
end Crypt_Sim;

architecture behav of Crypt_Sim is

	component CryptBox is
    port (
	     clk					: in std_logic;
		  mode				: in std_logic_vector(1 downto 0); 								
		  key             : in std_logic_vector(127 downto 0);	
		  vi      	      : in std_logic_vector (63 downto 0); 	
		  reset				: in std_logic;								
		  vo      	      : out std_logic_vector (63 downto 0);	
		  ready				: out std_logic
	 );
	 end component;

	constant clk_period : time := 10 ns;
	
	signal s_clk			  : std_logic:='0';
	signal s_key      	  : std_logic_vector (127 downto 0);
	signal s_vi				  : std_logic_vector(63 downto 0);
	signal s_vo				  : std_logic_vector(63 downto 0);	
	signal s_ready			  : std_logic;
	signal s_mode			  : std_logic_vector(1 downto 0);
	signal s_reset			  : std_logic;
	
	shared variable ENDSIM	: boolean:=false;	
	
begin

    Arc_i : CryptBox
        port map(
		      clk 		=> s_clk,
				key 	 	=> s_key,
				reset		=> s_reset,
				mode		=> s_mode,
				vi			=> s_vi,
				vo			=> s_vo,
				ready		=> s_ready
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
	 variable tmpin: std_logic_vector(127 downto 0);
	 begin
		    
		  -- ARC CODE
		  tmpin := x"075BCD153ADE68B10B7E775900000000";
		  write(mline, string'("Stream to encode: "));
		  hwrite(mline, std_logic_vector(tmpin(127 downto 96)));
		  write(mline, string'(" "));
		  hwrite(mline, std_logic_vector(tmpin(95 downto 64)));
		  write(mline, string'(" "));
		  hwrite(mline, std_logic_vector(tmpin(63 downto 32)));
		  write(mline, string'(" "));
		  hwrite(mline, std_logic_vector(tmpin(31 downto 0)));
		  writeline(output, mline);
		  
		  s_mode <= "10";	 -- SET ARC
		  s_reset <= '1';	 -- RESET ARC
		  wait for 2* clk_period;
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101"; --KEY
		  s_vi <= x"3ADE68B1075BCD15"; -- value 1
		  s_reset <= '0';
		 
		  wait for 2*clk_period; -- important to wait for s_ready to be set to 0
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("RC4 encoded values: "));
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));

		  wait for 10 * clk_period;
		 
		  s_vi <= x"000000000B7E7759"; -- value 2
		  wait for 2*clk_period; -- important to wait for s_ready to be set to 0
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
		  
		  wait for 10 * clk_period;
		  
		  -- ARC DECODE
		  
		  s_reset <= '1';
		  wait for 2* clk_period;
		  s_vi <= x"FEBB7D8F75F916F1"; -- value 1
		  s_reset <= '0';
		  wait for 2* clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("RC4 decoded values: "));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  wait for 10 * clk_period;
		 
		  s_vi <= x"61965B7AF2F4EC39"; -- value 2
		  wait for 2*clk_period; -- important to wait for s_ready to be set to 0
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
			
		  wait for 10 * clk_period;
		  
		  -- TEA ENCODE
		  
		  tmpin(63 downto 0) := x"0000008000000000";
		  write(mline, string'("Data to encode: "));
		  hwrite(mline, std_logic_vector(tmpin(63 downto 32)));
		  write(mline, string'(" "));
		  hwrite(mline, std_logic_vector(tmpin(31 downto 0)));
		  writeline(output, mline);
		  
		  s_mode <= "00"; -- SET TEA ENCODE
		  s_reset <= '1';
		  s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("Tea encoded values: "));
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
		  
		  wait for 10 * clk_period;
		  
		  -- TEA DECODE
		  
		  s_mode <= "01"; -- SET TEA DECODE
		  s_reset <= '1';
		  s_vi <= x"984F4C63BB71CCCE";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("Tea decoded values: "));
		  hwrite(mline, s_vo(31 downto 0));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
		  
		  wait for 10 * clk_period;
		  
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
