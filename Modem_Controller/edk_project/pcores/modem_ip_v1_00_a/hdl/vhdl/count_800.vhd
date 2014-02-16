library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity diviseur is
  port( h: std_logic;
        --m :out std_logic (1 downto 0);
        hd :out std_logic
  );
end diviseur;

architecture beh of diviseur is
  
signal count_100 : std_logic_vector (6 downto 0) := "0000000";

begin 
  process(h)
      
  begin
    if(h'event and h='1') then
      count_100 <= count_100 +1;
            
      if(count_100 < 50) then
        hd <= '0';
        
      elsif(count_100 >= 50 and count_100 < 100) then
        hd <= '1';
        
      else
        count_100 <="0000000";
        hd <= '0';
        
      end if;
      
    end if;
    
  end process;
  
end beh;
  