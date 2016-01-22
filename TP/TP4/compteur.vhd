------------
-- Counter
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur is
  generic( N : natural );
  port( CLK : in std_logic;
        RST : in std_logic;
        LD  : in std_logic;
        D   : in unsigned(0 to N-1);
        G   : out unsigned(0 to N-1) );
end entity compteur;

------------
-- Counter architecture
------------

architecture algorithmic of compteur is
begin

  process(CLK)                                 -- Synchronous reset
    variable V : unsigned(0 to N-1);
  begin

    if RST = '1' then
      V := (others => '0');
    elsif LD = '1' then
      V := D;
    elsif rising_edge(CLK) then
      V := V + 1;
    end if;
        
    G <= V;
        
  end process;

end architecture algorithmic;

architecture algorithmic2 of compteur is
begin

  process(CLK, RST)                            -- Asynchronous reset
    variable V : unsigned(0 to N-1);
  begin

    if RST = '1' then
      V := (others => '0');
    elsif LD = '1' then
      V := D;
    elsif rising_edge(CLK) then
      V := V + 1;
    end if;
        
    G <= V;
        
  end process;

end architecture algorithmic2;
