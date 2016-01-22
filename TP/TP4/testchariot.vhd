------------
-- Sequencer testbench
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.composants.all;

entity test is
end entity test;

------------
-- Testplan 1
------------

architecture bench of test is
  
  component sequenceur is
  generic( I : natural );
  port( M, B, A, GND, RST : std_logic;
        D : unsigned(0 to I-1);
        MARCHE, SENS : out std_logic );
  end component;
  
  signal m, b, a, gnd, rst, marche, sens : std_logic := '0';
  signal d : unsigned(0 to 2);
  
  for UUT : sequenceur use entity work.sequenceur(hierarchique);
  
  begin
  
    UUT : sequenceur generic map(I => 3) port map(m, b, a, gnd, rst, d, marche, sens);
      
    rst <= '1', '0' after 10 ns,
           '1' after 200 ns, '0' after 205 ns,
           '1' after 450 ns, '0' after 700 ns;
    m <= '1' after 15 ns, '0' after 16 ns,
         '1' after 215 ns, '0' after 216 ns,
         '1' after 415 ns, '0' after 416 ns;
    b <= '1' after 66 ns, '0' after 68 ns,
         '1' after 266 ns, '0' after 268 ns,
         '1' after 466 ns, '0' after 468 ns;
    a <= '1' after 118 ns, '0' after 119 ns,
         '1' after 318 ns, '0' after 319 ns,
         '1' after 518 ns, '0' after 519 ns;
    d <= "010", "001" after 200 ns;
    gnd <= '1' after 15 ns, '0' after 16 ns,
           '1' after 215 ns, '0' after 216 ns,
           '1' after 415 ns, '0' after 416 ns;
    
end architecture bench;

------------
-- Testplan
------------

architecture bench2 of test is
  
  component sequenceur is
  generic( I : natural );
  port( M, B, A, GND, RST : std_logic;
        D : unsigned(0 to I-1);
        MARCHE, SENS : out std_logic );
  end component;
  
  signal m, b, a, gnd, rst, marche, sens : std_logic := '0';
  signal d : unsigned(0 to 2);
  
  for UUT : sequenceur use entity work.sequenceur(hierarchique2);
  
  begin
  
    UUT : sequenceur generic map(I => 3) port map(m, b, a, gnd, rst, d, marche, sens);
      
    rst <= '1', '0' after 10 ns,
           '1' after 200 ns, '0' after 205 ns,
           '1' after 450 ns, '0' after 700 ns;
    m <= '1' after 15 ns, '0' after 16 ns,
         '1' after 215 ns, '0' after 216 ns,
         '1' after 415 ns, '0' after 416 ns;
    b <= '1' after 66 ns, '0' after 68 ns,
         '1' after 266 ns, '0' after 268 ns,
         '1' after 466 ns, '0' after 468 ns;
    a <= '1' after 118 ns, '0' after 119 ns,
         '1' after 318 ns, '0' after 319 ns,
         '1' after 518 ns, '0' after 519 ns;
    d <= "000", "001" after 200 ns;
    gnd <= '1' after 14 ns, '0' after 15 ns,
           '1' after 215 ns, '0' after 216 ns,
           '1' after 415 ns, '0' after 416 ns;
    
end architecture bench2;