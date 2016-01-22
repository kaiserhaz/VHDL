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
       -- dsr : out std_logic;
       -- cts : out std_logic;
       -- cd : out std_logic;
       -- ri : out std_logic;
       -- rxd : out std_logic;
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
  signal current_state, next_state : rs232_ctrl_state_t;
  
  -- Limiting integer types
  subtype limited_int is integer range 0 to 32767;
  constant emission_count : limited_int := 25000;
  
  -- Internal signals
  signal transmission_count : limited_int := 1250;
  signal ask_en : std_logic := '0';
  signal dtmf_done : std_logic := '0';
  
  begin
    
    ----
    -- Sequential memory process to pilot controller's state
    ----
    
    seq_mem:process(rst, h)
        
    begin
      
      if(rst = '1') then
        current_state <= ATTDTR;
        
      elsif(h='1' and h'event)then
        current_state <= next_state;
        
      end if;
      
    end process;
    
    ----
    -- Sequential mode assign process
    ----
    
    mode_assign:process(current_state)
    
    begin
      
      case current_state is
        
      when ATTDTR => mode <= "00";
      when ATTRTS => mode <= "00";
      when DTMF => mode <= "11";
      when ASK => mode <= "10";
        
      end case;
      
    end process;
    
    ----
    -- Sequential txd sampler process
    ----
    
    txd_sampler:process(rst, h)
    
    begin
            
      if(rst = '1') then
        amp <= '1';
        
      elsif(h='1' and h'event) then   
        if(ask_en = '1') then
          amp <= txd;
        
        end if;
        
      end if;
      
    end process;
    
    ----
    -- Sequential counter1 process
    ----
    
    counter1:process(rst, h)
    
    variable counter1, ask_count : limited_int := 0;
    variable synchronised : std_logic := '0';
    
    begin
      
      if(rst = '1') then
        counter1 := 0;
      
      elsif(h = '1' and h'event) then
        if(current_state = ASK) then
          counter1 := counter1 + 1;
        
          if(synchronised = '0' and (counter1 >= (transmission_count/2))) then
            synchronised := '1';
            ask_en <= '1';
                        
            counter1 := 0;
            
            ask_count := ask_count + 1;
            
          elsif(counter1 >= transmission_count) then
            ask_en <= '1';
            
            counter1 := 0;
            
            ask_count := ask_count + 1;
            
            if(ask_count >= 12) then              
              synchronised := '0';
              
              ask_count := 0;
              
            end if;
            
          else
            ask_en <= '0';
            
          end if;
        
        else
          ask_en <= '0';        
          
        end if;
        
      end if;
            
    end process;
    
    ----
    -- Sequential counter2 process
    ----
    
    counter2:process(rst, h)
    
    variable counter2, dtmf_count : limited_int := 0;
    
    begin
      
      if(rst = '1') then
        counter2 := 0;
      
      elsif(h = '1' and h'event) then
        if(current_state = DTMF) then
          counter2 := counter2 + 1;
          
          freq <= no( (15-(4*dtmf_count)) downto (12-(4*dtmf_count)) );
          
          if(counter2 >= emission_count) then
            counter2 := 0;
            
            dtmf_count := dtmf_count + 1;
                        
            if(dtmf_count >= 4) then
              dtmf_done <= '1';
              
              dtmf_count := 0;
              
            else
              dtmf_done <= '0';
              
            end if;
            
          end if;
        
        else
          dtmf_done <= '0';
          
          freq <= "0000";          
          
        end if;
        
      end if;
            
    end process;
        
    ----
    -- Combinatory tb convert process
    ----
    
    tb_convert:process(tb)
    
    begin
      
      case tb is
      
      when "11" => transmission_count <= 1250;
      when "10" => transmission_count <= 2500;
      when "01" => transmission_count <= 5000;
      when "00" => transmission_count <= 10000;
      when others => transmission_count <= 1250;
        
      end case;
      
    end process;
    
    ----
    -- Combinatory datapath process
    ----
    
    combine:process(current_state, dtr, rts, m_a, dtmf_done)
    
    begin
      
      if(m_a = '0') then
        next_state <= ATTDTR;
              
      else
        case current_state is
          
          when ATTDTR => -- rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0';
                                   
                         if(dtr = '1') then
                          next_state <= DTMF;
                         
                         else
                          next_state <= ATTDTR;
                                    
                         end if;
                         
          when ATTRTS => -- rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0';
            
                         if(rts = '1') then
                          next_state <= ASK;
                        
                         else
                          next_state <= ATTRTS;
                          
                         end if;
                         
          when DTMF => -- rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0';
          
                       if(dtmf_done = '1') then
                        next_state <= ATTRTS;
                        
                       else
                        next_state <= DTMF;
                        
                       end if;
                        
          when ASK => -- rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0';
                                                  
                       if(rts = '1') then
                        next_state <= ASK;
                        
                       else
                        next_state <= ATTDTR;
                        
                       end if;
                       
          when others => -- rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0';
                        
                         next_state <= ATTDTR;
                         
        end case;
        
      end if;
      
    end process;
    
  end architecture;
  
----------------------------------------
----------------------------------------
------------- Written by ---------------
----------------------------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------