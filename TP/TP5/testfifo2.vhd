------------
-- Synchronous FIFO Testbench 2
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

entity test2 is
end entity test2;

------------
-- Testplan 2
------------

architecture bench2 of test2 is
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
  constant cycle : time := 10 ns ;
  
  signal rst, rw, enable, h, full, empty : std_logic := '0';
  signal datain, dataout : std_logic_vector(w-1 downto 0);
  signal error : natural;
  signal endsim : boolean;
  
  file stim_file : text is "stimulus.txt";
  file results : text open write_mode is "sim_res.txt";
  
begin
    
  UUT : synchronous_fifo generic map(w, d) port map(rst, rw, enable, h, datain, full, empty, dataout);
  
  read_stim_file: process
    variable vrst, vrw, venable : std_logic ;
    variable vdatain : std_logic_vector(w-1 downto 0);
    variable li : line;
  begin

    while not endfile(stim_file) loop
      readline(stim_file,li);
      if li'length > 0 and li(1) /= '-' then
        read(li,vrst) ;
        read(li,vrw);
        read(li,venable) ;
        read(li,vdatain);
         
        rst <= vrst;
        rw <= vrw;
        enable <= venable;
        datain <= vdatain;
        wait for cycle;
      end if;
    end loop;
    
    endsim <= true;
    
    assert false report "Simulation ended" severity note;
    
    wait;

  end process ;
  
  eval: process
    type fifodata is array(1 to 8) of std_logic_vector(w-1 downto 0);

    variable no : line;
    variable udatain : fifodata;
    variable ii, jj : natural := 1;
    variable ptr : natural := 1;
  begin

    write(no,string'("Error log file"));
    writeline(results,no);
    write(no,string'("======================"));
    writeline(results,no);
   
    wait for cycle/2;

    while not endsim loop
      
      if (rw = '1') then

        if (ii > 0) and (ii < 9) then
          udatain(ii) := datain;
          ii := ii + 1;
          if (ii > 4) then
            ptr := ii - 4;
          end if;
        end if;

      else

        if (jj < 4) then
          if (dataout /= udatain(ptr+jj-1)) then
            error <= error + 1 ;
            write(no,now) ;
            write(no,string'(" : Output = "));
            write(no,dataout);
            write(no,string'(" : Expected result = "));
            write(no,udatain(ptr+jj-1));
            writeline(results,no);
          end if;
        end if;
       
        jj := jj + 1;

      end if;

      if (ii = 9) and (rw = '1') then
        wait for cycle/2;
      else
        wait for cycle;
      end if;

    end loop;
   
    if error = 0 then
      assert false report "Simulation ok. No errors." severity note ;
    else
      assert false report "Errors detected, please refer to results.txt" severity note ;
      write(no,string'("==================================================="));
      writeline(results,no);
      write(no,string'("Total number of errors : "));
      write(no,error);
    end if;
   
    writeline(results,no);
    file_close(results);
   
    wait ;
  
  end process ;
  
  clock: process
    begin
      wait for 5 ns;
      h <= not h;
  end process;
          
end architecture bench2;
