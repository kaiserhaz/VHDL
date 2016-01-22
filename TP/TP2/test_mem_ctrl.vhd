------------
-- Memory controller testbench
------------

entity test is
end entity test;

------------
-- Testbench architecture
------------

architecture bench of test is
  component mem_ctrl is
    port (READY, READ_WRITE,H : in bit;
          OE, WE : out bit);
  end component;
  
  for UUT1 : mem_ctrl use entity work.mem_ctrl(fsm_dataflow);
  for UUT2 : mem_ctrl use entity work.mem_ctrl(fsm_dataflow2);

  signal ready, read_write, h, oe1, oe2, we1, we2 : bit;
  
  begin
    
    UUT1 : mem_ctrl port map (ready, read_write, h, oe1, we1);
    UUT2 : mem_ctrl port map (ready, read_write, h, oe2, we2);

    ready <= '0', '1' after 9 ns, '0' after 13 ns, '1' after 47 ns, '0' after 57 ns, '1' after 80 ns, '0' after 87 ns, '1' after 116 ns;

    r_w:process                                -- Read/write process
    begin
      wait for 7 ns;
      read_write <= not read_write;
    end process;    
    
    clock:process                              -- Clock process
    begin
      wait for 5 ns;
      h <= not h;
    end process;

end architecture bench;
