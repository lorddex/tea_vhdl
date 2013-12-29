library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all; 
use IEEE.std_logic_textio.all;

entity Arc4_Cypher is
    port (
		  clk					: in std_logic;
		  key             : in std_logic_vector(127 downto 0);	
		  reset				: in std_logic;
		  vi					: in std_logic_vector(63 downto 0);
		  vo					: out std_logic_vector(63 downto 0);
		  ready				: out std_logic
	 );
end entity Arc4_Cypher;

architecture behave of Arc4_Cypher is

	component Arc4_Ksa is
		port (  
			  clk					: in std_logic;
			  reset				: in std_logic;
			  key             : in std_logic_vector(127 downto 0);	
			  status				: out std_logic_vector(2047 downto 0);
			  ready				: out std_logic
		);
	end component;

	type status_array is array(255 downto 0) of unsigned(7 downto 0);
				
   signal s_status_a			: status_array;
	signal s_status 			: std_logic_vector(2047 downto 0);
	signal round				: std_logic_vector(3 downto 0) := "0000";	
	signal s_ready				: std_logic;
	signal old_in				: std_logic_vector(63 downto 0);
	signal old_x				: integer := 0;
	signal old_j				: integer := 0;
	signal s_votmp				: std_logic_vector(63 downto 0);

--	signal ctr2					: unsigned(2 downto 0);
--	signal j						: integer;
--	signal x						: integer;
--	signal t_int				: integer;
--	signal temp					: unsigned(7 downto 0);
--	signal t_s				   : unsigned(31 downto 0);
--	signal votmp 				: std_logic_vector(63 downto 0);
	
begin
	
	arc4_1: Arc4_Ksa port map (
		clk 		=> clk,
		key 		=> key,
	   status	=> s_status,
		ready 	=> s_ready,
		reset		=> reset
	);
	
	process (s_ready, clk, reset) 
		variable mline : line;
		variable j		: integer;
		variable x		: integer;
		variable t_int : integer;
		variable old_x_val : unsigned(7 downto 0);
		variable old_j_val	: unsigned(7 downto 0);
		variable tmp	: unsigned(7 downto 0);
		variable t_s   : unsigned(31 downto 0);
		variable votmp : std_logic_vector(63 downto 0);
		variable i		: integer;
		begin
			if reset = '0' then
				if (s_ready = '1') then
					if (rising_edge(clk)) then
						if round = "0000" then						
								for i in 1 to 256 loop
									s_status_a(i-1) <= unsigned(s_status((i*8 -1) downto ((i-1)*8)));
									--hwrite(mline, s_status((i*8 -1) downto ((i-1)*8)));
								end loop;
							--writeline(output, mline);
							round <= "0001";
						elsif round >= "0001" and round <= "1000" then
							if round = "0001" then
								old_in <= vi;
							elsif round /= "0001" and round /= "0101" then
								votmp := s_votmp;
							end if;
							x := old_x; 
							j := old_j; 
--							write(mline, string'("old_x="));
--							write(mline, x);
--							write(mline, string'(" old_j="));
--							write(mline, j);
							x := (x + 1) mod 256;
							j := (j + to_integer(s_status_a(x))) mod 256;
--							write(mline, string'(" switch_x="));
--							write(mline, x);
--							write(mline, string'(" with_j="));
--							write(mline, j);
							old_x_val := s_status_a(x);
							old_j_val := s_status_a(j);
--							write(mline, string'(" old_val_x="));
--							hwrite(mline, std_logic_vector(old_x_val));
--							write(mline, string'(" old_val_j="));
-- 							hwrite(mline, std_logic_vector(old_j_val));
							s_status_a(x) <= old_j_val;
							s_status_a(j) <= old_x_val;
							t_int := to_integer((old_x_val + old_j_val) mod 256);
--							write(mline, string'(" t_int="));
--							write(mline, t_int);
							i := to_integer((unsigned(round)-1) mod 4);
--							write(mline, string'(" i="));
--							write(mline, i);
							if (t_int = x) then
--							write(mline, string'(" tmp1="));
								tmp := old_j_val;
							elsif (t_int = j) then
--							write(mline, string'(" tmp2="));
								tmp := old_x_val;
							else
--							write(mline, string'(" tmp3="));
								tmp := s_status_a(t_int);
							end if;
--							hwrite(mline, std_logic_vector(tmp));
--							write(mline, string'(" old_t_s="));
--							hwrite(mline, std_logic_vector(t_s));
							if i = 0 then
								t_s := x"000000" & tmp;
							elsif i = 1 then
								t_s := (x"0000" & tmp & t_s(7 downto 0));
							elsif i = 2 then
								t_s := (x"00" & tmp & t_s(15 downto 0));
							elsif i = 3 then
								t_s := (tmp & t_s(23 downto 0));
							end if;
--							write(mline, string'(" new_t_s="));
--							hwrite(mline, std_logic_vector(t_s));
							
							writeline(output, mline);
							old_x <= x;
							old_j <= j;
							if round = "0100"  then
								votmp(31 downto 0) := std_logic_vector(unsigned(vi(31 downto 0)) xor t_s);
								s_votmp <= votmp;
							elsif round = "1000" then
								votmp(63 downto 32) := std_logic_vector(unsigned(vi(63 downto 32)) xor t_s);
								s_votmp <= votmp;
							end if;
							if round = "1000" then
								vo <= votmp;
								ready <= '1';
								round <= "1001";
							else
								round <= std_logic_vector(unsigned(round) + 1);
							end if;
						elsif round = "1001" then		
							if old_in /= vi then
								ready <= '0';
								s_votmp <= x"0000000000000000";
								round <= "0001";
							end if;
						end if;
					end if;
				end if;
		else
			ready <= '0';
			t_int := 0;
			t_s := x"00000000";
			tmp := x"00";
			old_x_val := x"00";
			old_j_val := x"00";
			old_x <= 0;
			old_j <= 0;
			x:=0;
			j:=0;
			round <= "0000";
		end if;
	end process;
	
end behave;
