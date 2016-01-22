library ieee;
use ieee.std_logic_1164.all;

entity test is
end test;

architecture beh of test is

  component diviseur is
   port( h: std_logic;
         --m :out std_logic (1 downto 0);
         hd :out std_logic
   );
  end component;

  signal h, h_d : std_logic := '0';
  begin
    
    UUT: diviseur port map(h, h_d);

    process
      begin
        wait for 5 ns;
        h <= not(h);
    end process;
end beh;

