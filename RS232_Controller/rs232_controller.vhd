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
  signal current_state, next_state : rs232_ctrl_state_t;
  constant emission_count : integer := 25000;
  
  -- Internal signals
  signal transmission_count : integer := 1250;
  signal h_int : std_logic;
  signal tmp_mode : std_logic_vector(1 downto 0) := "00";
  
  begin
    
    -- Sequential memory process to pilot controller's state
    
    seq_mem:process(rst, h)
        
    begin
      
      if(rst = '1') then
        current_state <= ATTDTR;
        
      elsif(h='1' and h'event)then
        current_state <= next_state;
        
      end if;
      
    end process;
    
    -- Sequential tb convert process
    
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
    
    -- Sequential counter process
    
    counter:process(rst, h)
    
    variable ask_count, dtmf_count : integer := 0;
    variable synchronised : std_logic := '0';
    
    begin
      
      if(h = '1' and h'event) then      
        if(tmp_mode = "10") then
          ask_count := ask_count + 1;
          h_int <= '0';
        
          if(synchronised = '0' and (ask_count >= (transmission_count/2))) then
            h_int <= '1';
            synchronised := '1';
            ask_count := 0;
          elsif(ask_count >= transmission_count) then
            h_int <= '1';
            ask_count := 0;
          else
            h_int <= '0';
          end if;
        elsif(tmp_mode = "11") then
          dtmf_count := dtmf_count + 1;
          h_int <= '0';
          
          if(dtmf_count >= emission_count) then
            h_int <= '1';
            dtmf_count := 0;
          end if;
        else
          h_int <= '0';
        end if;
      end if;
            
    end process;
    
    -- Combinatory process to determine controller state
    
    combine:process(current_state, dtr, rts, m_a, h_int)
    
    variable count : integer := 0;
    
    begin
      --assert (1=0) report "violation0";
      case current_state is
        
        when ATTDTR => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; tmp_mode <= "00";
                       --assert (1=0) report "violation1";
                       if(dtr = '1') then
                        next_state <= DTMF;
                        --assert (1=0) report "violation2";
                                                
                       end if;
                       
        when ATTRTS => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; tmp_mode <= "00";
          
                       if(rts = '1') then
                        next_state <= ASK;
                        
                       end if;
                       
        when DTMF => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; tmp_mode <= "11";
          
                     freq <= no( (15-(4*count)) downto (12-(4*count)) );
          
                     if(h_int = '1') then
                       assert (1=0) report "inside true";                       
                       if(count >= 3) then
                        assert (1=0) report "inside true count";
                        next_state <= ATTRTS;
                        count := 0;
                        
                       else
                        assert (1=0) report "inside false count";
                        count := count +1;
                        
                       end if;
                        
                     end if;
                      
        when ASK => rxd <= '0'; dsr <= '0'; cts <= '0'; cd <= '0'; tmp_mode <= "10";
          
                    amp <= txd;
          
                     if(h_int = '1') then
                       count := count + 1;
                       
                       if(count >= 12) then
                        next_state <= ATTDTR;
                        count := 0;
                                                
                       end if;
                       
                     end if;
                       
      end case;
      
      mode <= tmp_mode;
      
    end process;
    
  end architecture;
  
----------------------------------------
----------------------------------------
------------- Written by ---------------
----------------------------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------