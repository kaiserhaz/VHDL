------------
-- Multiplier-accumulator (unused in design)
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity m_acc is
 port ( A   : in signed(7 downto 0);
        B   : in signed(7 downto 0);
        CLK : in std_logic;
        EN  : in std_logic;
        RST : in std_logic;
	ACC : out signed(15 downto 0)
       );
end entity;

------------
-- RTL architecture
------------

architecture rtl of m_acc is

  -- Intermediate registers
  signal mult_reg : signed (15 downto 0);
  signal curr_res : signed (15 downto 0);

begin

  acc_p: process (CLK, RST)                    -- Accumulate process
    variable prev_res : signed (15 downto 0);
  begin
    if (RST = '0') then
      curr_res := (others => '0');
      prev_res := (others => '0');
    elsif (rising_edge(CLK)) then
      curr_res <= prev_res + mult_reg;
      prev_res := curr_res;
    end if;
  end process;

  -- Continuous multiply
  mult_reg <= a_reg * b_reg;

  -- Output accumulation result
  ACC <= curr_res;
	
end rtl;
