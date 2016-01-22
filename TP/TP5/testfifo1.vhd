------------
-- Synchronous FIFO Testbench 1
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test1 is
end entity test1;

------------
-- Testplan 1
------------

architecture bench1 of test1 is
  component synchronous_fifo is
    generic( wide, deep : natural );
    port( RST, RW, ENABLE, H : in std_logic;
          DATAIN : in std_logic_vector(wide-1 downto 0);
          FULL, EMPTY : out std_logic;
          DATAOUT : out std_logic_vector(wide-1 downto 0) );
  end component;
  
  for UUT : synchronous_fifo use entity work.synchronous_fifo(hierarchic);
  
  constant w : natural := 4;
  constant d : natural := 2;
  
  signal rst, rw, enable, h, full, empty : std_logic := '0';
  signal datain, dataout : std_logic_vector(w-1 downto 0);
  
  begin
    
    UUT : synchronous_fifo generic map(w, d) port map(rst, rw, enable, h, datain, full, empty, dataout);
      
    rst <= '1', '0' after 3 ns;
    enable <= '1' after 4 ns;
    datain <= "1001", "1100" after 14 ns, "1111" after 24 ns, "1100" after 34 ns, "0010" after 44 ns;
    rw <= '1', '0' after 60 ns;
    
    process
      begin
        wait for 5 ns;
        h <= not h;
    end process;
    
  end architecture bench1;
