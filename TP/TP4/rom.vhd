------------
-- ROM
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
  port( ADDR : in unsigned(2 downto 0);
        DATA : out unsigned(0 to 5) );
end entity rom;

------------
-- ROM architecture
------------

architecture dataflow of rom is
begin

  with ADDR select                             -- Output fixed data according to address
       DATA <= "00000-" when "000",
               "000111" when "001",
               "001010" when "010",
               "1---0-" when "011",
               "------" when others;

end architecture dataflow;
