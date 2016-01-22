------------
-- Double 7-segment display, synthesizeable
------------

library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;

entity display is
  port (en   : in std_logic;                       -- Enable
        no   : in std_logic;                       -- Segment select
        cs   : in std_logic;                       -- Clock
        D    : in std_logic_vector(3 downto 0);    -- Number data
        aff0 : out std_logic_vector (6 downto 0);  -- Segment 1
        aff1 : out std_logic_vector (6 downto 0)); -- Segment 2
end entity;
  
------------
-- Architecture
------------
  
architecture bhv_case of display is
begin 
  
  process(cs)
    variable S: std_logic_vector (6 downto 0); -- Intermediate variable
  begin
    
    if (rising_edge(cs)) then
      case D is                                -- Case compare
        when "0000" => S:="1000000";           -- Set segment LEDs according to data
        when "0001" => S:="1111001";
        when "0010" => S:="0100100";
        when "0011" => S:="0110000";
        when "0100" => S:="0011001";
        when "0101" => S:="0010010";
        when "0110" => S:="0000010";
        when "0111" => S:="1111000";
        when "1000" => S:="0000000";
        when "1001" => S:="0011000";
        when others => S:="0000110";
      end case;
      
      if en='1' then                           -- On enable
        if no='0' then                         -- Affect interim var to either segment
          aff0 <= S;
        else aff1 <= S;
        end if;
      end if;
    end if;

  end process;

end architecture;
