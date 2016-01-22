------------
-- Accumulator testbench
------------

entity test is
end entity test;

architecture bench of test is

component accumulator
  generic (N : natural := 2);
  port (rst : in bit;
        ld  : in bit;
        b   : in natural range 0 to N-1;
        a   : out natural range 0 to N-1);
end component;

for UUT1:accumulator use entity work.accumulator(behavioural);
for UUT2:accumulator use entity work.accumulator(structural);

constant MAX : natural := 32;
signal rst, clk : bit;
signal a1, a2, b : natural range 0 to MAX;

begin

  UUT1:accumulator generic map (MAX) port map (rst, clk, b, a1);
  UUT2:accumulator generic map (MAX) port map (rst, clk, b, a2);

  rst <= '1', '0' after 220 ns;
    
  clk_p : process
  begin
    wait for 40 ns;
    clk <= not clk;
  end process;
      
  b <= 0, 1 after 220 ns, 3 after 550 ns, 0 after 720 ns, 4 after 770 ns;

end architecture bench;
