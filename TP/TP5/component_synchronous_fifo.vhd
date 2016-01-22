------------
-- Sync FIFO package
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package component_synchronous_fifo is

  component reg is
    generic(N : natural);
    port( LD, RST, H : in std_logic;
          A : in std_logic_vector(N-1 downto 0);
          B : out std_logic_vector(N-1 downto 0) := (others => '0') );
  end component;
  
  component counter is
    generic( N : natural );
    port( RST, UD, EN, H : in std_logic;
          Qdeep : out std_logic;
          QN : out unsigned(N-1 downto 0) );
  end component;
  
end component_synchronous_fifo;
