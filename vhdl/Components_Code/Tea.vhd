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
		  mode            : in std_logic;
		  vo       	      : out std_logic_vector (63 downto 0)
	 );
end entity Tea;

architecture behave of Tea is

	component TeaCore is
		 port (
			  mode			: in std_logic; 								-- 0 code 1 decode
			  key          : in std_logic_vector(127 downto 0);	-- key
		     vi      	   : in std_logic_vector (63 downto 0); 	-- input data
		     sum_i 			: in std_logic_vector(31 downto 0);		-- sum input
			  enable			: in std_logic;
		     vo      	   : out std_logic_vector (63 downto 0);	-- data output
		     sum_o 			: out std_logic_vector(31 downto 0) 	-- sum output
		 );
	end component;
	
	component Arc4_Cypher is
		 port (
			  clk				   : in std_logic;
			  key             : in std_logic_vector(127 downto 0);	-- key
			  i_stream			: in std_logic_vector(31 downto 0);
			  o_stream			: out std_logic_vector(31 downto 0)
		 );
	end component;
	
	signal round				: unsigned(5 downto 0) := "000000";
	
	signal s_sum_i				: std_logic_vector(31 downto 0);
	signal s_sum_o				: std_logic_vector(31 downto 0);
	signal s_vi					: std_logic_vector(63 downto 0);
	signal s_mode				: std_logic;
	signal s_key				: std_logic_vector(127 downto 0);
	signal s_vo					: std_logic_vector(63 downto 0);
	
	signal s_enable			: std_logic;
	
	
	signal s_arc4_key			:std_logic_vector(127 downto 0);
	signal s_arc4_i 			:std_logic_vector(31 downto 0);
	signal s_arc4_o 			:std_logic_vector(31 downto 0);
	
begin
	
	core1: TeaCore port map (
		mode => mode,
		key => key,
		vi => s_vi,
		sum_i => s_sum_i,
		vo => s_vo,
		sum_o => s_sum_o,
		enable => s_enable
	);
	
	arc4_1: Arc4_Cypher port map (
		clk => clk,
		key 		=> s_arc4_key,
	   i_stream	=> s_arc4_i,
		o_stream	=> s_arc4_o
	);
	
	process (clk, vi, s_vo, s_sum_o) 
		variable mline : line;
	begin
	
		if(rising_edge(clk)) then
			
			if (enable = '1') then
			
				s_enable <= '1';
				
				if (round = "000000") then
						s_sum_i <= "00000000000000000000000000000000";
						s_vi <= vi;
				elsif (round = "100000") then
						s_enable <= '0';
						vo <= s_vo;
				else 		
						s_vi <= s_vo;
						s_sum_i <= s_sum_o;
				end if;
				
				round <= round + 1;
				
				write(mline, string'(" vo="));
				hwrite(mline, std_logic_vector(s_vo));
				writeline(output, mline);
			
			else
				s_enable <= '0';
			end if;
		
		end if;
		
	end process;
	
--   process (clk) begin
	
--		if (rising_edge(clk)) then
--			counter <= counter +1;
--		end if;
			
--		sum <= unsigned(vi1);
		
--		vo0 <= std_logic_vector(tmp_vector);
		
		--vo0 <=  std_logic_vector(to_unsigned(sum, sum'length));
		
--	   vo0 <= ((vi1 sla 4) + k0) xor (vi1 + sum) xor ((vi1 sra 5) + k1);
--    vo1 <= ((vi0 sla 4) + k2) xor (vi0 + sum) xor ((vi0 sra 5) + k3);  
	
--		vo0 <= BIT_VECTOR(TO_INTEGER(UNSIGNED(vi1 sll 4)) + TO_INTEGER(k0));
--		vo1 <= BIT_VECTOR(TO_INTEGER(UNSIGNED(vi0 sll 4)) + TO_INTEGER(k2));

	 
--        if rising_edge(clk) then
--            if start = '0' then
--						mode <= '1';
--				else
--						mode <= '0';
--                l <= unsigned(din(31 downto 0));
--                r <= unsigned(din(63 downto 32));
--                mode_reg <= mode;
--                run <= '1';
--
--                if mode = '0' then
--                    round <= "000000";
--                else
--                    round <= max_round;
--                end if;
--            else
--                if run = '1' then
--                    if mode_reg = '0' then
--                        r <= l + f_r;
--                        l <= r;
--                    else
--                        l <= r - f_l;
--                        r <= l;
--                    end if;
--                else
--                    dout(31 downto 0) <= std_logic_vector(l);
--                    dout(63 downto 32) <= std_logic_vector(r);
--                end if;
--
--                if mode_reg = '0' then
--                    if round = max_round then
--                        run <= '0';
--                    else
--                        round <= round + 1;
--                    end if;
--                else
--                    if round = "000000" then
--                        run <= '0';
--                    else
--                        round <= round - 1;
--                    end if;
--                end if;
--            end if;
--        end if;
--    end process;

end behave;
