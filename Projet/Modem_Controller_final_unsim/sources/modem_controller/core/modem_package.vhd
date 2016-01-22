----------------------------------------
----------------------------------------
-------------------
----
--
-- Modem Controller Component Package
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
-- Package
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

----------------------------------------
-- Package
----------------------------------------

package modem_package is
  
  component rs232_controller is
  
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
        
  end component;
  
  component diviseur is
    
  port( h: std_logic;
        --m :out std_logic (1 downto 0);
        hd :out std_logic );
  end component;
  
  component sinus is
    
  port( rst, h ,amp : std_logic;
        freq : std_logic_vector(3 downto 0);
        mode : std_logic_vector(1 downto 0);
        Vs : out std_logic_vector(9 downto 0) );
        
  end component;
  
end modem_package;
  
----------------------------------------
----------------------------------------
------------- Written by ---------------
----------------------------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------