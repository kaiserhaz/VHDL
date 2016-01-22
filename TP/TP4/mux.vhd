------------
-- Multiplexer
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
  port( A   : in std_logic;
        B   : in std_logic;
        C   : in std_logic;
        D   : in std_logic;
        SEL : in unsigned(1 downto 0);
        MUX : out std_logic );
end entity mux;

------------
-- Mux architecture
------------

architecture dataflow of mux is
  signal V : std_logic;                        -- Temporary variable
begin

  with SEL select
       V <= A when "00",
            B when "01",
            C when "10",
            D when "11",
            '-' when others;
  MUX <= V;
    
end architecture dataflow;
