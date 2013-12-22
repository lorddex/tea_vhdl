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
	 begin
		    
		  -- GENERAL	 
		  s_mode <= "10";	 
		  s_reset <= '1';	  
		  s_key <= "11110000001111111100000011111001111010101010000000000000000000000010101010101010101010101010000000000000010101010101010101010101";
		  s_vi <= x"075BCD1500000000"; -- to code
		  wait for clk_period;
	
		  s_reset <= '0';
		 	
		  -- ENCODING 	
		 
		  wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("enc stream: "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  wait for 10 * clk_period;
		 
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"3ADE68B100000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"0B7E775900000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"36BBBE6D00000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
		  
		  
		  
		  s_reset <= '1';
		  s_vi <= x"75F916F100000000"; -- to code
		  wait for clk_period;
	
		  s_reset <= '0';
		 	
		  -- ENCODING 	
		 
		  wait for clk_period;
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("dec stream: "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  wait for 10 * clk_period;
		 
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"FEBB7D8F00000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"F2F4EC3900000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  
		  -- s_mode <= "00";
		  s_reset <= '1';
		  s_vi <= x"572DE51700000000"; -- to code
		  --s_key <= x"00000080000000B6000000DA00000001";
		  --s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(63 downto 32));
		  writeline(output, mline);
		  
		  
		  
		  
		  
		  -- TEA
		  
		  s_mode <= "00";
		  s_reset <= '1';
		  s_key <= x"00000080000000B6000000DA00000001";
		  s_vi <= x"0000008000000000";
		  wait for clk_period;
		  s_reset <= '0';
		  
		  while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("tea encoded: "));
		  hwrite(mline, s_vo(63 downto 32));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(31 downto 0));
		  writeline(output, mline);
		  
		  s_mode <= "01";
		  s_reset <= '1';
		  s_vi <= x"984F4C63BB71CCCE";
		  wait for clk_period;
		  s_reset <= '0';
		  
		   while s_ready = '0' loop
			wait for clk_period;
		  end loop;
		  
		  write(mline, string'("tea decoded: "));
		  hwrite(mline, s_vo(63 downto 32));
		  write(mline, string'(" "));
		  hwrite(mline, s_vo(31 downto 0));
		  writeline(output, mline);
		  
		  --s_vi <= x"0B7E775900000000"; -- to code
		  --s_vi <= x"36BBBE6D00000000"; -- to code
		  
--		  s_i_s <= x"3ADE68B1"; -- to code
--		  
--		  wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--
--		  wait for 10 us;
--		  
--		  s_i_s <= x"0B7E7759"; -- to code
--		   wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--		  
--		  wait for 10 us;
--		  
--		  s_i_s <= x"36BBBE6D"; -- to code
--		   wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--		 
--		  wait for 10 us;
--
--		  -- RESET		  
--		  s_reset <= '1';	 	 
--   	  wait for clk_period;
--		  s_reset <= '0';
--		  
--		  -- DECODING
--		  
--		  s_i_s <= x"75F916F1"; -- to code
--
--		  wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--		  
--		  wait for 10 us;
--		  
--		  s_i_s <= x"FEBB7D8F"; -- to code
--		  
--		  wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--
--		  wait for 10 us;
--		  
--		  s_i_s <= x"F2F4EC39"; -- to code
--		   wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--		  
--		  wait for 10 us;
--		  
--		  s_i_s <= x"572DE517"; -- to code
--		   wait for clk_period;
--		  
--		  while s_out_ok = '0' loop
--			wait for clk_period;
--		  end loop;
--		  
--		  hwrite(mline, s_o_s);
--		  writeline(output, mline);
--		 
--		  wait for 10 us;
		  
		  ENDSIM:=true;
        assert false report "end of test" severity note;
        wait;
		  
    end process;

end behav;
