------------
-- Component package
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package composants is

  component mux is
    port( A,B,C,D : in std_logic;
          SEL : in unsigned(1 downto 0);
          MUX : out std_logic );
  end component;

  component compteur is
  generic( N : natural );
  port( CLK, RST, LD : in std_logic;
        D : in unsigned(0 to N-1);
        G : out unsigned(0 to N-1) );
  end component;

  component rom is
    port( ADDR : in unsigned(2 downto 0);
          DATA : out unsigned(0 to 5) );
  end component;
  
end composants;