----------------------------------------
----------------------------------------
-------------------
----
--
-- RS232 Controller
-- A VHDL Project
-- Polytech Nice-Sophia
-- ELEC5
-- 2013
--
----
-------------------
----------------------------------------
----------------------------------------

----------------------------------------
-- Includes
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

----------------------------------------
-- RS 232C Controller entity
----------------------------------------

entity rs232_controller is
  
  port( h : in std_logic;
        rst : in std_logic;
        dtr : in std_logic;
        rts : in std_logic;
        txd : in std_logic;
        m_a : in std_logic;
        no : in std_logic_vector(15 downto 0);
        tb : in std_logic_vector(1 downto 0);
        dsr : out std_logic;
        cts : out std_logic;
        cd : out std_logic;
       -- ri : out std_logic;
        rxd : out std_logic;
        amp : out std_logic;
        mode : out std_logic_vector(1 downto 0);
        freq : out std_logic_vector(3 downto 0) );
        
  end entity rs232_controller;        

----------------------------------------
-- RS 232C Controller architecture
----------------------------------------

architecture behaviour of rs232_controller is
  
  -- RS232 State variable
  type rs232_ctrl_state_t is (ATTDTR, ATTRTS, DTMF, ASK);
  signal current_state, next_state : rs232_ctrl_state_t := ATTDTR;
  
  -- Internal signals
  
  begin
    
    -- Sequential memory process to pilot controller's state
    
    seq_mem:process(h, rst)
        
    begin
      
      if(rst = '1') then
        
        current_state <= ATTDTR;
        
      elsif(rising_edge(h))then
        
        current_state <= next_state;
        
      end if;
      
    end process;
    
    -- Combinatory process to determine controller state
    
    combine:process(current_state)
    
    constant emission_count : integer := 10;
    constant transmission_count : integer := 10;
    
    variable ask_count, dtmf_count : integer;
    
    begin
      
      case current_state is
        
        when ATTDTR => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; mode <= "00";
                       
                       if(dtr = '1') then
                        next_state <= DTMF;
                       end if;
                       
        when ATTRTS => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; mode <= "00";
          
                       if(rts = '1') then
                        next_state <= ASK;
                       end if;
                       
        when DTMF => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; mode <= "01";
          
                       if(dtmf_count >= emission_count) then
                        next_state <= ATTRTS;
                       else
                        dtmf_count := dtmf_count + 1;
                       end if;
                      
        when ASK => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; mode <= "11";
          
                       if(ask_count >= transmission_count) then
                        next_state <= ATTDTR;
                       else
                        ask_count := ask_count + 1;
                       end if;
                       
      end case;
      
    end process;
    
  end architecture;
  
----------------------------------------
----------------------------------------
------------- Written by ---------------
----------------------------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------