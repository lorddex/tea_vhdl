library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_bit.all;

entity Tea is
    port (
        clk             : in std_logic;
        start           : in std_logic;
        vi      	      : in std_logic_vector (63 downto 0);
		  vo      	      : out std_logic_vector (63 downto 0);
		  key             : in std_logic_vector(127 downto 0);
		  mode            : out std_logic
	 );
end entity Tea;

architecture behave of Tea is

	component TeaCore is
		 port (
			  vi      	      : in std_logic_vector (63 downto 0);
			  vo      	      : out std_logic_vector (63 downto 0);
			  key             : in std_logic_vector(127 downto 0);
			  sum_i 				: in std_logic_vector(31 downto 0);
			  sum_o 				: out std_logic_vector(31 downto 0)
		 );
	end component;
	
	signal sum_i				: std_logic_vector(31 downto 0);
	signal sum_o				: std_logic_vector(31 downto 0);
	signal counter				: integer := 0;
	
begin
	
	core1: TeaCore port map (
		vi => vi,
		vo => vo,
		key => key,
		sum_i => sum_i,
		sum_o => sum_o
	);
	
	process (vi, key) begin
		mode <= '0';
		sum_i <= "00000000000000000000000000000000";
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
