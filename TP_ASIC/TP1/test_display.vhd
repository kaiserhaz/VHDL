------------
-- Double 7-segment display, testbench
------------

library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;

entity test is
end test;

------------
-- Testplan
------------

architecture bench of test is

  component display is
    port (en,no, cs: std_logic;
    D: std_logic_vector (3 downto 0);
    aff0, aff1: out std_logic_vector (6 downto 0));
  end component;

  signal en, no, cs: std_logic :='0';
  signal D: std_logic_vector( 3 downto 0);
  signal aff0, aff1:std_logic_vector (6 downto 0);

  for UUT: display use entity work.display(bhv_case);

begin 
  
  UUT: display port map (en, no, cs,D,aff0,aff1);
    
  clock: process
  begin
    wait for 10 ns;
    cs <=not cs;
  end process;

  en <= '1' after 5 ns;
  no <= '1' after 35 ns;
  D <="0000", "0001" after 25 ns, "1000" after 40 ns, "1111" after 55 ns;

end architecture;
