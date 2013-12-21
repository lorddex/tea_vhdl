library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Tea is
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
end entity Tea;

architecture behave of Tea is

	component TeaCore is
		 port (
		     clk				: in std_logic;
			  mode			: in std_logic; 								-- 0 code 1 decode
			  key          : in std_logic_vector(127 downto 0);	-- key
		     vi      	   : in std_logic_vector (63 downto 0); 	-- input data
			  reset			: in std_logic;
		     vo      	   : out std_logic_vector (63 downto 0);	-- data output
		     ready 			: out std_logic 
		 );
	end component;
	
	component Arc4_Cypher is
		 port (
			  clk				   : in std_logic;
			  key             : in std_logic_vector(127 downto 0);	-- key
			  i_stream			: in std_logic_vector(31 downto 0);
			  o_stream			: out std_logic_vector(31 downto 0);
			  reset				: in std_logic;
			  out_ok				: out std_logic
		 );
	end component;
	
	signal s_mode_tea			: std_logic;
	signal s_reset_tea		: std_logic;
	signal s_ready_tea		: std_logic;
	signal s_vo_tea			: std_logic_vector(63 downto 0);
	
	signal s_reset_arc		: std_logic;
	signal s_vo_arc			: std_logic_vector(31 downto 0);
	signal s_ready_arc		: std_logic;
	signal s_vi_arc			: std_logic_vector(31 downto 0);
	
begin
	
	core1: TeaCore port map (
		clk 		=> clk,
		mode 		=> s_mode_tea,
		key 		=> key,
		vi 		=> vi,		
		vo 		=> s_vo_tea,
		reset 	=> s_reset_tea,
		ready		=> s_ready_tea
	);
	
	arc4_1: Arc4_Cypher port map (
		clk 		=> clk,
		key 		=> key,
	   i_stream	=> s_vi_arc,
		o_stream	=> s_vo_arc,
		reset 	=> s_reset_arc,
		out_ok 	=> s_ready_arc
	);
	
	process (vi) begin
		s_vi_arc <= vi(63 downto 32);
	end process;
	
--	process (s_vo_tea, s_vo_arc) begin
--	
--		if (mode(0) = '0') then
--			vo <= s_vo_tea;
--		elsif (mode(0) = '1') then
--			vo <= std_logic_vector(unsigned(s_vo_arc) & x"00000000");
--		end if;
--	
--	end process;
	
--	process (s_vo_arc) begin
--		if mode(1) = '1' then
--			vo <= std_logic_vector(unsigned(s_vo_arc) & x"00000000");
--		end if;
--	end process;
	
	process (s_vo_tea, s_vo_arc) 
	begin
		if mode(1) = '0' then
			vo <= s_vo_tea;
		elsif mode(1) = '1' then
			vo(63 downto 32) <= s_vo_arc;	
		end if;
	end process;
	
	process(s_ready_arc, s_ready_tea) begin
	
		if mode(1) = '0' then
			ready <= s_ready_tea;
		elsif mode(1) = '1' then
			ready <= s_ready_arc;
		end if;
	
	end process;
	
	process (reset) begin
	
		if (mode(1) = '0') then
			s_reset_arc <= '1';
			s_reset_tea <= reset;
		elsif (mode(1) = '1') then
			s_reset_tea <= '1';
			s_reset_arc <= reset;
		end if;
	
	end process;
	
	process (mode) 
		variable mline : line;
	begin
	
		if (mode(1) = '0') then -- TEA
			s_mode_tea <= mode(0);
		end if;
		
	end process;

end behave;
