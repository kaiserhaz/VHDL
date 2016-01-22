------------
-- Datapath
------------

library ieee;
use ieee.numeric_bit.all;

entity datapath is
  port (H          : in bit;                       -- Clock
        SHIFT_T    : in bit;                       -- Shift T
        INC_T      : in bit;                       -- Increment T
        RAZ_T      : in bit;                       -- Clear T
        RAZ_D      : in bit;                       -- Clear D
        Z          : out bit;                      -- Off-limit count
        D          : out unsigned(9 downto 0));    -- Output data
end entity datapath;

------------
-- Behavioural architecture
------------

architecture behavioural of datapath is

  signal T : unsigned(10 downto 0);         -- Intermediate time value
  signal T_shift : unsigned(10 downto 0);   -- Divided time value

begin
  
  -- Synchronous processes
  
  counter: process(H, RAZ_T)                  -- Counter with async reset
    variable T_tmp : unsigned(10 downto 0); -- Intermediate counter variable
  begin

    if (RAZ_T = '1') then                     -- Asynchronous reset
      T_tmp := "00000000000";
    elsif (rising_edge(H)) then               -- On clock rising edge
      if (INC_T = '1') then
        T_tmp := T_tmp + "00000000001";       -- Increment counter
      end if;
    end if;
    
    T <= T_tmp;                               -- Write to output signal
    
  end process;
  
  reg: process(H, RAZ_D)                      -- Output register process
    variable D_tmp : unsigned(9 downto 0);  -- Intermediate output variable
  begin
      
    if (RAZ_D = '1') then                     -- Asynchronous reset
      D_tmp := "0000000000";
    elsif (rising_edge(H)) then               -- On clock rising edge
      if (SHIFT_T = '1') then
        D_tmp := T_shift(9 downto 0);         -- Update intermediate variable with shifted T
      end if;                                 -- Only select 10 bits
    end if;
    
    D <= D_tmp;
    
  end process; 
  
  -- Continuous/Concurrent affects
  
  T_shift <= T srl 1;                         -- Logical shift right to divide by 2
  
  Z <= '1' when (T = "10000000000") else '0'; -- Value comparator
                                              -- Output 1 when off-limit count reach
  
end architecture behavioural;
