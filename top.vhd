-------------------------------------------------------------------------------
-- Project   : MAX10 Evaluation Kit (TSD温度読み出し)
-- File      : top.vhd
-- Title     : Top
--------------------------------------------------------------------------------
--+-----+-----------+-----------------------------------------------------------
-- Ver   Date        Description
--+-----+-----------+-----------------------------------------------------------
-- 00.00 2020/12/07  Created
--+-----+-----------+-----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
  PORT
  (
    clk_i       : in  std_logic;      -- 50MHz
    rst_ni      : in  std_logic       -- リセット(負論理)
  );
end top;

architecture rtl of top is

-- コンポーネント宣言
	component max10_adc is
		port (
			clk_clk       : in std_logic := 'X'; -- clk
			reset_reset_n : in std_logic := 'X'  -- reset_n
		);
	end component max10_adc;


begin

-- モジュール接続
	u_max10_adc : component max10_adc
		port map (
			clk_clk       => clk_i,       --   clk.clk
			reset_reset_n => rst_ni       -- reset.reset_n
		);


end rtl;
