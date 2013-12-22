library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity CryptBox is
    port (
	     clk					: in std_logic;
		  mode				: in std_logic_vector(1 downto 0); 								
		  key             : in std_logic_vector(127 downto 0);	
		  vi      	      : in std_logic_vector (63 downto 0); 	
		  reset				: in std_logic;								
		  vo      	      : out std_logic_vector (63 downto 0);	
		  ready				: out std_logic
	 );
end entity CryptBox;

architecture behave of CryptBox is
	
	component TeaCore is
    port (
	     clk					: in std_logic;
		  mode				: in std_logic; 		-- 0 code 1 decode
		  key             : in std_logic_vector(127 downto 0);	-- key
		  vi      	      : in std_logic_vector (63 downto 0); 	-- input data
		  reset				: in std_logic;								-- enable
		  vo      	      : out std_logic_vector (63 downto 0);	-- data output
		  ready				: out std_logic
	 );
	end component;
	
	component Arc4_Cypher is
    port (
		  clk					: in std_logic;
		  key             : in std_logic_vector(127 downto 0);	-- key
		  reset				: in std_logic;
		  i_stream			: in std_logic_vector(31 downto 0);
		  o_stream			: out std_logic_vector(31 downto 0);
		  out_ok				: out std_logic
	 );
	end component;
	
	signal s_tea_mode		: std_logic;
	signal s_tea_ready	: std_logic;
	signal s_tea_vo		: std_logic_vector(63 downto 0);
	signal s_tea_reset	: std_logic;
	
	signal s_arc_vi		: std_logic_vector(31 downto 0);
	signal s_arc_vo		: std_logic_vector(31 downto 0);
	signal s_arc_ready	: std_logic;
	signal s_arc_reset	: std_logic;
	
begin

	tea_1: TeaCore port map (
		clk 		=> clk,
		key 		=> key,
	   mode		=> s_tea_mode,
		vi			=> vi,
		reset		=> s_tea_reset,
		vo			=> s_tea_vo,
		ready		=> s_tea_ready
	);
	
	arc4_1: Arc4_Cypher port map (
		clk 		=> clk,
		key 		=> key,
	   reset		=> s_arc_reset,
		i_stream => s_arc_vi,
		o_stream => s_arc_vo,
		out_ok	=> s_arc_ready
	);

	process (vi, mode) begin
	
		if (mode(1) = '1') then
			s_arc_vi <= vi(63 downto 32);
		end if;
	
	end process;
	
	process (mode, reset) begin
	
		if (mode(1) = '0') then
			s_arc_reset <= '1';
			s_tea_reset <= reset;
			s_tea_mode <= mode(0);
		elsif mode(1) = '1' then
			s_tea_reset <= '1';
			s_arc_reset <= reset;
		end if;
	
	end process;
	
	process (clk, s_tea_ready, s_arc_ready) 
		variable mline : line;
	begin
		if rising_edge(clk) then
			if mode(1) = '0' and s_tea_ready = '1' then
				vo <= s_tea_vo;
				ready <= s_tea_ready;
			elsif mode(1) = '1' and s_arc_ready = '1' then
				vo(63 downto 32) <= s_arc_vo;
				vo(31 downto 0) <= x"00000000";
				ready <= s_arc_ready;
			else
				ready <= '0';
			end if;
		end if;
		
	end process;
	
end behave;
