------------
-- 7-segment displayer testbench
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
end entity test;

------------
-- Testplan
------------

architecture bench of test is
  component affichage is
    port ( RST, WR, H : in std_logic;
         DATA : in unsigned(13 downto 0);
         AFF3, AFF2, AFF1, AFF0 : out unsigned(6 downto 0));
  end component;

  for UUT:affichage use entity work.affichage(rtl_affichage);
  
  signal rst, wr, h : std_logic := '0';
  signal data : unsigned(13 downto 0);
  signal aff0, aff1, aff2, aff3 : unsigned(6 downto 0);
  
  begin
  
    UUT:affichage port map (rst, wr, h, data, aff0, aff1, aff2, aff3);
      
      rst <= '1', '0' after 3 ns;      
      data <= "00010010001100" after 1 ns, "00001100100010" after 500 ns, "00000001011111" after 1 us, "00000000001000" after 1.5 us;
      wr <= '0', '1' after 3.5 ns;
      
      process
        begin
          wait for 5 ns;
          h <= not h;
      end process;
      
end architecture bench;
