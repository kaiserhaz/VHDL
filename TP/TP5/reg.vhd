------------
-- Register
------------

library ieee;
use ieee.std_logic_1164.all;

entity reg is
  generic(N : natural);
  port( LD  : in std_logic;
        RST : in std_logic;
        H   : in std_logic;
        A   : in std_logic_vector(N-1 downto 0);
        B   : out std_logic_vector(N-1 downto 0) := (others => '0') );
end entity reg;

------------
-- Reg architecture
------------

architecture behaviour of reg is
begin

  P1 : process(H)
    variable RES : std_logic_vector(N-1 downto 0); -- Temporary variable
  begin

    if (RST = '1') then
      RES := (others => '0');
    elsif (H'event and H = '1') then
      if (LD = '1') then
        RES := A;
      end if;
    end if;
        
    B <= RES;
        
  end process;
    
end architecture behaviour;
