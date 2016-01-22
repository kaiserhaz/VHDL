----------------------------------------
----------------------------------------
-------------------
----
--
-- Modem Controller
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
use ieee.std_logic_unsigned.all;
use work.modem_package.all;

----------------------------------------
-- Modem Controller entity
----------------------------------------

entity modem_controller is
  
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
        vs : out std_logic_vector(9 downto 0) );
        
  end entity modem_controller;        

----------------------------------------
-- Modem Controller architecture
----------------------------------------

architecture Structure of modem_controller is
  
  -- Component instanciation
  for diviseur0: diviseur use entity work.diviseur(beh);
  for sinus0: sinus use entity work.sinus(rtl);
  for ctrlr0: rs232_controller use entity work.rs232_controller(behaviour);
  
  -- Internal signals
  signal hd : std_logic;
  signal amp : std_logic;
  signal mode : std_logic_vector(1 downto 0);
  signal freq : std_logic_vector(3 downto 0);
  
  begin
    
    diviseur0: diviseur port map(h, hd);
    sinus0: sinus port map(rst, hd, amp, freq, mode, vs);
    ctrlr0: rs232_controller port map(hd, rst, dtr, rts, txd, m_a, no, tb, amp, mode, freq);    
    
 end architecture;
  
----------------------------------------
----------------------------------------
------------- Written by ---------------
----------------------------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------