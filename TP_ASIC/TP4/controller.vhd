------------
-- Control unit
------------

library ieee;
use ieee.std_logic_1164.all;

entity controller is 
  port( SOC : in std_logic;                     -- Start convert
        CLK : in std_logic;                     -- Clock
        RST : in std_logic;                     -- Reset
        EOC : out std_logic;                    -- End of convert
        CTL : out std_logic_vector(10 downto 0) -- Control word
      );
end entity;
 
------------
-- Control architecture
------------

architecture bhv of controller is 

  type state_t is (T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13); -- State enum
  signal curr_state, next_state : state_t;
   
  signal ctrl_word : std_logic_vector(10 downto 0) := (others => '-');
   
begin

  mem: process(CLK,RST)                        -- State memory process
  begin 
    if RST = '0' then                          -- On reset low
      curr_state <= T0;                        -- Set current state to T0
    elsif rising_edge(CLK) then                -- On clock rising edge
      curr_state <= next_state;                -- Set next state
    end if;
  end process;
    
  next_state_p: process(curr_state, SOC)       -- Next state process
  begin
      
    case curr_state is                         -- Switch on current state
      when T0 => ctrl_word <= "000---11000";
                 EOC <= '0';
                 if (SOC = '0') then
                   next_state <= T1;
                 else
                   next_state <= T0;
                 end if;
             
      when T1 => ctrl_word <= "------0-100";
                 next_state <= T2;
                       
      when T2 => ctrl_word <= "---0000-010";
                 next_state <= T3;
                         
      when T3 => ctrl_word <= "---0010-010";
                 next_state <= T4;
              
      when T4 => ctrl_word <= "---0100-010";
                 next_state <= T5;
                           
      when T5 => ctrl_word <= "---0110-010";
                 next_state <= T6;
                         
      when T6 => ctrl_word <= "---1000-010";
                 next_state <= T7;
                           
      when T7 => ctrl_word <= "---1010-010";
                 next_state <= T8;
                         
      when T8 => ctrl_word <= "10110010000";
                 next_state <= T9;
                         
      when T9 => ctrl_word <= "10001110000";
                 next_state <= T10;
                         
      when T10 => ctrl_word <= "01101010000";
                  next_state <= T11;
                           
      when T11 => ctrl_word <= "01000110000";
                  next_state <= T12;
                           
      when T12 => ctrl_word <= "00100010000";
                  next_state <= T13;
               
      when T13 => ctrl_word <= "------0-001";
                  EOC <= '1';
                  if (SOC = '0') then
                    next_state <= T13;
                  else
                    next_state <= T0;
                  end if;
   end case;
   
  end process;
 
  -- Concurrent affects

  CTL(10 downto 8) <= ctrl_word(10 downto 8);
  CTL(7 downto 5) <= ctrl_word(7 downto 5);
  CTL(4) <= ctrl_word(4);
  CTL(3) <= ctrl_word(3);
  CTL(2) <= ctrl_word(2);
  CTL(1) <= ctrl_word(1);
  CTL(0) <= ctrl_word(0);
 
 end bhv;
   