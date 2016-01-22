------------
-- Counter
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
  generic( N : natural );
  port( RST   : in std_logic;                  -- Reset
        UD    : in std_logic;                  -- Up/down direction
        EN    : in std_logic;                  -- Enable
        H     : in std_logic;                  -- Clock
        Qdeep : out std_logic;                 -- Overflow bit of counter size
        QN    : out unsigned(N-1 downto 0) );  -- Counter status
end entity counter;

------------
-- Counter architecture
------------

architecture algorithmic of counter is
begin

  process(H, RST)
    variable V : signed(N downto 0);           -- Temporary variable
  begin
    
    if RST = '1' then
      V :=  to_signed(-1,N+1);
    elsif rising_edge(H) then
  
      if EN = '1' and UD = '1' then            -- R actif état bas
        if V = to_signed(0,N+1) then
          assert(V >= to_signed(-1,N+1))
          report "Error : Queue already empty!"
          severity error;
        else
          V := V - to_signed(1,N+1);
        end if;
            
      elsif EN = '1' and UD = '0' then         -- W actif état haut
        if V = to_signed(2**N - 1,N+1) then
          assert(V <= to_signed(2**N - 1,N+1))
          report "Error : Queue already full!"
          severity error;
        else
          V := V + to_signed(1,N+1);
        end if;
          	  
      end if;
      
    end if;
        
    Qdeep <= V(N);                             -- Assign to output
    QN <= unsigned(V(N-1 downto 0));
        
    end process;

end architecture algorithmic;
