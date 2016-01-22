------------
-- Sequencer testbench
------------

library ieee;
use ieee.numeric_bit.all;

entity test is
end entity test;

------------
-- Testplan 1: signal returns after a finite time
------------

architecture bench1 of test is

  component sequencer is
    port (RST, H, S, B, Z : in bit;
          L, HL, SHIFT_T, INC_T, RAZ_T, RAZ_D : out bit
          );
  end component;
  
  component datapath is
    port (H, SHIFT_T, INC_T, RAZ_T, RAZ_D : in bit;
          Z : out bit;
          D : out unsigned(9 downto 0)
          );
  end component;
  
  for UUT_seq : sequencer use entity work.sequencer(fsm_dataflow);
  for VIP_dp  : datapath  use entity work.datapath(behavioural);

  signal rst, h, b, s, l, hl, z, inct, shiftt, razd, razt : bit;
  signal d : unsigned(9 downto 0);
  
begin
    
    UUT_seq : sequencer port map (rst,h,s,b,z,l,hl,shiftt,inct,razt,razd);
    VIP_dp  : datapath port map (h, shiftt, inct, razt, razd, z, d);
    
    rst <= '1', '0' after 15 ns;                -- Reset
    b <= '0', '1' after 20 ns, '0' after 30 ns; -- Start measure
    s <= '0', '1' after 2200 ns, '0' after 2210 ns ; -- Signal delay ('last_event didn't work)
    
    clock:process                               -- Clock process
      begin
        wait for 5 ns;
        h <= not h;
    end process;

end architecture bench1;

------------
-- Testplan 2: signal never returns
------------

architecture bench2 of test is

  component sequencer is
    port (RST, H, S, B, Z : in bit;
          L, HL, SHIFT_T, INC_T, RAZ_T, RAZ_D : out bit
          );
  end component;
  
  component datapath is
    port (H, SHIFT_T, INC_T, RAZ_T, RAZ_D : in bit;
          Z : out bit;
          D : out unsigned(9 downto 0)
          );
  end component;
  
  for UUT_seq : sequencer use entity work.sequencer(fsm_dataflow);
  for VIP_dp  : datapath  use entity work.datapath(behavioural);

  signal rst, h, b, s, l, hl, z, inct, shiftt, razd, razt : bit;
  signal d : unsigned(9 downto 0);
  
begin
    
    UUT_seq : sequencer port map (rst,h,s,b,z,l,hl,shiftt,inct,razt,razd);
    VIP_dp  : datapath port map (h, shiftt, inct, razt, razd, z, d);
    
    rst <= '1', '0' after 15 ns;                -- Reset
    b <= '0', '1' after 20 ns, '0' after 30 ns; -- Start measure
    s <= '0';                                   -- Signal does not arrive
    
    clock:process                               -- Clock process
    begin
        wait for 5 ns;
        h <= not h;
    end process;

end architecture bench2;
