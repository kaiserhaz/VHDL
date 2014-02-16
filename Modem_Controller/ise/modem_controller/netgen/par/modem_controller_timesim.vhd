--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: modem_controller_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 22 15:00:33 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 1 -pcf modem_controller.pcf -rpw 100 -tpw 0 -ar Structure -tm modem_controller -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim modem_controller.ncd modem_controller_timesim.vhd 
-- Device	: 5vfx70tff1136-1 (PRODUCTION 1.73 2013-06-08)
-- Input file	: modem_controller.ncd
-- Output file	: C:\Users\gse5\Documents\LO_KAMARUL\project_root2\ise\modem_controller\netgen\par\modem_controller_timesim.vhd
-- # of Entities	: 1
-- Design Name	: modem_controller
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity modem_controller is
  port (
    rst : in STD_LOGIC := 'X'; 
    rts : in STD_LOGIC := 'X'; 
    h : in STD_LOGIC := 'X'; 
    dtr : in STD_LOGIC := 'X'; 
    txd : in STD_LOGIC := 'X'; 
    m_a : in STD_LOGIC := 'X'; 
    vs : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    no : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    tb : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end modem_controller;

architecture Structure of modem_controller is
  signal diviseur0_hd_5288 : STD_LOGIC; 
  signal m_a_IBUF_5289 : STD_LOGIC; 
  signal ctrlr0_current_state_FSM_FFd1_5290 : STD_LOGIC; 
  signal ctrlr0_dtmf_done_5291 : STD_LOGIC; 
  signal ctrlr0_current_state_FSM_FFd2_5292 : STD_LOGIC; 
  signal rts_IBUF_5293 : STD_LOGIC; 
  signal ctrlr0_current_state_cmp_eq0001_0 : STD_LOGIC; 
  signal rst_IBUF_5295 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_9_0 : STD_LOGIC; 
  signal tb_1_IBUF_5298 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_10_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count10 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_11_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count11_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_12_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count12 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_13_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count13_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_14_0 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_Q_5308 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal sinus0_N305 : STD_LOGIC; 
  signal sinus0_signe_ask_5314 : STD_LOGIC; 
  signal sinus0_N7 : STD_LOGIC; 
  signal sinus0_N6 : STD_LOGIC; 
  signal sinus0_N4 : STD_LOGIC; 
  signal sinus0_N2_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_1_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count1 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_2_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_3_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_4_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_5_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_6_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_7_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count7_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_8_0 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count8 : STD_LOGIC; 
  signal sinus0_N169 : STD_LOGIC; 
  signal ctrlr0_freq_1_1_5343 : STD_LOGIC; 
  signal ctrlr0_freq_0_1_5344 : STD_LOGIC; 
  signal N43_0 : STD_LOGIC; 
  signal tb_0_IBUF_5346 : STD_LOGIC; 
  signal sinus0_C6_dtmf2 : STD_LOGIC; 
  signal sinus0_C6_dtmf1 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_1_0 : STD_LOGIC; 
  signal ctrlr0_rst_inv : STD_LOGIC; 
  signal ctrlr0_amp_5353 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_Q_5356 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_and0000 : STD_LOGIC; 
  signal ctrlr0_counter2_cmp_ge0000 : STD_LOGIC; 
  signal sinus0_C6_ask_inv_0 : STD_LOGIC; 
  signal h_BUFGP : STD_LOGIC; 
  signal diviseur0_count_100_and0000 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0000_0_0 : STD_LOGIC; 
  signal sinus0_N372 : STD_LOGIC; 
  signal sinus0_I_not00019_5372 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_13_0 : STD_LOGIC; 
  signal ctrlr0_counter2_cmp_ge0000116_5375 : STD_LOGIC; 
  signal ctrlr0_counter2_cmp_ge000014_5376 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_14_0 : STD_LOGIC; 
  signal ctrlr0_counter2_cmp_ge0000_inv : STD_LOGIC; 
  signal ctrlr0_Mcount_counter2_cy_3_Q_5383 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter2_cy_7_Q_5388 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter2_cy_11_Q_5393 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_cmp_ge0000210_5398 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_cmp_ge0000223_5400 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_cmp_ge0000_inv : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count_cy_3_Q_5404 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count_cy_7_Q_5409 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count_cy_11_Q_5414 : STD_LOGIC; 
  signal sinus0_C6_dtmf1_inv : STD_LOGIC; 
  signal sinus0_I1_0_1_5420 : STD_LOGIC; 
  signal sinus0_sens_dtmf1_5421 : STD_LOGIC; 
  signal sinus0_N408 : STD_LOGIC; 
  signal sinus0_Mcount_I12_0 : STD_LOGIC; 
  signal sinus0_Mcount_I11_5425 : STD_LOGIC; 
  signal sinus0_I1_not0001_5428 : STD_LOGIC; 
  signal sinus0_Mcount_I1_cy_3_Q_5429 : STD_LOGIC; 
  signal sinus0_I1_5_1_5432 : STD_LOGIC; 
  signal sinus0_Mcount_I17_0 : STD_LOGIC; 
  signal sinus0_Mcount_I1_cy_7_Q_5435 : STD_LOGIC; 
  signal sinus0_C6_dtmf2_inv : STD_LOGIC; 
  signal sinus0_I2_0_1_5438 : STD_LOGIC; 
  signal sinus0_sens_dtmf2_5439 : STD_LOGIC; 
  signal sinus0_N401 : STD_LOGIC; 
  signal sinus0_Mcount_I22_0 : STD_LOGIC; 
  signal sinus0_Mcount_I21_5443 : STD_LOGIC; 
  signal sinus0_I2_1_1_5444 : STD_LOGIC; 
  signal sinus0_Mcount_I23_0 : STD_LOGIC; 
  signal sinus0_I2_2_1_5446 : STD_LOGIC; 
  signal sinus0_Mcount_I24_0 : STD_LOGIC; 
  signal sinus0_Mcount_I2_cy_3_Q_5448 : STD_LOGIC; 
  signal sinus0_I2_3_1_5449 : STD_LOGIC; 
  signal sinus0_Mcount_I25_0 : STD_LOGIC; 
  signal sinus0_I2_4_1_5451 : STD_LOGIC; 
  signal sinus0_Mcount_I26_0 : STD_LOGIC; 
  signal sinus0_I2_5_1_5453 : STD_LOGIC; 
  signal sinus0_Mcount_I27_0 : STD_LOGIC; 
  signal sinus0_I2_not0001_5455 : STD_LOGIC; 
  signal sinus0_Mcount_I2_cy_7_Q_5456 : STD_LOGIC; 
  signal sinus0_I2_7_1_5457 : STD_LOGIC; 
  signal sinus0_Mcount_I29_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_cmp_lt00002 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_14_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_5462 : STD_LOGIC; 
  signal ctrlr0_ask_count_and0000_inv : STD_LOGIC; 
  signal ctrlr0_ask_count_and0001 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count_cy_3_Q_5467 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count_cy_7_Q_5472 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count_cy_11_Q_5477 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_2_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0000_cy_3_Q_5483 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_3_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_4_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_5_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_6_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0000_cy_7_Q_5488 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_7_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_8_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_9_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_10_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0000_cy_11_Q_5493 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_11_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_12_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_13_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0000_14_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0001_cy_3_Q_5498 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_3_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_4_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_5_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_6_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0001_cy_7_Q_5503 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_7_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_8_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_9_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_10_0 : STD_LOGIC; 
  signal ctrlr0_Madd_dtmf_count_add0001_cy_11_Q_5508 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_11_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_add0001_12_0 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0000_cy_3_Q_5514 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0000_cy_7_Q_5519 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0000_cy_11_Q_5524 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_2_0 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0001_cy_3_Q_5530 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_3_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_4_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_5_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_6_0 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0001_cy_7_Q_5535 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_7_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_8_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_9_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_10_0 : STD_LOGIC; 
  signal ctrlr0_Madd_synchronised_add0001_cy_11_Q_5540 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_11_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_12_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_add0001_13_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001120 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_0_0 : STD_LOGIC; 
  signal sinus0_signe_dtmf2_5547 : STD_LOGIC; 
  signal sinus0_mux2_varindex0000_1_Q : STD_LOGIC; 
  signal sinus0_N513 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N187_0 : STD_LOGIC; 
  signal sinus0_N99 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_2_0 : STD_LOGIC; 
  signal sinus0_Madd_tmp_vs_addsub0000_cy_3_Q_5556 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N312_0 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_3_0 : STD_LOGIC; 
  signal sinus0_mux2_varindex0000_4_Q : STD_LOGIC; 
  signal sinus0_N73 : STD_LOGIC; 
  signal sinus0_mux2_mux0000_4_60_5565 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_4_0 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal sinus0_N547 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_5_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541178_5571 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal sinus0_N60 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_6_0 : STD_LOGIC; 
  signal sinus0_Madd_tmp_vs_addsub0000_cy_7_Q_5576 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_7_0 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_8_0 : STD_LOGIC; 
  signal sinus0_signe_dtmf1_5579 : STD_LOGIC; 
  signal sinus0_mux_mux0001_9_mand : STD_LOGIC; 
  signal sinus0_C1_ask : STD_LOGIC; 
  signal sinus0_Mcount_I : STD_LOGIC; 
  signal sinus0_I_not0001 : STD_LOGIC; 
  signal sinus0_Mcount_I_cy_3_Q_5584 : STD_LOGIC; 
  signal sinus0_Mcount_I_cy_7_Q_5585 : STD_LOGIC; 
  signal vs_0_OBUF_5599 : STD_LOGIC; 
  signal vs_1_OBUF_5600 : STD_LOGIC; 
  signal vs_2_OBUF_5601 : STD_LOGIC; 
  signal vs_3_OBUF_5602 : STD_LOGIC; 
  signal vs_4_OBUF_5603 : STD_LOGIC; 
  signal vs_5_OBUF_5604 : STD_LOGIC; 
  signal vs_6_OBUF_5605 : STD_LOGIC; 
  signal vs_7_OBUF_5606 : STD_LOGIC; 
  signal vs_8_OBUF_5607 : STD_LOGIC; 
  signal vs_9_OBUF_5608 : STD_LOGIC; 
  signal diviseur0_hd1 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000394 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350511_5617 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350254_5618 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000035073_5619 : STD_LOGIC; 
  signal N168_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350775_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000369_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00003501067_5623 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350637_5624 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350680_5625 : STD_LOGIC; 
  signal N295_0 : STD_LOGIC; 
  signal sinus0_I2_7_2_5632 : STD_LOGIC; 
  signal N412_0 : STD_LOGIC; 
  signal N403_0 : STD_LOGIC; 
  signal N177_0 : STD_LOGIC; 
  signal N424_0 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_0_0 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_1_0 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N108_0 : STD_LOGIC; 
  signal N303_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542564_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542649_5648 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000015418 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541284_5650 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771505_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771178_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771541_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771296_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277191_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000124969_0 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N337_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211103_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000135950_5660 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N250_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001343145_5665 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001343232_5666 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000134373_5667 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491167_0 : STD_LOGIC; 
  signal sinus0_N264 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491491_0 : STD_LOGIC; 
  signal N179_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154522_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154800_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350106_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154869_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350353_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350194_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154997_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277235_0 : STD_LOGIC; 
  signal sinus0_N566 : STD_LOGIC; 
  signal sinus0_N0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277413_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277652_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277953_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395216_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00003501096_5686 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121133_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249310_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290137_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249198_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290364_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000027744_0 : STD_LOGIC; 
  signal N341_0 : STD_LOGIC; 
  signal N342_0 : STD_LOGIC; 
  signal ctrlr0_synchronised_and0000_5695 : STD_LOGIC; 
  signal sinus0_C3_ask : STD_LOGIC; 
  signal sinus0_sens_ask_5697 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal sinus0_N65 : STD_LOGIC; 
  signal sinus0_N222 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal sinus0_N32 : STD_LOGIC; 
  signal sinus0_C4_dtmf1 : STD_LOGIC; 
  signal sinus0_C4_dtmf2 : STD_LOGIC; 
  signal sinus0_C3_dtmf1 : STD_LOGIC; 
  signal sinus0_C3_dtmf2 : STD_LOGIC; 
  signal sinus0_C4_ask_5714 : STD_LOGIC; 
  signal ctrlr0_ask_en_5715 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290314_5717 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000129051_5718 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290478_5719 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290211_5720 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001310 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154108_5725 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541068_5730 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal sinus0_N22 : STD_LOGIC; 
  signal sinus0_N23 : STD_LOGIC; 
  signal sinus0_N553 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541467_5740 : STD_LOGIC; 
  signal sinus0_N10 : STD_LOGIC; 
  signal sinus0_N26 : STD_LOGIC; 
  signal sinus0_N27 : STD_LOGIC; 
  signal sinus0_N3 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541736_5745 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal sinus0_N441 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541891_5749 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541856_5750 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541606_5751 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542608_5752 : STD_LOGIC; 
  signal sinus0_N14 : STD_LOGIC; 
  signal sinus0_N15 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211079_5755 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211632_5756 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121254_5757 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001248 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal sinus0_mux_mux0001_5_51_5764 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001381 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001342 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal ctrlr0_synchronised_cmp_lt0000144_0 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350967_5774 : STD_LOGIC; 
  signal sinus0_N239 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal ctrlr0_dtmf_done_and0000_0 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_cmp_ge0000211_5782 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429309_5783 : STD_LOGIC; 
  signal sinus0_N247 : STD_LOGIC; 
  signal sinus0_N182 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal sinus0_N2 : STD_LOGIC; 
  signal sinus0_N530 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249238_5789 : STD_LOGIC; 
  signal sinus0_N572 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771201_5796 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771444_5797 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001417 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001358 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001393 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal sinus0_N224 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000027713_5803 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277119_0 : STD_LOGIC; 
  signal sinus0_mux_mux0001_5_30_5805 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771626_5807 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771471_5808 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal sinus0_N40 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277177_5812 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277992_5813 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277537_5814 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771680_5815 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000349 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal sinus0_N262 : STD_LOGIC; 
  signal sinus0_N231 : STD_LOGIC; 
  signal sinus0_N275 : STD_LOGIC; 
  signal sinus0_N244 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001311220_5826 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001311324_5828 : STD_LOGIC; 
  signal sinus0_N576 : STD_LOGIC; 
  signal sinus0_N250 : STD_LOGIC; 
  signal sinus0_N240 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541278 : STD_LOGIC; 
  signal sinus0_N265 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541253_5834 : STD_LOGIC; 
  signal sinus0_N221 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429202_5836 : STD_LOGIC; 
  signal sinus0_N235 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154268_5838 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154568_5839 : STD_LOGIC; 
  signal sinus0_N271 : STD_LOGIC; 
  signal sinus0_N67 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211329_5842 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00003501038_5843 : STD_LOGIC; 
  signal sinus0_N288 : STD_LOGIC; 
  signal sinus0_N220 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154382_0 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350826_5847 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350912_5848 : STD_LOGIC; 
  signal sinus0_N263 : STD_LOGIC; 
  signal sinus0_N300 : STD_LOGIC; 
  signal sinus0_N261 : STD_LOGIC; 
  signal sinus0_N269 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211474_5853 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771045_5854 : STD_LOGIC; 
  signal sinus0_N273 : STD_LOGIC; 
  signal sinus0_N569 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771573_5857 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal sinus0_N192 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771372_5860 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211592_5862 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000138259_5864 : STD_LOGIC; 
  signal sinus0_N551 : STD_LOGIC; 
  signal sinus0_N253 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000131137_5867 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00013118 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121372_5870 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000134314_5871 : STD_LOGIC; 
  signal sinus0_N69 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249692_5873 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000134329_5874 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000134369_5875 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000129063_5876 : STD_LOGIC; 
  signal sinus0_N238 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000129013_5878 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000138240_5879 : STD_LOGIC; 
  signal sinus0_N296 : STD_LOGIC; 
  signal sinus0_N115 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal sinus0_N579 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000447 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000442 : STD_LOGIC; 
  signal sinus0_N5 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000044312_5889 : STD_LOGIC; 
  signal sinus0_N51 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211122_5896 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211171_5898 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211208_5899 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121656_5900 : STD_LOGIC; 
  signal sinus0_N555 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001289 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491177_5907 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249624_5908 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491099_5909 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491361_5910 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491279_5911 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000138219_5912 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal sinus0_N30 : STD_LOGIC; 
  signal sinus0_N31 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal sinus0_C6_dtmf2211_5918 : STD_LOGIC; 
  signal sinus0_C6_dtmf2234_5919 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal sinus0_N18 : STD_LOGIC; 
  signal sinus0_N19 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395148_5924 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154610_5925 : STD_LOGIC; 
  signal sinus0_N19_5926 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350400_5927 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395136_0 : STD_LOGIC; 
  signal sinus0_N234 : STD_LOGIC; 
  signal sinus0_N127 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000370231_5931 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277549_5932 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429229_5933 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429159_5934 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000042930_5935 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000042929_5936 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000042962_5937 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429263_5938 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429353_5940 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277283_5941 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277473_5942 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277985_5943 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395254_5944 : STD_LOGIC; 
  signal sinus0_N181 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000131186_5946 : STD_LOGIC; 
  signal sinus0_N285 : STD_LOGIC; 
  signal sinus0_N578 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290100_5949 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249373_5950 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290425_5951 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000129071_5952 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249662_5953 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000035020_5954 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000044316_5955 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal sinus0_N298 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154674_5959 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541053_5960 : STD_LOGIC; 
  signal sinus0_N197 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000035052_5962 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395228_5964 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000039579_5965 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771033_5966 : STD_LOGIC; 
  signal sinus0_C6_dtmf2262_5967 : STD_LOGIC; 
  signal sinus0_C6_dtmf2229_5968 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350880_5970 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541538_5972 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771606_5974 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000370149_5975 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000037064_5976 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350289_5977 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350553_5978 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000429117_5979 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350730_5980 : STD_LOGIC; 
  signal sinus0_N544 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00003501013_5984 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00004432_5986 : STD_LOGIC; 
  signal diviseur0_hd_or0000 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000027771_5990 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542421_5991 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542240_5992 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350148_5993 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal sinus0_N297 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277369_5997 : STD_LOGIC; 
  signal sinus0_mux2_mux0000_4_25_5998 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277705_6001 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154204_6002 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154178_6003 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541969_6004 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal sinus0_N24 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001541214_6012 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277276_6013 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal sinus0_N16 : STD_LOGIC; 
  signal sinus0_N11 : STD_LOGIC; 
  signal sinus0_N32_6017 : STD_LOGIC; 
  signal sinus0_I_not000128_6018 : STD_LOGIC; 
  signal sinus0_N0_6019 : STD_LOGIC; 
  signal sinus0_N28 : STD_LOGIC; 
  signal sinus0_N20 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal sinus0_N54 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491522_6035 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290186_6037 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290166_6038 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290390_6045 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal ctrlr0_synchronised_cmp_lt0000124_6048 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121811_6052 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal sinus0_N232 : STD_LOGIC; 
  signal sinus0_N294 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal sinus0_N38 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249850_6063 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211188_6064 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249470_6065 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249581_6066 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal sinus0_N292 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249123_6069 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012499_6071 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi4_14 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi5_8 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi6_3 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_Q_1 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi_43 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi1_37 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi2_31 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi3_23 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi4_67 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi5_61 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi6_55 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_Q_53 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi_96 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi1_90 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi2_84 : STD_LOGIC; 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi3_76 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter2 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter21 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter22 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter23 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter24 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter25 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter26 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter27 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter28 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter29 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter210 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter211 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter212 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter213 : STD_LOGIC; 
  signal ctrlr0_Mcount_counter214 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count1 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count2 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count3 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count4 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count5 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count6 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count7 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count8 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count9 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count10 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count11 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count12 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count13 : STD_LOGIC; 
  signal ctrlr0_Mcount_dtmf_count14 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand_439 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand1 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand2 : STD_LOGIC; 
  signal sinus0_Mcount_I12 : STD_LOGIC; 
  signal sinus0_Mcount_I13 : STD_LOGIC; 
  signal sinus0_Mcount_I14 : STD_LOGIC; 
  signal sinus0_Mcount_I15 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand3 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand4 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand5 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand6 : STD_LOGIC; 
  signal sinus0_Mcount_I16 : STD_LOGIC; 
  signal sinus0_Mcount_I17 : STD_LOGIC; 
  signal sinus0_Mcount_I18 : STD_LOGIC; 
  signal sinus0_Mcount_I19 : STD_LOGIC; 
  signal sinus0_Mcount_I1_mand7 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand_521 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand1 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand2 : STD_LOGIC; 
  signal sinus0_Mcount_I22 : STD_LOGIC; 
  signal sinus0_Mcount_I23 : STD_LOGIC; 
  signal sinus0_Mcount_I24 : STD_LOGIC; 
  signal sinus0_Mcount_I25 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand3 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand4 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand5 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand6 : STD_LOGIC; 
  signal sinus0_Mcount_I26 : STD_LOGIC; 
  signal sinus0_Mcount_I27 : STD_LOGIC; 
  signal sinus0_Mcount_I28 : STD_LOGIC; 
  signal sinus0_Mcount_I29 : STD_LOGIC; 
  signal sinus0_Mcount_I2_mand7 : STD_LOGIC; 
  signal sinus0_Mcount_I210 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count1 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count2 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count3 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count4 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count5 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count6 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count7 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count8 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count9 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count10 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count11 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_1_rt_726 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_2_rt_723 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_3_rt_716 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_4_rt_751 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_5_rt_748 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_6_rt_745 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_7_rt_736 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_8_rt_773 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_9_rt_770 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_10_rt_767 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_11_rt_758 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_12_rt_789 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_13_rt_786 : STD_LOGIC; 
  signal ctrlr0_dtmf_count_14_rt_784 : STD_LOGIC; 
  signal ctrlr0_counter2_1_rt_803 : STD_LOGIC; 
  signal ctrlr0_counter2_2_rt_800 : STD_LOGIC; 
  signal ctrlr0_counter2_3_rt_794 : STD_LOGIC; 
  signal ctrlr0_counter2_4_rt_828 : STD_LOGIC; 
  signal ctrlr0_counter2_5_rt_825 : STD_LOGIC; 
  signal ctrlr0_counter2_6_rt_822 : STD_LOGIC; 
  signal ctrlr0_counter2_7_rt_813 : STD_LOGIC; 
  signal ctrlr0_counter2_8_rt_850 : STD_LOGIC; 
  signal ctrlr0_counter2_9_rt_847 : STD_LOGIC; 
  signal ctrlr0_counter2_10_rt_844 : STD_LOGIC; 
  signal ctrlr0_counter2_11_rt_835 : STD_LOGIC; 
  signal ctrlr0_counter2_12_rt_866 : STD_LOGIC; 
  signal ctrlr0_counter2_13_rt_863 : STD_LOGIC; 
  signal ctrlr0_counter2_14_rt_861 : STD_LOGIC; 
  signal ctrlr0_counter1_1_rt_883 : STD_LOGIC; 
  signal ctrlr0_counter1_2_rt_880 : STD_LOGIC; 
  signal ctrlr0_counter1_3_rt_871 : STD_LOGIC; 
  signal ctrlr0_counter1_4_rt_908 : STD_LOGIC; 
  signal ctrlr0_counter1_5_rt_905 : STD_LOGIC; 
  signal ctrlr0_counter1_6_rt_902 : STD_LOGIC; 
  signal ctrlr0_counter1_7_rt_893 : STD_LOGIC; 
  signal ctrlr0_counter1_8_rt_930 : STD_LOGIC; 
  signal ctrlr0_counter1_9_rt_927 : STD_LOGIC; 
  signal ctrlr0_counter1_10_rt_924 : STD_LOGIC; 
  signal ctrlr0_counter1_11_rt_915 : STD_LOGIC; 
  signal ctrlr0_counter1_12_rt_946 : STD_LOGIC; 
  signal ctrlr0_counter1_13_rt_943 : STD_LOGIC; 
  signal ctrlr0_counter1_14_rt_941 : STD_LOGIC; 
  signal ctrlr0_ask_count_1_rt_961 : STD_LOGIC; 
  signal ctrlr0_ask_count_2_rt_958 : STD_LOGIC; 
  signal ctrlr0_ask_count_3_rt_951 : STD_LOGIC; 
  signal ctrlr0_ask_count_4_rt_986 : STD_LOGIC; 
  signal ctrlr0_ask_count_5_rt_983 : STD_LOGIC; 
  signal ctrlr0_ask_count_6_rt_980 : STD_LOGIC; 
  signal ctrlr0_ask_count_7_rt_971 : STD_LOGIC; 
  signal ctrlr0_ask_count_8_rt_1008 : STD_LOGIC; 
  signal ctrlr0_ask_count_9_rt_1005 : STD_LOGIC; 
  signal ctrlr0_ask_count_10_rt_1002 : STD_LOGIC; 
  signal ctrlr0_ask_count_11_rt_993 : STD_LOGIC; 
  signal ctrlr0_ask_count_12_rt_1024 : STD_LOGIC; 
  signal ctrlr0_ask_count_13_rt_1021 : STD_LOGIC; 
  signal ctrlr0_ask_count_14_rt_1019 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand_1129 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand1 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand2 : STD_LOGIC; 
  signal sinus0_Mcount_I1 : STD_LOGIC; 
  signal sinus0_Mcount_I2 : STD_LOGIC; 
  signal sinus0_Mcount_I3_1111 : STD_LOGIC; 
  signal sinus0_Mcount_I4 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand3 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand4 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand5 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand6 : STD_LOGIC; 
  signal sinus0_Mcount_I5 : STD_LOGIC; 
  signal sinus0_Mcount_I6 : STD_LOGIC; 
  signal sinus0_Mcount_I7 : STD_LOGIC; 
  signal sinus0_Mcount_I8 : STD_LOGIC; 
  signal sinus0_Mcount_I_mand7 : STD_LOGIC; 
  signal sinus0_Mcount_I9 : STD_LOGIC; 
  signal h_IBUF : STD_LOGIC; 
  signal m_a_IBUF_6149 : STD_LOGIC; 
  signal dtr_IBUF_6152 : STD_LOGIC; 
  signal rst_IBUF_6155 : STD_LOGIC; 
  signal rts_IBUF_6158 : STD_LOGIC; 
  signal txd_IBUF_6161 : STD_LOGIC; 
  signal tb_0_IBUF_6164 : STD_LOGIC; 
  signal tb_1_IBUF_6167 : STD_LOGIC; 
  signal no_0_IBUF_6170 : STD_LOGIC; 
  signal no_1_IBUF_6173 : STD_LOGIC; 
  signal no_2_IBUF_6176 : STD_LOGIC; 
  signal no_3_IBUF_6179 : STD_LOGIC; 
  signal no_4_IBUF_6182 : STD_LOGIC; 
  signal no_5_IBUF_6185 : STD_LOGIC; 
  signal no_6_IBUF_6188 : STD_LOGIC; 
  signal no_7_IBUF_6191 : STD_LOGIC; 
  signal no_8_IBUF_6194 : STD_LOGIC; 
  signal no_9_IBUF_6197 : STD_LOGIC; 
  signal no_10_IBUF_6220 : STD_LOGIC; 
  signal no_11_IBUF_6223 : STD_LOGIC; 
  signal no_12_IBUF_6226 : STD_LOGIC; 
  signal no_13_IBUF_6229 : STD_LOGIC; 
  signal no_14_IBUF_6232 : STD_LOGIC; 
  signal no_15_IBUF_6235 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154800_1285 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154997_1304 : STD_LOGIC; 
  signal N567 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395216_1385 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154869_1466 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154382_1695 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000395136_1821 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350353_1853 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350194_1881 : STD_LOGIC; 
  signal sinus0_sens_dtmf2_not0001 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000369 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350106_2072 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000350775_2140 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771541_2185 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000154522_2195 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771505_2233 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277191 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542564_2312 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277119_2478 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00001542421_pack_11 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277235_2643 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex000027744_2785 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277652_2917 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277413_2957 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771296_2956 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex00002771178_3016 : STD_LOGIC; 
  signal sinus0_sens_ask_not0001 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal sinus0_Mmux_mux2_varindex0000277953_3064 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal sinus0_signe_dtmf2_not0001 : STD_LOGIC; 
  signal sinus0_signe_ask_not0001 : STD_LOGIC; 
  signal sinus0_N2_3238 : STD_LOGIC; 
  signal ctrlr0_dtmf_done_and0000 : STD_LOGIC; 
  signal N29_pack_2 : STD_LOGIC; 
  signal N96_pack_8 : STD_LOGIC; 
  signal N65_pack_7 : STD_LOGIC; 
  signal sinus0_tmp_vs_addsub0000_9_pack_4 : STD_LOGIC; 
  signal sinus0_C6_ask_inv : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491167_3660 : STD_LOGIC; 
  signal sinus0_signe_dtmf1_not0001 : STD_LOGIC; 
  signal ctrlr0_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal ctrlr0_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal ctrlr0_current_state_cmp_eq0001 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_1_1_3933 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_1_2_3920 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_0_1_3942 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_0_2_3935 : STD_LOGIC; 
  signal N563 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290137_4117 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00012491491_4143 : STD_LOGIC; 
  signal ctrlr0_dtmf_done_mux0001 : STD_LOGIC; 
  signal ctrlr0_synchronised_and0002 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count14 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count13 : STD_LOGIC; 
  signal ctrlr0_Mcount_ask_count12 : STD_LOGIC; 
  signal ctrlr0_synchronised_cmp_lt0000144_4213 : STD_LOGIC; 
  signal ctrlr0_ask_en_mux0003 : STD_LOGIC; 
  signal N565 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N151_pack_8 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N263_pack_13 : STD_LOGIC; 
  signal sinus0_Mcount_I110 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count7 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count13 : STD_LOGIC; 
  signal ctrlr0_Mrom_transmission_count11_4776 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex00011211103_4876 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_3_1_4889 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_3_2_4887 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_2_1_4934 : STD_LOGIC; 
  signal ctrlr0_freq_mux0002_2_2_4929 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001290364_4916 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249581_pack_8 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001121133_5098 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249310_5154 : STD_LOGIC; 
  signal sinus0_sens_dtmf1_not0001 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex0001249198_5192 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal sinus0_Mmux_mux_varindex000124969_5244 : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_vs_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_vs_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_4_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_3_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_5_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_5_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I2_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_sens_dtmf2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_hd_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_count_100_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_sens_ask_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_signe_dtmf2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_signe_ask_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_tmp_vs_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_signe_dtmf1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_current_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_current_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_dtmf_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_synchronised_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_ask_en_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_amp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_amp_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_counter1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrlr0_freq_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_5_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_I1_5_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_sinus0_sens_dtmf1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_diviseur0_hd_BUFG_BUF_IN : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp4_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp4_CYINITVCC_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N0_70_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_71_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_72_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_73_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_66_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_67_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_68_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_69_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_62_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_63_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_64_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_65_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_counter2_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_60_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_61_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_84_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_85_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_86_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_87_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_80_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_81_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_82_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_83_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_76_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_77_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_78_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_79_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_dtmf_count_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_74_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_75_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I2_xor_8_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_98_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_99_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_100_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_101_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_94_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_95_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_96_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_97_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_90_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_91_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_92_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_93_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp30_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_29_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp33_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_41_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp34_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_42_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_43_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_37_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_38_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_39_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_40_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_33_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_34_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_35_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_36_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0000_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_31_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_32_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_56_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp30_CYINITGND_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_57_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_58_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_52_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_53_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_54_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_55_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_48_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_49_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_50_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_51_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Madd_synchronised_add0001_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_46_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_47_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp35_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I_xor_8_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_103_SLICEL_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_N0_102_SLICEL_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_106_SLICEL_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ctrlr0_Mcount_ask_count_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_88_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_89_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sinus0_Mcount_I1_xor_8_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_107_SLICEL_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_105_SLICEL_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_104_SLICEL_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal sinus0_mux_rom0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal sinus0_I : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal sinus0_I2 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal sinus0_tmp_vs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sinus0_Madd_mux_sub0001_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal diviseur0_count_100 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ctrlr0_counter2 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal mode : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ctrlr0_dtmf_count : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal sinus0_I1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal ctrlr0_ask_count : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ctrlr0_counter1 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal sinus0_Madd_mux2_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sinus0_mux_mux0001 : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal ctrlr0_freq : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal sinus0_tmp_vs_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0001_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ctrlr0_Mcompar_synchronised_cmp_lt0002_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ctrlr0_Mcount_counter2_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ctrlr0_Mcount_dtmf_count_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal sinus0_Mcount_I1_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal sinus0_Mcount_I2_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal ctrlr0_Mcount_ask_count_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ctrlr0_Madd_dtmf_count_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ctrlr0_dtmf_count_add0000 : STD_LOGIC_VECTOR ( 14 downto 2 ); 
  signal ctrlr0_Madd_dtmf_count_add0001_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ctrlr0_dtmf_count_add0001 : STD_LOGIC_VECTOR ( 14 downto 3 ); 
  signal ctrlr0_Madd_synchronised_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ctrlr0_synchronised_add0000 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ctrlr0_Madd_synchronised_add0001_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ctrlr0_synchronised_add0001 : STD_LOGIC_VECTOR ( 14 downto 2 ); 
  signal sinus0_Madd_mux_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sinus0_Madd_tmp_vs_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sinus0_Mcount_I_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal sinus0_tmp_vs_mux0002 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal ctrlr0_freq_mux0002 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ctrlr0_counter1_mux0002 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_Q_1,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y60"
    )
    port map (
      CI => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_Q_5308,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_3_UNCONNECTED,
      CO(2) => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_Q_1,
      CO(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_DI_3_UNCONNECTED,
      DI(2) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi6_3,
      DI(1) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi5_8,
      DI(0) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi4_14,
      O(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_S_3_UNCONNECTED,
      S(2) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(6),
      S(1) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(5),
      S(0) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(4)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"2211221122112211"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_synchronised_add0000_13_0,
      ADR0 => ctrlr0_Mrom_transmission_count13_0,
      ADR1 => ctrlr0_synchronised_add0000_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(6)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"DDCCDDCC"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_synchronised_add0000_13_0,
      ADR0 => ctrlr0_Mrom_transmission_count13_0,
      ADR1 => ctrlr0_synchronised_add0000_14_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi6_3
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR3 => ctrlr0_synchronised_add0000_11_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      ADR2 => ctrlr0_synchronised_add0000_12_0,
      ADR0 => ctrlr0_Mrom_transmission_count12,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(5)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"5050F550"
    )
    port map (
      ADR1 => '1',
      ADR3 => ctrlr0_synchronised_add0000_11_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      ADR2 => ctrlr0_synchronised_add0000_12_0,
      ADR0 => ctrlr0_Mrom_transmission_count12,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi5_8
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"6006600660066006"
    )
    port map (
      ADR4 => '1',
      ADR0 => ctrlr0_synchronised_add0000_9_0,
      ADR1 => tb_1_IBUF_5298,
      ADR3 => ctrlr0_synchronised_add0000_10_0,
      ADR2 => ctrlr0_Mrom_transmission_count10,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(4)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y60",
      INIT => X"8F088F08"
    )
    port map (
      ADR4 => '1',
      ADR0 => ctrlr0_synchronised_add0000_9_0,
      ADR1 => tb_1_IBUF_5298,
      ADR3 => ctrlr0_synchronised_add0000_10_0,
      ADR2 => ctrlr0_Mrom_transmission_count10,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi4_14
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => ctrlr0_synchronised_add0000_7_0,
      ADR3 => ctrlr0_Mrom_transmission_count7_0,
      ADR4 => ctrlr0_synchronised_add0000_8_0,
      ADR2 => ctrlr0_Mrom_transmission_count8,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(3)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"0FCF000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => ctrlr0_synchronised_add0000_7_0,
      ADR3 => ctrlr0_Mrom_transmission_count7_0,
      ADR4 => ctrlr0_synchronised_add0000_8_0,
      ADR2 => ctrlr0_Mrom_transmission_count8,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi3_23
    );
  ProtoComp4_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X70Y59"
    )
    port map (
      O => NLW_ProtoComp4_CYINITVCC_O_UNCONNECTED
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y59"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_Q_5308,
      CO(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_CO_0_UNCONNECTED,
      DI(3) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi3_23,
      DI(2) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi2_31,
      DI(1) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi1_37,
      DI(0) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi_43,
      O(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_3_O_0_UNCONNECTED,
      S(3) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(3),
      S(2) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(2),
      S(1) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(1),
      S(0) => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(0)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => ctrlr0_synchronised_add0000_5_0,
      ADR4 => ctrlr0_Mrom_transmission_count1,
      ADR3 => ctrlr0_synchronised_add0000_6_0,
      ADR0 => tb_1_IBUF_5298,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(2)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"5500DD44"
    )
    port map (
      ADR2 => '1',
      ADR1 => ctrlr0_synchronised_add0000_5_0,
      ADR4 => ctrlr0_Mrom_transmission_count1,
      ADR3 => ctrlr0_synchronised_add0000_6_0,
      ADR0 => tb_1_IBUF_5298,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi2_31
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR0 => ctrlr0_synchronised_add0000_3_0,
      ADR4 => ctrlr0_Mrom_transmission_count12,
      ADR2 => ctrlr0_synchronised_add0000_4_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(1)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"3030B2B2"
    )
    port map (
      ADR3 => '1',
      ADR0 => ctrlr0_synchronised_add0000_3_0,
      ADR4 => ctrlr0_Mrom_transmission_count12,
      ADR2 => ctrlr0_synchronised_add0000_4_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi1_37
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_1_0,
      ADR3 => ctrlr0_Mrom_transmission_count1,
      ADR0 => ctrlr0_synchronised_add0000_2_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lut(0)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X70Y59",
      INIT => X"00A0AAFA"
    )
    port map (
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_1_0,
      ADR3 => ctrlr0_Mrom_transmission_count1,
      ADR0 => ctrlr0_synchronised_add0000_2_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0001_lutdi_43
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_Q_53,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y60"
    )
    port map (
      CI => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_Q_5356,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_3_UNCONNECTED,
      CO(2) => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_Q_53,
      CO(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_DI_3_UNCONNECTED,
      DI(2) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi6_55,
      DI(1) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi5_61,
      DI(0) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi4_67,
      O(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_S_3_UNCONNECTED,
      S(2) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(6),
      S(1) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(5),
      S(0) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(4)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"0041004100410041"
    )
    port map (
      ADR4 => '1',
      ADR2 => ctrlr0_synchronised_add0000_12_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      ADR3 => ctrlr0_synchronised_add0000_13_0,
      ADR0 => ctrlr0_synchronised_add0000_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(6)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"FFBAFFBA"
    )
    port map (
      ADR4 => '1',
      ADR2 => ctrlr0_synchronised_add0000_12_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      ADR3 => ctrlr0_synchronised_add0000_13_0,
      ADR0 => ctrlr0_synchronised_add0000_14_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi6_55
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR4 => ctrlr0_synchronised_add0000_10_0,
      ADR1 => ctrlr0_Mrom_transmission_count11_0,
      ADR3 => ctrlr0_synchronised_add0000_11_0,
      ADR0 => ctrlr0_Mrom_transmission_count12,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(5)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"77115500"
    )
    port map (
      ADR2 => '1',
      ADR4 => ctrlr0_synchronised_add0000_10_0,
      ADR1 => ctrlr0_Mrom_transmission_count11_0,
      ADR3 => ctrlr0_synchronised_add0000_11_0,
      ADR0 => ctrlr0_Mrom_transmission_count12,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi5_61
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"2184218421842184"
    )
    port map (
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_8_0,
      ADR3 => tb_1_IBUF_5298,
      ADR0 => ctrlr0_synchronised_add0000_9_0,
      ADR2 => ctrlr0_Mrom_transmission_count10,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(4)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y60",
      INIT => X"8E0A8E0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_8_0,
      ADR3 => tb_1_IBUF_5298,
      ADR0 => ctrlr0_synchronised_add0000_9_0,
      ADR2 => ctrlr0_Mrom_transmission_count10,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi4_67
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR4 => ctrlr0_synchronised_add0000_6_0,
      ADR0 => ctrlr0_Mrom_transmission_count7_0,
      ADR2 => ctrlr0_synchronised_add0000_7_0,
      ADR1 => ctrlr0_Mrom_transmission_count8,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(3)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"71713030"
    )
    port map (
      ADR3 => '1',
      ADR4 => ctrlr0_synchronised_add0000_6_0,
      ADR0 => ctrlr0_Mrom_transmission_count7_0,
      ADR2 => ctrlr0_synchronised_add0000_7_0,
      ADR1 => ctrlr0_Mrom_transmission_count8,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi3_76
    );
  ProtoComp4_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X69Y59"
    )
    port map (
      O => NLW_ProtoComp4_CYINITVCC_1_O_UNCONNECTED
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y59"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_Q_5356,
      CO(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_CO_0_UNCONNECTED,
      DI(3) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi3_76,
      DI(2) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi2_84,
      DI(1) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi1_90,
      DI(0) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi_96,
      O(3) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_3_O_0_UNCONNECTED,
      S(3) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(3),
      S(2) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(2),
      S(1) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(1),
      S(0) => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(0)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR3 => ctrlr0_synchronised_add0000_4_0,
      ADR1 => ctrlr0_Mrom_transmission_count1,
      ADR0 => ctrlr0_synchronised_add0000_5_0,
      ADR4 => tb_1_IBUF_5298,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(2)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"2200BBAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => ctrlr0_synchronised_add0000_4_0,
      ADR1 => ctrlr0_Mrom_transmission_count1,
      ADR0 => ctrlr0_synchronised_add0000_5_0,
      ADR4 => tb_1_IBUF_5298,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi2_84
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR2 => ctrlr0_synchronised_add0000_2_0,
      ADR4 => ctrlr0_Mrom_transmission_count12,
      ADR3 => ctrlr0_synchronised_add0000_3_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(1)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"3300F330"
    )
    port map (
      ADR0 => '1',
      ADR2 => ctrlr0_synchronised_add0000_2_0,
      ADR4 => ctrlr0_Mrom_transmission_count12,
      ADR3 => ctrlr0_synchronised_add0000_3_0,
      ADR1 => ctrlr0_Mrom_transmission_count13_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi1_90
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_0_0,
      ADR0 => ctrlr0_Mrom_transmission_count1,
      ADR3 => ctrlr0_synchronised_add0000_1_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      ADR5 => '1',
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lut(0)
    );
  ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X69Y59",
      INIT => X"5000FF50"
    )
    port map (
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_0_0,
      ADR0 => ctrlr0_Mrom_transmission_count1,
      ADR3 => ctrlr0_synchronised_add0000_1_0,
      ADR4 => ctrlr0_Mrom_transmission_count11_0,
      O => ctrlr0_Mcompar_synchronised_cmp_lt0002_lutdi_96
    );
  ctrlr0_counter2_3 : X_FF
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_3_CLK,
      I => ctrlr0_Mcount_counter23,
      O => ctrlr0_counter2(3),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR2 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(3),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(3)
    );
  N0_70_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_70_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_2 : X_FF
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_2_CLK,
      I => ctrlr0_Mcount_counter22,
      O => ctrlr0_counter2(2),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y112"
    )
    port map (
      CI => '0',
      CYINIT => ctrlr0_counter2_cmp_ge0000_inv,
      CO(3) => ctrlr0_Mcount_counter2_cy_3_Q_5383,
      CO(2) => NLW_ctrlr0_Mcount_counter2_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_counter2_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_counter2_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_counter23,
      O(2) => ctrlr0_Mcount_counter22,
      O(1) => ctrlr0_Mcount_counter21,
      O(0) => ctrlr0_Mcount_counter2,
      S(3) => ctrlr0_Mcount_counter2_lut(3),
      S(2) => ctrlr0_Mcount_counter2_lut(2),
      S(1) => ctrlr0_Mcount_counter2_lut(1),
      S(0) => ctrlr0_Mcount_counter2_lut(0)
    );
  ctrlr0_Mcount_counter2_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR2 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(2),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(2)
    );
  N0_71_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_71_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_1_CLK,
      I => ctrlr0_Mcount_counter21,
      O => ctrlr0_counter2(1),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR4 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(1),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(1)
    );
  N0_72_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_72_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_0_CLK,
      I => ctrlr0_Mcount_counter2,
      O => ctrlr0_counter2(0),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR4 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(0),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(0)
    );
  N0_73_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_73_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_7 : X_FF
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_7_CLK,
      I => ctrlr0_Mcount_counter27,
      O => ctrlr0_counter2(7),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR2 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(7),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(7)
    );
  N0_66_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_66_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_6 : X_FF
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_6_CLK,
      I => ctrlr0_Mcount_counter26,
      O => ctrlr0_counter2(6),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y113"
    )
    port map (
      CI => ctrlr0_Mcount_counter2_cy_3_Q_5383,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_counter2_cy_7_Q_5388,
      CO(2) => NLW_ctrlr0_Mcount_counter2_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_counter2_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_counter2_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_counter27,
      O(2) => ctrlr0_Mcount_counter26,
      O(1) => ctrlr0_Mcount_counter25,
      O(0) => ctrlr0_Mcount_counter24,
      S(3) => ctrlr0_Mcount_counter2_lut(7),
      S(2) => ctrlr0_Mcount_counter2_lut(6),
      S(1) => ctrlr0_Mcount_counter2_lut(5),
      S(0) => ctrlr0_Mcount_counter2_lut(4)
    );
  ctrlr0_Mcount_counter2_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"77007F0077007F00"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR2 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(6),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(6)
    );
  N0_67_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_67_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_5 : X_FF
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_5_CLK,
      I => ctrlr0_Mcount_counter25,
      O => ctrlr0_counter2(5),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"3700FF003700FF00"
    )
    port map (
      ADR1 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(5),
      ADR4 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(5)
    );
  N0_68_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_68_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_4 : X_FF
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_4_CLK,
      I => ctrlr0_Mcount_counter24,
      O => ctrlr0_counter2(4),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"3700FF003700FF00"
    )
    port map (
      ADR1 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(4),
      ADR4 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(4)
    );
  N0_69_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_69_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_11 : X_FF
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_11_CLK,
      I => ctrlr0_Mcount_counter211,
      O => ctrlr0_counter2(11),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"30F070F030F070F0"
    )
    port map (
      ADR3 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR2 => ctrlr0_counter2(11),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(11)
    );
  N0_62_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_62_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_10 : X_FF
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_10_CLK,
      I => ctrlr0_Mcount_counter210,
      O => ctrlr0_counter2(10),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y114"
    )
    port map (
      CI => ctrlr0_Mcount_counter2_cy_7_Q_5388,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_counter2_cy_11_Q_5393,
      CO(2) => NLW_ctrlr0_Mcount_counter2_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_counter2_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_counter2_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_counter211,
      O(2) => ctrlr0_Mcount_counter210,
      O(1) => ctrlr0_Mcount_counter29,
      O(0) => ctrlr0_Mcount_counter28,
      S(3) => ctrlr0_Mcount_counter2_lut(11),
      S(2) => ctrlr0_Mcount_counter2_lut(10),
      S(1) => ctrlr0_Mcount_counter2_lut(9),
      S(0) => ctrlr0_Mcount_counter2_lut(8)
    );
  ctrlr0_Mcount_counter2_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"3F007F003F007F00"
    )
    port map (
      ADR2 => ctrlr0_dtmf_count_add0001_13_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(10),
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(10)
    );
  N0_63_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_63_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_9 : X_FF
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_9_CLK,
      I => ctrlr0_Mcount_counter29,
      O => ctrlr0_counter2(9),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"3700FF003700FF00"
    )
    port map (
      ADR1 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(9),
      ADR4 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(9)
    );
  N0_64_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_64_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_8_CLK,
      I => ctrlr0_Mcount_counter28,
      O => ctrlr0_counter2(8),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"3700FF003700FF00"
    )
    port map (
      ADR1 => ctrlr0_dtmf_count_add0001_13_0,
      ADR2 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(8),
      ADR4 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(8)
    );
  N0_65_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_65_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_14 : X_FF
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_14_CLK,
      I => ctrlr0_Mcount_counter214,
      O => ctrlr0_counter2(14),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y115"
    )
    port map (
      CI => ctrlr0_Mcount_counter2_cy_11_Q_5393,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Mcount_counter2_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Mcount_counter2_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_counter2_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_counter2_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Mcount_counter2_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Mcount_counter2_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Mcount_counter2_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_Mcount_counter214,
      O(1) => ctrlr0_Mcount_counter213,
      O(0) => ctrlr0_Mcount_counter212,
      S(3) => NLW_ctrlr0_Mcount_counter2_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_Mcount_counter2_lut(14),
      S(1) => ctrlr0_Mcount_counter2_lut(13),
      S(0) => ctrlr0_Mcount_counter2_lut(12)
    );
  ctrlr0_Mcount_counter2_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => X"33770000FFFF0000"
    )
    port map (
      ADR2 => '1',
      ADR5 => ctrlr0_dtmf_count_add0001_13_0,
      ADR3 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR4 => ctrlr0_counter2(14),
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      O => ctrlr0_Mcount_counter2_lut(14)
    );
  ctrlr0_counter2_13 : X_FF
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_13_CLK,
      I => ctrlr0_Mcount_counter213,
      O => ctrlr0_counter2(13),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => X"57FF000057FF0000"
    )
    port map (
      ADR0 => ctrlr0_dtmf_count_add0001_13_0,
      ADR1 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR2 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR4 => ctrlr0_counter2(13),
      ADR3 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(13)
    );
  N0_60_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_60_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_12 : X_FF
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => '0'
    )
    port map (
      CE => mode(0),
      CLK => NlwBufferSignal_ctrlr0_counter2_12_CLK,
      I => ctrlr0_Mcount_counter212,
      O => ctrlr0_counter2(12),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_Mcount_counter2_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => X"1F00FF001F00FF00"
    )
    port map (
      ADR4 => ctrlr0_dtmf_count_add0001_13_0,
      ADR1 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR0 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR3 => ctrlr0_counter2(12),
      ADR2 => ctrlr0_dtmf_count_add0001_14_0,
      ADR5 => '1',
      O => ctrlr0_Mcount_counter2_lut(12)
    );
  N0_61_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y115",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_61_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_3 : X_FF
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_3_CLK,
      I => ctrlr0_Mcount_dtmf_count3,
      O => ctrlr0_dtmf_count(3),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(3),
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(3)
    );
  N0_84_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_84_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_2 : X_FF
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_2_CLK,
      I => ctrlr0_Mcount_dtmf_count2,
      O => ctrlr0_dtmf_count(2),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X71Y110"
    )
    port map (
      CI => '0',
      CYINIT => ctrlr0_dtmf_count_cmp_ge0000_inv,
      CO(3) => ctrlr0_Mcount_dtmf_count_cy_3_Q_5404,
      CO(2) => NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_dtmf_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_dtmf_count3,
      O(2) => ctrlr0_Mcount_dtmf_count2,
      O(1) => ctrlr0_Mcount_dtmf_count1,
      O(0) => ctrlr0_Mcount_dtmf_count,
      S(3) => ctrlr0_Mcount_dtmf_count_lut(3),
      S(2) => ctrlr0_Mcount_dtmf_count_lut(2),
      S(1) => ctrlr0_Mcount_dtmf_count_lut(1),
      S(0) => ctrlr0_Mcount_dtmf_count_lut(0)
    );
  ctrlr0_Mcount_dtmf_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(2),
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(2)
    );
  N0_85_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_85_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_1 : X_FF
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_1_CLK,
      I => ctrlr0_Mcount_dtmf_count1,
      O => ctrlr0_dtmf_count(1),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(1),
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(1)
    );
  N0_86_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_86_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_0 : X_FF
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_0_CLK,
      I => ctrlr0_Mcount_dtmf_count,
      O => ctrlr0_dtmf_count(0),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(0),
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(0)
    );
  N0_87_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_87_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_7 : X_FF
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_7_CLK,
      I => ctrlr0_Mcount_dtmf_count7,
      O => ctrlr0_dtmf_count(7),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"0300030003000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(7),
      ADR1 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(7)
    );
  N0_80_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_80_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_6 : X_FF
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_6_CLK,
      I => ctrlr0_Mcount_dtmf_count6,
      O => ctrlr0_dtmf_count(6),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X71Y111"
    )
    port map (
      CI => ctrlr0_Mcount_dtmf_count_cy_3_Q_5404,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_dtmf_count_cy_7_Q_5409,
      CO(2) => NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_dtmf_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_dtmf_count7,
      O(2) => ctrlr0_Mcount_dtmf_count6,
      O(1) => ctrlr0_Mcount_dtmf_count5,
      O(0) => ctrlr0_Mcount_dtmf_count4,
      S(3) => ctrlr0_Mcount_dtmf_count_lut(7),
      S(2) => ctrlr0_Mcount_dtmf_count_lut(6),
      S(1) => ctrlr0_Mcount_dtmf_count_lut(5),
      S(0) => ctrlr0_Mcount_dtmf_count_lut(4)
    );
  ctrlr0_Mcount_dtmf_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"0300030003000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(6),
      ADR1 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(6)
    );
  N0_81_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_81_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_5 : X_FF
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_5_CLK,
      I => ctrlr0_Mcount_dtmf_count5,
      O => ctrlr0_dtmf_count(5),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"0000550000005500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(5),
      ADR0 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(5)
    );
  N0_82_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_82_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_4 : X_FF
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_4_CLK,
      I => ctrlr0_Mcount_dtmf_count4,
      O => ctrlr0_dtmf_count(4),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"000000AA000000AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR0 => ctrlr0_dtmf_count(4),
      ADR3 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(4)
    );
  N0_83_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_83_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_11 : X_FF
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_11_CLK,
      I => ctrlr0_Mcount_dtmf_count11,
      O => ctrlr0_dtmf_count(11),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"000000F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR2 => ctrlr0_dtmf_count(11),
      ADR3 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(11)
    );
  N0_76_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_76_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_10 : X_FF
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_10_CLK,
      I => ctrlr0_Mcount_dtmf_count10,
      O => ctrlr0_dtmf_count(10),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X71Y112"
    )
    port map (
      CI => ctrlr0_Mcount_dtmf_count_cy_7_Q_5409,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_dtmf_count_cy_11_Q_5414,
      CO(2) => NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_dtmf_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_dtmf_count11,
      O(2) => ctrlr0_Mcount_dtmf_count10,
      O(1) => ctrlr0_Mcount_dtmf_count9,
      O(0) => ctrlr0_Mcount_dtmf_count8,
      S(3) => ctrlr0_Mcount_dtmf_count_lut(11),
      S(2) => ctrlr0_Mcount_dtmf_count_lut(10),
      S(1) => ctrlr0_Mcount_dtmf_count_lut(9),
      S(0) => ctrlr0_Mcount_dtmf_count_lut(8)
    );
  ctrlr0_Mcount_dtmf_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"000000F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR2 => ctrlr0_dtmf_count(10),
      ADR3 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(10)
    );
  N0_77_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_77_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_9 : X_FF
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_9_CLK,
      I => ctrlr0_Mcount_dtmf_count9,
      O => ctrlr0_dtmf_count(9),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"0300030003000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(9),
      ADR1 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(9)
    );
  N0_78_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_78_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_8 : X_FF
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_8_CLK,
      I => ctrlr0_Mcount_dtmf_count8,
      O => ctrlr0_dtmf_count(8),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"0300030003000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(8),
      ADR1 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(8)
    );
  N0_79_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_79_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_14 : X_FF
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_14_CLK,
      I => ctrlr0_Mcount_dtmf_count14,
      O => ctrlr0_dtmf_count(14),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X71Y113"
    )
    port map (
      CI => ctrlr0_Mcount_dtmf_count_cy_11_Q_5414,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_Mcount_dtmf_count14,
      O(1) => ctrlr0_Mcount_dtmf_count13,
      O(0) => ctrlr0_Mcount_dtmf_count12,
      S(3) => NLW_ctrlr0_Mcount_dtmf_count_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_Mcount_dtmf_count_lut(14),
      S(1) => ctrlr0_Mcount_dtmf_count_lut(13),
      S(0) => ctrlr0_Mcount_dtmf_count_lut(12)
    );
  ctrlr0_Mcount_dtmf_count_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ctrlr0_dtmf_count(14),
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      O => ctrlr0_Mcount_dtmf_count_lut(14)
    );
  ctrlr0_dtmf_count_13 : X_FF
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_13_CLK,
      I => ctrlr0_Mcount_dtmf_count13,
      O => ctrlr0_dtmf_count(13),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(13),
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(13)
    );
  N0_74_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_74_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_12 : X_FF
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_count_and0000,
      CLK => NlwBufferSignal_ctrlr0_dtmf_count_12_CLK,
      I => ctrlr0_Mcount_dtmf_count12,
      O => ctrlr0_dtmf_count(12),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_dtmf_count_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR3 => ctrlr0_dtmf_count(12),
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => '1',
      O => ctrlr0_Mcount_dtmf_count_lut(12)
    );
  N0_75_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X71Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_75_SLICEL_A5LUT_O_UNCONNECTED
    );
  sinus0_I1_3_sinus0_I1_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I12,
      O => sinus0_Mcount_I12_0
    );
  sinus0_I1_3 : X_FF
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_3_CLK,
      I => sinus0_Mcount_I15,
      O => sinus0_I1(3),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"2030D0C02030D0C0"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR1 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR4 => sinus0_I1(3),
      ADR3 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(3)
    );
  sinus0_Mcount_I1_mand_2 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"F0F00000"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR0 => '1',
      ADR4 => sinus0_I1(3),
      ADR3 => '1',
      O => sinus0_Mcount_I1_mand3
    );
  sinus0_I1_2 : X_FF
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_2_CLK,
      I => sinus0_Mcount_I14,
      O => sinus0_I1(2),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y97"
    )
    port map (
      CI => '0',
      CYINIT => sinus0_Mcount_I11_5425,
      CO(3) => sinus0_Mcount_I1_cy_3_Q_5429,
      CO(2) => NLW_sinus0_Mcount_I1_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I1_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I1_cy_3_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I1_mand3,
      DI(2) => sinus0_Mcount_I1_mand2,
      DI(1) => sinus0_Mcount_I1_mand1,
      DI(0) => sinus0_Mcount_I1_mand_439,
      O(3) => sinus0_Mcount_I15,
      O(2) => sinus0_Mcount_I14,
      O(1) => sinus0_Mcount_I13,
      O(0) => sinus0_Mcount_I12,
      S(3) => sinus0_Mcount_I1_lut(3),
      S(2) => sinus0_Mcount_I1_lut(2),
      S(1) => sinus0_Mcount_I1_lut(1),
      S(0) => sinus0_Mcount_I1_lut(0)
    );
  sinus0_Mcount_I1_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"20D030C020D030C0"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR1 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR3 => sinus0_I1(2),
      ADR4 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(2)
    );
  sinus0_Mcount_I1_mand_1 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"F000F000"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR0 => '1',
      ADR3 => sinus0_I1(2),
      ADR4 => '1',
      O => sinus0_Mcount_I1_mand2
    );
  sinus0_I1_1 : X_FF
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_1_CLK,
      I => sinus0_Mcount_I13,
      O => sinus0_I1(1),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"51AE000051AE0000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR0 => sinus0_sens_dtmf1_5421,
      ADR2 => sinus0_I1(8),
      ADR3 => sinus0_I1(1),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(1)
    );
  sinus0_Mcount_I1_mand_0 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I1(1),
      ADR0 => '1',
      O => sinus0_Mcount_I1_mand1
    );
  sinus0_Mcount_I1_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"F04B0000F04B0000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR2 => sinus0_I1_0_1_5420,
      ADR3 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(0)
    );
  sinus0_Mcount_I1_mand : X_LUT5
    generic map(
      LOC => "SLICE_X70Y97",
      INIT => X"F0F00000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR2 => sinus0_I1_0_1_5420,
      ADR1 => '1',
      ADR3 => '1',
      ADR0 => '1',
      O => sinus0_Mcount_I1_mand_439
    );
  sinus0_I1_7_sinus0_I1_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I17,
      O => sinus0_Mcount_I17_0
    );
  sinus0_I1_7 : X_FF
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_7_CLK,
      I => sinus0_Mcount_I19,
      O => sinus0_I1(7),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"0BF400000BF40000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR2 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR3 => sinus0_I1(7),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(7)
    );
  sinus0_Mcount_I1_mand_6 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I1(7),
      ADR0 => '1',
      O => sinus0_Mcount_I1_mand7
    );
  sinus0_I1_6 : X_FF
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_6_CLK,
      I => sinus0_Mcount_I18,
      O => sinus0_I1(6),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y98"
    )
    port map (
      CI => sinus0_Mcount_I1_cy_3_Q_5429,
      CYINIT => '0',
      CO(3) => sinus0_Mcount_I1_cy_7_Q_5435,
      CO(2) => NLW_sinus0_Mcount_I1_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I1_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I1_cy_7_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I1_mand7,
      DI(2) => sinus0_Mcount_I1_mand6,
      DI(1) => sinus0_Mcount_I1_mand5,
      DI(0) => sinus0_Mcount_I1_mand4,
      O(3) => sinus0_Mcount_I19,
      O(2) => sinus0_Mcount_I18,
      O(1) => sinus0_Mcount_I17,
      O(0) => sinus0_Mcount_I16,
      S(3) => sinus0_Mcount_I1_lut(7),
      S(2) => sinus0_Mcount_I1_lut(6),
      S(1) => sinus0_Mcount_I1_lut(5),
      S(0) => sinus0_Mcount_I1_lut(4)
    );
  sinus0_Mcount_I1_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"00F0B04000F0B040"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR4 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR3 => sinus0_I1(6),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(6)
    );
  sinus0_Mcount_I1_mand_5 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"F000F000"
    )
    port map (
      ADR2 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR0 => '1',
      ADR3 => sinus0_I1(6),
      ADR4 => '1',
      O => sinus0_Mcount_I1_mand6
    );
  sinus0_Mcount_I1_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"00A2AA0800A2AA08"
    )
    port map (
      ADR0 => sinus0_C6_dtmf1_inv,
      ADR4 => sinus0_I1_5_1_5432,
      ADR3 => sinus0_sens_dtmf1_5421,
      ADR2 => sinus0_I1(8),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(5)
    );
  sinus0_Mcount_I1_mand_4 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"AAAA0000"
    )
    port map (
      ADR0 => sinus0_C6_dtmf1_inv,
      ADR4 => sinus0_I1_5_1_5432,
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => sinus0_Mcount_I1_mand5
    );
  sinus0_I1_4 : X_FF
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_4_CLK,
      I => sinus0_Mcount_I16,
      O => sinus0_I1(4),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"0BF400000BF40000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR2 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_I1(8),
      ADR3 => sinus0_I1(4),
      ADR1 => sinus0_N408,
      ADR5 => '1',
      O => sinus0_Mcount_I1_lut(4)
    );
  sinus0_Mcount_I1_mand_3 : X_LUT5
    generic map(
      LOC => "SLICE_X70Y98",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1_inv,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I1(4),
      ADR0 => '1',
      O => sinus0_Mcount_I1_mand4
    );
  sinus0_Mcount_I2_cy_3_sinus0_Mcount_I2_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I25,
      O => sinus0_Mcount_I25_0
    );
  sinus0_Mcount_I2_cy_3_sinus0_Mcount_I2_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I24,
      O => sinus0_Mcount_I24_0
    );
  sinus0_Mcount_I2_cy_3_sinus0_Mcount_I2_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I23,
      O => sinus0_Mcount_I23_0
    );
  sinus0_Mcount_I2_cy_3_sinus0_Mcount_I2_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I22,
      O => sinus0_Mcount_I22_0
    );
  sinus0_Mcount_I2_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"13EC000013EC0000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR3 => sinus0_I2_3_1_5449,
      ADR1 => sinus0_sens_dtmf2_5439,
      ADR0 => sinus0_I2(8),
      ADR2 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(3)
    );
  sinus0_Mcount_I2_mand_2 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR3 => sinus0_I2_3_1_5449,
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => '1',
      O => sinus0_Mcount_I2_mand3
    );
  sinus0_Mcount_I2_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y79"
    )
    port map (
      CI => '0',
      CYINIT => sinus0_Mcount_I21_5443,
      CO(3) => sinus0_Mcount_I2_cy_3_Q_5448,
      CO(2) => NLW_sinus0_Mcount_I2_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I2_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I2_cy_3_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I2_mand3,
      DI(2) => sinus0_Mcount_I2_mand2,
      DI(1) => sinus0_Mcount_I2_mand1,
      DI(0) => sinus0_Mcount_I2_mand_521,
      O(3) => sinus0_Mcount_I25,
      O(2) => sinus0_Mcount_I24,
      O(1) => sinus0_Mcount_I23,
      O(0) => sinus0_Mcount_I22,
      S(3) => sinus0_Mcount_I2_lut(3),
      S(2) => sinus0_Mcount_I2_lut(2),
      S(1) => sinus0_Mcount_I2_lut(1),
      S(0) => sinus0_Mcount_I2_lut(0)
    );
  sinus0_Mcount_I2_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"13EC000013EC0000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR3 => sinus0_I2_2_1_5446,
      ADR1 => sinus0_sens_dtmf2_5439,
      ADR0 => sinus0_I2(8),
      ADR2 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(2)
    );
  sinus0_Mcount_I2_mand_1 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR3 => sinus0_I2_2_1_5446,
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => '1',
      O => sinus0_Mcount_I2_mand2
    );
  sinus0_Mcount_I2_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"2228228822282288"
    )
    port map (
      ADR0 => sinus0_C6_dtmf2_inv,
      ADR1 => sinus0_I2_1_1_5444,
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR2 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(1)
    );
  sinus0_Mcount_I2_mand_0 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"88888888"
    )
    port map (
      ADR0 => sinus0_C6_dtmf2_inv,
      ADR1 => sinus0_I2_1_1_5444,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => sinus0_Mcount_I2_mand1
    );
  sinus0_Mcount_I2_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"8882882288828822"
    )
    port map (
      ADR0 => sinus0_C6_dtmf2_inv,
      ADR1 => sinus0_I2_0_1_5438,
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR2 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(0)
    );
  sinus0_Mcount_I2_mand : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"88888888"
    )
    port map (
      ADR0 => sinus0_C6_dtmf2_inv,
      ADR1 => sinus0_I2_0_1_5438,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => sinus0_Mcount_I2_mand_521
    );
  sinus0_I2_6_sinus0_I2_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I29,
      O => sinus0_Mcount_I29_0
    );
  sinus0_I2_6_sinus0_I2_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I27,
      O => sinus0_Mcount_I27_0
    );
  sinus0_I2_6_sinus0_I2_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I26,
      O => sinus0_Mcount_I26_0
    );
  sinus0_Mcount_I2_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"1300EC001300EC00"
    )
    port map (
      ADR3 => sinus0_C6_dtmf2_inv,
      ADR4 => sinus0_I2_7_1_5457,
      ADR1 => sinus0_sens_dtmf2_5439,
      ADR0 => sinus0_I2(8),
      ADR2 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(7)
    );
  sinus0_Mcount_I2_mand_6 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FF000000"
    )
    port map (
      ADR3 => sinus0_C6_dtmf2_inv,
      ADR4 => sinus0_I2_7_1_5457,
      ADR2 => '1',
      ADR0 => '1',
      ADR1 => '1',
      O => sinus0_Mcount_I2_mand7
    );
  sinus0_I2_6 : X_FF
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_6_CLK,
      I => sinus0_Mcount_I28,
      O => sinus0_I2(6),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I2_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y80"
    )
    port map (
      CI => sinus0_Mcount_I2_cy_3_Q_5448,
      CYINIT => '0',
      CO(3) => sinus0_Mcount_I2_cy_7_Q_5456,
      CO(2) => NLW_sinus0_Mcount_I2_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I2_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I2_cy_7_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I2_mand7,
      DI(2) => sinus0_Mcount_I2_mand6,
      DI(1) => sinus0_Mcount_I2_mand5,
      DI(0) => sinus0_Mcount_I2_mand4,
      O(3) => sinus0_Mcount_I29,
      O(2) => sinus0_Mcount_I28,
      O(1) => sinus0_Mcount_I27,
      O(0) => sinus0_Mcount_I26,
      S(3) => sinus0_Mcount_I2_lut(7),
      S(2) => sinus0_Mcount_I2_lut(6),
      S(1) => sinus0_Mcount_I2_lut(5),
      S(0) => sinus0_Mcount_I2_lut(4)
    );
  sinus0_Mcount_I2_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"13EC000013EC0000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR1 => sinus0_sens_dtmf2_5439,
      ADR0 => sinus0_I2(8),
      ADR3 => sinus0_I2(6),
      ADR2 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(6)
    );
  sinus0_Mcount_I2_mand_5 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FF000000"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2_inv,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2(6),
      ADR0 => '1',
      O => sinus0_Mcount_I2_mand6
    );
  sinus0_Mcount_I2_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"4448448844484488"
    )
    port map (
      ADR1 => sinus0_C6_dtmf2_inv,
      ADR0 => sinus0_I2_5_1_5453,
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR2 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(5)
    );
  sinus0_Mcount_I2_mand_4 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"88888888"
    )
    port map (
      ADR1 => sinus0_C6_dtmf2_inv,
      ADR0 => sinus0_I2_5_1_5453,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => sinus0_Mcount_I2_mand5
    );
  sinus0_Mcount_I2_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"4448448844484488"
    )
    port map (
      ADR1 => sinus0_C6_dtmf2_inv,
      ADR0 => sinus0_I2_4_1_5451,
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR2 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR5 => '1',
      O => sinus0_Mcount_I2_lut(4)
    );
  sinus0_Mcount_I2_mand_3 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"88888888"
    )
    port map (
      ADR1 => sinus0_C6_dtmf2_inv,
      ADR0 => sinus0_I2_4_1_5451,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => sinus0_Mcount_I2_mand4
    );
  sinus0_Mcount_I2_xor_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y81"
    )
    port map (
      CI => sinus0_Mcount_I2_cy_7_Q_5456,
      CYINIT => '0',
      CO(3) => NLW_sinus0_Mcount_I2_xor_8_CO_3_UNCONNECTED,
      CO(2) => NLW_sinus0_Mcount_I2_xor_8_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I2_xor_8_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I2_xor_8_CO_0_UNCONNECTED,
      DI(3) => NLW_sinus0_Mcount_I2_xor_8_DI_3_UNCONNECTED,
      DI(2) => NLW_sinus0_Mcount_I2_xor_8_DI_2_UNCONNECTED,
      DI(1) => NLW_sinus0_Mcount_I2_xor_8_DI_1_UNCONNECTED,
      DI(0) => NLW_sinus0_Mcount_I2_xor_8_DI_0_UNCONNECTED,
      O(3) => NLW_sinus0_Mcount_I2_xor_8_O_3_UNCONNECTED,
      O(2) => NLW_sinus0_Mcount_I2_xor_8_O_2_UNCONNECTED,
      O(1) => NLW_sinus0_Mcount_I2_xor_8_O_1_UNCONNECTED,
      O(0) => sinus0_Mcount_I210,
      S(3) => NLW_sinus0_Mcount_I2_xor_8_S_3_UNCONNECTED,
      S(2) => NLW_sinus0_Mcount_I2_xor_8_S_2_UNCONNECTED,
      S(1) => NLW_sinus0_Mcount_I2_xor_8_S_1_UNCONNECTED,
      S(0) => sinus0_Mcount_I2_lut(8)
    );
  sinus0_I2_8 : X_FF
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_8_CLK,
      I => sinus0_Mcount_I210,
      O => sinus0_I2(8),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I2_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"0030F0000030F000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => sinus0_C6_dtmf2_inv,
      ADR4 => sinus0_I2(8),
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR1 => sinus0_N401,
      O => sinus0_Mcount_I2_lut(8)
    );
  ctrlr0_ask_count_3 : X_FF
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_3_CLK,
      I => ctrlr0_Mcount_ask_count3,
      O => ctrlr0_ask_count(3),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"3B000A003B000A00"
    )
    port map (
      ADR4 => ctrlr0_synchronised_cmp_lt00002,
      ADR1 => ctrlr0_synchronised_add0001_14_0,
      ADR0 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_ask_count(3),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(3)
    );
  N0_98_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_98_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_2 : X_FF
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_2_CLK,
      I => ctrlr0_Mcount_ask_count2,
      O => ctrlr0_ask_count(2),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y65"
    )
    port map (
      CI => '0',
      CYINIT => ctrlr0_ask_count_and0000_inv,
      CO(3) => ctrlr0_Mcount_ask_count_cy_3_Q_5467,
      CO(2) => NLW_ctrlr0_Mcount_ask_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_ask_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_ask_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_ask_count3,
      O(2) => ctrlr0_Mcount_ask_count2,
      O(1) => ctrlr0_Mcount_ask_count1,
      O(0) => ctrlr0_Mcount_ask_count,
      S(3) => ctrlr0_Mcount_ask_count_lut(3),
      S(2) => ctrlr0_Mcount_ask_count_lut(2),
      S(1) => ctrlr0_Mcount_ask_count_lut(1),
      S(0) => ctrlr0_Mcount_ask_count_lut(0)
    );
  ctrlr0_Mcount_ask_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"3B000A003B000A00"
    )
    port map (
      ADR4 => ctrlr0_synchronised_cmp_lt00002,
      ADR1 => ctrlr0_synchronised_add0001_14_0,
      ADR0 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_ask_count(2),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(2)
    );
  N0_99_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_99_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_1 : X_FF
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_1_CLK,
      I => ctrlr0_Mcount_ask_count1,
      O => ctrlr0_ask_count(1),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"2200F2002200F200"
    )
    port map (
      ADR0 => ctrlr0_synchronised_cmp_lt00002,
      ADR1 => ctrlr0_synchronised_add0001_14_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_ask_count(1),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(1)
    );
  N0_100_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_100_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_0 : X_FF
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_0_CLK,
      I => ctrlr0_Mcount_ask_count,
      O => ctrlr0_ask_count(0),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"2200F2002200F200"
    )
    port map (
      ADR0 => ctrlr0_synchronised_cmp_lt00002,
      ADR1 => ctrlr0_synchronised_add0001_14_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_ask_count(0),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(0)
    );
  N0_101_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_101_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_7 : X_FF
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_7_CLK,
      I => ctrlr0_Mcount_ask_count7,
      O => ctrlr0_ask_count(7),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"5000D0C05000D0C0"
    )
    port map (
      ADR3 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_ask_count(7),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(7)
    );
  N0_94_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_94_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_6 : X_FF
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_6_CLK,
      I => ctrlr0_Mcount_ask_count6,
      O => ctrlr0_ask_count(6),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y66"
    )
    port map (
      CI => ctrlr0_Mcount_ask_count_cy_3_Q_5467,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_ask_count_cy_7_Q_5472,
      CO(2) => NLW_ctrlr0_Mcount_ask_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_ask_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_ask_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_ask_count7,
      O(2) => ctrlr0_Mcount_ask_count6,
      O(1) => ctrlr0_Mcount_ask_count5,
      O(0) => ctrlr0_Mcount_ask_count4,
      S(3) => ctrlr0_Mcount_ask_count_lut(7),
      S(2) => ctrlr0_Mcount_ask_count_lut(6),
      S(1) => ctrlr0_Mcount_ask_count_lut(5),
      S(0) => ctrlr0_Mcount_ask_count_lut(4)
    );
  ctrlr0_Mcount_ask_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"5000D0C05000D0C0"
    )
    port map (
      ADR3 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_ask_count(6),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(6)
    );
  N0_95_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_95_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_5 : X_FF
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_5_CLK,
      I => ctrlr0_Mcount_ask_count5,
      O => ctrlr0_ask_count(5),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"4F4400004F440000"
    )
    port map (
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_ask_count(5),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(5)
    );
  N0_96_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_96_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_4 : X_FF
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_4_CLK,
      I => ctrlr0_Mcount_ask_count4,
      O => ctrlr0_ask_count(4),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"4F4400004F440000"
    )
    port map (
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_ask_count(4),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(4)
    );
  N0_97_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_97_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_11 : X_FF
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_11_CLK,
      I => ctrlr0_Mcount_ask_count11,
      O => ctrlr0_ask_count(11),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"0A008A880A008A88"
    )
    port map (
      ADR3 => ctrlr0_synchronised_cmp_lt00002,
      ADR2 => ctrlr0_synchronised_add0001_14_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR0 => ctrlr0_ask_count(11),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(11)
    );
  N0_90_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_90_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_10 : X_FF
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_10_CLK,
      I => ctrlr0_Mcount_ask_count10,
      O => ctrlr0_ask_count(10),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y67"
    )
    port map (
      CI => ctrlr0_Mcount_ask_count_cy_7_Q_5472,
      CYINIT => '0',
      CO(3) => ctrlr0_Mcount_ask_count_cy_11_Q_5477,
      CO(2) => NLW_ctrlr0_Mcount_ask_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_ask_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_ask_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_Mcount_ask_count11,
      O(2) => ctrlr0_Mcount_ask_count10,
      O(1) => ctrlr0_Mcount_ask_count9,
      O(0) => ctrlr0_Mcount_ask_count8,
      S(3) => ctrlr0_Mcount_ask_count_lut(11),
      S(2) => ctrlr0_Mcount_ask_count_lut(10),
      S(1) => ctrlr0_Mcount_ask_count_lut(9),
      S(0) => ctrlr0_Mcount_ask_count_lut(8)
    );
  ctrlr0_Mcount_ask_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"0A00CE000A00CE00"
    )
    port map (
      ADR0 => ctrlr0_synchronised_cmp_lt00002,
      ADR2 => ctrlr0_synchronised_add0001_14_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_ask_count(10),
      ADR4 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(10)
    );
  N0_91_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_91_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_9 : X_FF
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_9_CLK,
      I => ctrlr0_Mcount_ask_count9,
      O => ctrlr0_ask_count(9),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"4F4400004F440000"
    )
    port map (
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_ask_count(9),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(9)
    );
  N0_92_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_92_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_8 : X_FF
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_8_CLK,
      I => ctrlr0_Mcount_ask_count8,
      O => ctrlr0_ask_count(8),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"4F4400004F440000"
    )
    port map (
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_ask_count(8),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(8)
    );
  N0_93_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_93_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_3_ctrlr0_Madd_dtmf_count_add0000_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(3),
      O => ctrlr0_dtmf_count_add0000_3_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_3_ctrlr0_Madd_dtmf_count_add0000_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(2),
      O => ctrlr0_dtmf_count_add0000_2_0
    );
  ctrlr0_dtmf_count_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(3),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_3_rt_716
    );
  N0_27_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp30_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X70Y109"
    )
    port map (
      O => NLW_ProtoComp30_CYINITGND_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y109"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0000_cy_3_Q_5483,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ctrlr0_dtmf_count_add0000(3),
      O(2) => ctrlr0_dtmf_count_add0000(2),
      O(1) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_3_O_0_UNCONNECTED,
      S(3) => ctrlr0_dtmf_count_3_rt_716,
      S(2) => ctrlr0_dtmf_count_2_rt_723,
      S(1) => ctrlr0_dtmf_count_1_rt_726,
      S(0) => ctrlr0_Madd_dtmf_count_add0000_lut(0)
    );
  ctrlr0_dtmf_count_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(2),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_2_rt_723
    );
  N0_28_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(1),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_1_rt_726
    );
  N0_29_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(0),
      ADR5 => '1',
      O => ctrlr0_Madd_dtmf_count_add0000_lut(0)
    );
  N1_5_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y109",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_7_ctrlr0_Madd_dtmf_count_add0000_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(7),
      O => ctrlr0_dtmf_count_add0000_7_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_7_ctrlr0_Madd_dtmf_count_add0000_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(6),
      O => ctrlr0_dtmf_count_add0000_6_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_7_ctrlr0_Madd_dtmf_count_add0000_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(5),
      O => ctrlr0_dtmf_count_add0000_5_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_7_ctrlr0_Madd_dtmf_count_add0000_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(4),
      O => ctrlr0_dtmf_count_add0000_4_0
    );
  ctrlr0_dtmf_count_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(7),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_7_rt_736
    );
  N0_23_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y110"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0000_cy_3_Q_5483,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0000_cy_7_Q_5488,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_dtmf_count_add0000(7),
      O(2) => ctrlr0_dtmf_count_add0000(6),
      O(1) => ctrlr0_dtmf_count_add0000(5),
      O(0) => ctrlr0_dtmf_count_add0000(4),
      S(3) => ctrlr0_dtmf_count_7_rt_736,
      S(2) => ctrlr0_dtmf_count_6_rt_745,
      S(1) => ctrlr0_dtmf_count_5_rt_748,
      S(0) => ctrlr0_dtmf_count_4_rt_751
    );
  ctrlr0_dtmf_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(6),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_6_rt_745
    );
  N0_24_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(5),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_5_rt_748
    );
  N0_25_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_dtmf_count(4),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_4_rt_751
    );
  N0_26_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y110",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_11_ctrlr0_Madd_dtmf_count_add0000_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(11),
      O => ctrlr0_dtmf_count_add0000_11_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_11_ctrlr0_Madd_dtmf_count_add0000_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(10),
      O => ctrlr0_dtmf_count_add0000_10_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_11_ctrlr0_Madd_dtmf_count_add0000_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(9),
      O => ctrlr0_dtmf_count_add0000_9_0
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_11_ctrlr0_Madd_dtmf_count_add0000_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(8),
      O => ctrlr0_dtmf_count_add0000_8_0
    );
  ctrlr0_dtmf_count_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(11),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_11_rt_758
    );
  N0_19_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0000_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y111"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0000_cy_7_Q_5488,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0000_cy_11_Q_5493,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0000_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_dtmf_count_add0000(11),
      O(2) => ctrlr0_dtmf_count_add0000(10),
      O(1) => ctrlr0_dtmf_count_add0000(9),
      O(0) => ctrlr0_dtmf_count_add0000(8),
      S(3) => ctrlr0_dtmf_count_11_rt_758,
      S(2) => ctrlr0_dtmf_count_10_rt_767,
      S(1) => ctrlr0_dtmf_count_9_rt_770,
      S(0) => ctrlr0_dtmf_count_8_rt_773
    );
  ctrlr0_dtmf_count_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(10),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_10_rt_767
    );
  N0_20_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(9),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_9_rt_770
    );
  N0_21_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(8),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_8_rt_773
    );
  N0_22_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y111",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_add0000_14_ctrlr0_dtmf_count_add0000_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(14),
      O => ctrlr0_dtmf_count_add0000_14_0
    );
  ctrlr0_dtmf_count_add0000_14_ctrlr0_dtmf_count_add0000_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(13),
      O => ctrlr0_dtmf_count_add0000_13_0
    );
  ctrlr0_dtmf_count_add0000_14_ctrlr0_dtmf_count_add0000_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0000(12),
      O => ctrlr0_dtmf_count_add0000_12_0
    );
  ctrlr0_Madd_dtmf_count_add0000_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y112"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0000_cy_11_Q_5493,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_dtmf_count_add0000(14),
      O(1) => ctrlr0_dtmf_count_add0000(13),
      O(0) => ctrlr0_dtmf_count_add0000(12),
      S(3) => NLW_ctrlr0_Madd_dtmf_count_add0000_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_dtmf_count_14_rt_784,
      S(1) => ctrlr0_dtmf_count_13_rt_786,
      S(0) => ctrlr0_dtmf_count_12_rt_789
    );
  ctrlr0_dtmf_count_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y112",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => ctrlr0_dtmf_count(14),
      O => ctrlr0_dtmf_count_14_rt_784
    );
  ctrlr0_dtmf_count_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y112",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count(13),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_13_rt_786
    );
  N0_17_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X70Y112",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_dtmf_count(12),
      ADR5 => '1',
      O => ctrlr0_dtmf_count_12_rt_789
    );
  N0_18_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X70Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_3_ctrlr0_Madd_dtmf_count_add0001_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(3),
      O => ctrlr0_dtmf_count_add0001_3_0
    );
  ctrlr0_counter2_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(3),
      ADR5 => '1',
      O => ctrlr0_counter2_3_rt_794
    );
  N0_13_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp33_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X47Y112"
    )
    port map (
      O => NLW_ProtoComp33_CYINITGND_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X47Y112"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0001_cy_3_Q_5498,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ctrlr0_dtmf_count_add0001(3),
      O(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_3_O_0_UNCONNECTED,
      S(3) => ctrlr0_counter2_3_rt_794,
      S(2) => ctrlr0_counter2_2_rt_800,
      S(1) => ctrlr0_counter2_1_rt_803,
      S(0) => ctrlr0_Madd_dtmf_count_add0001_lut(0)
    );
  ctrlr0_counter2_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(2),
      ADR5 => '1',
      O => ctrlr0_counter2_2_rt_800
    );
  N0_14_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(1),
      ADR5 => '1',
      O => ctrlr0_counter2_1_rt_803
    );
  N0_15_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(0),
      ADR5 => '1',
      O => ctrlr0_Madd_dtmf_count_add0001_lut(0)
    );
  N1_4_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y112",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_7_ctrlr0_Madd_dtmf_count_add0001_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(7),
      O => ctrlr0_dtmf_count_add0001_7_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_7_ctrlr0_Madd_dtmf_count_add0001_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(6),
      O => ctrlr0_dtmf_count_add0001_6_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_7_ctrlr0_Madd_dtmf_count_add0001_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(5),
      O => ctrlr0_dtmf_count_add0001_5_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_7_ctrlr0_Madd_dtmf_count_add0001_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(4),
      O => ctrlr0_dtmf_count_add0001_4_0
    );
  ctrlr0_counter2_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(7),
      ADR5 => '1',
      O => ctrlr0_counter2_7_rt_813
    );
  N0_9_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X47Y113"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0001_cy_3_Q_5498,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0001_cy_7_Q_5503,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_dtmf_count_add0001(7),
      O(2) => ctrlr0_dtmf_count_add0001(6),
      O(1) => ctrlr0_dtmf_count_add0001(5),
      O(0) => ctrlr0_dtmf_count_add0001(4),
      S(3) => ctrlr0_counter2_7_rt_813,
      S(2) => ctrlr0_counter2_6_rt_822,
      S(1) => ctrlr0_counter2_5_rt_825,
      S(0) => ctrlr0_counter2_4_rt_828
    );
  ctrlr0_counter2_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(6),
      ADR5 => '1',
      O => ctrlr0_counter2_6_rt_822
    );
  N0_10_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(5),
      ADR5 => '1',
      O => ctrlr0_counter2_5_rt_825
    );
  N0_11_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(4),
      ADR5 => '1',
      O => ctrlr0_counter2_4_rt_828
    );
  N0_12_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_11_ctrlr0_Madd_dtmf_count_add0001_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(11),
      O => ctrlr0_dtmf_count_add0001_11_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_11_ctrlr0_Madd_dtmf_count_add0001_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(10),
      O => ctrlr0_dtmf_count_add0001_10_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_11_ctrlr0_Madd_dtmf_count_add0001_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(9),
      O => ctrlr0_dtmf_count_add0001_9_0
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_11_ctrlr0_Madd_dtmf_count_add0001_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(8),
      O => ctrlr0_dtmf_count_add0001_8_0
    );
  ctrlr0_counter2_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(11),
      ADR5 => '1',
      O => ctrlr0_counter2_11_rt_835
    );
  N0_5_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_dtmf_count_add0001_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X47Y114"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0001_cy_7_Q_5503,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_dtmf_count_add0001_cy_11_Q_5508,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0001_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_dtmf_count_add0001(11),
      O(2) => ctrlr0_dtmf_count_add0001(10),
      O(1) => ctrlr0_dtmf_count_add0001(9),
      O(0) => ctrlr0_dtmf_count_add0001(8),
      S(3) => ctrlr0_counter2_11_rt_835,
      S(2) => ctrlr0_counter2_10_rt_844,
      S(1) => ctrlr0_counter2_9_rt_847,
      S(0) => ctrlr0_counter2_8_rt_850
    );
  ctrlr0_counter2_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter2(10),
      ADR5 => '1',
      O => ctrlr0_counter2_10_rt_844
    );
  N0_6_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(9),
      ADR5 => '1',
      O => ctrlr0_counter2_9_rt_847
    );
  N0_7_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(8),
      ADR5 => '1',
      O => ctrlr0_counter2_8_rt_850
    );
  N0_8_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y114",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_dtmf_count_add0001_14_ctrlr0_dtmf_count_add0001_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(14),
      O => ctrlr0_dtmf_count_add0001_14_0
    );
  ctrlr0_dtmf_count_add0001_14_ctrlr0_dtmf_count_add0001_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(13),
      O => ctrlr0_dtmf_count_add0001_13_0
    );
  ctrlr0_dtmf_count_add0001_14_ctrlr0_dtmf_count_add0001_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_count_add0001(12),
      O => ctrlr0_dtmf_count_add0001_12_0
    );
  ctrlr0_Madd_dtmf_count_add0001_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X47Y115"
    )
    port map (
      CI => ctrlr0_Madd_dtmf_count_add0001_cy_11_Q_5508,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_dtmf_count_add0001(14),
      O(1) => ctrlr0_dtmf_count_add0001(13),
      O(0) => ctrlr0_dtmf_count_add0001(12),
      S(3) => NLW_ctrlr0_Madd_dtmf_count_add0001_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_counter2_14_rt_861,
      S(1) => ctrlr0_counter2_13_rt_863,
      S(0) => ctrlr0_counter2_12_rt_866
    );
  ctrlr0_counter2_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y115",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter2(14),
      O => ctrlr0_counter2_14_rt_861
    );
  ctrlr0_counter2_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y115",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter2(13),
      ADR5 => '1',
      O => ctrlr0_counter2_13_rt_863
    );
  N0_3_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y115",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter2_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X47Y115",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter2(12),
      ADR5 => '1',
      O => ctrlr0_counter2_12_rt_866
    );
  N0_4_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X47Y115",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_3_ctrlr0_Madd_synchronised_add0000_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(3),
      O => ctrlr0_synchronised_add0000_3_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_3_ctrlr0_Madd_synchronised_add0000_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(2),
      O => ctrlr0_synchronised_add0000_2_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_3_ctrlr0_Madd_synchronised_add0000_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(1),
      O => ctrlr0_synchronised_add0000_1_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_3_ctrlr0_Madd_synchronised_add0000_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(0),
      O => ctrlr0_synchronised_add0000_0_0
    );
  ctrlr0_counter1_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter1(3),
      ADR5 => '1',
      O => ctrlr0_counter1_3_rt_871
    );
  N0_41_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_41_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp34_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X68Y57"
    )
    port map (
      O => NLW_ProtoComp34_CYINITGND_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y57"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0000_cy_3_Q_5514,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0000_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ctrlr0_synchronised_add0000(3),
      O(2) => ctrlr0_synchronised_add0000(2),
      O(1) => ctrlr0_synchronised_add0000(1),
      O(0) => ctrlr0_synchronised_add0000(0),
      S(3) => ctrlr0_counter1_3_rt_871,
      S(2) => ctrlr0_counter1_2_rt_880,
      S(1) => ctrlr0_counter1_1_rt_883,
      S(0) => ctrlr0_Madd_synchronised_add0000_lut(0)
    );
  ctrlr0_counter1_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter1(2),
      ADR5 => '1',
      O => ctrlr0_counter1_2_rt_880
    );
  N0_42_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_42_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter1(1),
      ADR5 => '1',
      O => ctrlr0_counter1_1_rt_883
    );
  N0_43_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_43_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter1(0),
      ADR5 => '1',
      O => ctrlr0_Madd_synchronised_add0000_lut(0)
    );
  N1_6_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y57",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_7_ctrlr0_Madd_synchronised_add0000_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(7),
      O => ctrlr0_synchronised_add0000_7_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_7_ctrlr0_Madd_synchronised_add0000_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(6),
      O => ctrlr0_synchronised_add0000_6_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_7_ctrlr0_Madd_synchronised_add0000_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(5),
      O => ctrlr0_synchronised_add0000_5_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_7_ctrlr0_Madd_synchronised_add0000_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(4),
      O => ctrlr0_synchronised_add0000_4_0
    );
  ctrlr0_counter1_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter1(7),
      ADR5 => '1',
      O => ctrlr0_counter1_7_rt_893
    );
  N0_37_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_37_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y58"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0000_cy_3_Q_5514,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0000_cy_7_Q_5519,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0000_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_synchronised_add0000(7),
      O(2) => ctrlr0_synchronised_add0000(6),
      O(1) => ctrlr0_synchronised_add0000(5),
      O(0) => ctrlr0_synchronised_add0000(4),
      S(3) => ctrlr0_counter1_7_rt_893,
      S(2) => ctrlr0_counter1_6_rt_902,
      S(1) => ctrlr0_counter1_5_rt_905,
      S(0) => ctrlr0_counter1_4_rt_908
    );
  ctrlr0_counter1_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_counter1(6),
      ADR5 => '1',
      O => ctrlr0_counter1_6_rt_902
    );
  N0_38_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_38_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter1(5),
      ADR5 => '1',
      O => ctrlr0_counter1_5_rt_905
    );
  N0_39_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_39_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter1(4),
      ADR5 => '1',
      O => ctrlr0_counter1_4_rt_908
    );
  N0_40_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_40_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_11_ctrlr0_Madd_synchronised_add0000_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(11),
      O => ctrlr0_synchronised_add0000_11_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_11_ctrlr0_Madd_synchronised_add0000_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(10),
      O => ctrlr0_synchronised_add0000_10_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_11_ctrlr0_Madd_synchronised_add0000_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(9),
      O => ctrlr0_synchronised_add0000_9_0
    );
  ctrlr0_Madd_synchronised_add0000_cy_11_ctrlr0_Madd_synchronised_add0000_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(8),
      O => ctrlr0_synchronised_add0000_8_0
    );
  ctrlr0_counter1_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_counter1(11),
      ADR5 => '1',
      O => ctrlr0_counter1_11_rt_915
    );
  N0_33_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_33_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0000_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y59"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0000_cy_7_Q_5519,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0000_cy_11_Q_5524,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0000_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_synchronised_add0000(11),
      O(2) => ctrlr0_synchronised_add0000(10),
      O(1) => ctrlr0_synchronised_add0000(9),
      O(0) => ctrlr0_synchronised_add0000(8),
      S(3) => ctrlr0_counter1_11_rt_915,
      S(2) => ctrlr0_counter1_10_rt_924,
      S(1) => ctrlr0_counter1_9_rt_927,
      S(0) => ctrlr0_counter1_8_rt_930
    );
  ctrlr0_counter1_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter1(10),
      ADR5 => '1',
      O => ctrlr0_counter1_10_rt_924
    );
  N0_34_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_34_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => ctrlr0_counter1(9),
      ADR5 => '1',
      O => ctrlr0_counter1_9_rt_927
    );
  N0_35_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_35_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_counter1(8),
      ADR5 => '1',
      O => ctrlr0_counter1_8_rt_930
    );
  N0_36_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_36_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_synchronised_add0000_14_ctrlr0_synchronised_add0000_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(14),
      O => ctrlr0_synchronised_add0000_14_0
    );
  ctrlr0_synchronised_add0000_14_ctrlr0_synchronised_add0000_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(13),
      O => ctrlr0_synchronised_add0000_13_0
    );
  ctrlr0_synchronised_add0000_14_ctrlr0_synchronised_add0000_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0000(12),
      O => ctrlr0_synchronised_add0000_12_0
    );
  ctrlr0_Madd_synchronised_add0000_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y60"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0000_cy_11_Q_5524,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_synchronised_add0000(14),
      O(1) => ctrlr0_synchronised_add0000(13),
      O(0) => ctrlr0_synchronised_add0000(12),
      S(3) => NLW_ctrlr0_Madd_synchronised_add0000_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_counter1_14_rt_941,
      S(1) => ctrlr0_counter1_13_rt_943,
      S(0) => ctrlr0_counter1_12_rt_946
    );
  ctrlr0_counter1_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => ctrlr0_counter1(14),
      O => ctrlr0_counter1_14_rt_941
    );
  ctrlr0_counter1_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y60",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_counter1(13),
      ADR5 => '1',
      O => ctrlr0_counter1_13_rt_943
    );
  N0_31_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_31_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_counter1_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X68Y60",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_counter1(12),
      ADR5 => '1',
      O => ctrlr0_counter1_12_rt_946
    );
  N0_32_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_32_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_3_ctrlr0_Madd_synchronised_add0001_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(3),
      O => ctrlr0_synchronised_add0001_3_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_3_ctrlr0_Madd_synchronised_add0001_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(2),
      O => ctrlr0_synchronised_add0001_2_0
    );
  ctrlr0_ask_count_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_ask_count(3),
      ADR5 => '1',
      O => ctrlr0_ask_count_3_rt_951
    );
  N0_56_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_56_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp30_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X69Y66"
    )
    port map (
      O => NLW_ProtoComp30_CYINITGND_1_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y66"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0001_cy_3_Q_5530,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0001_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ctrlr0_synchronised_add0001(3),
      O(2) => ctrlr0_synchronised_add0001(2),
      O(1) => NLW_ctrlr0_Madd_synchronised_add0001_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ctrlr0_Madd_synchronised_add0001_cy_3_O_0_UNCONNECTED,
      S(3) => ctrlr0_ask_count_3_rt_951,
      S(2) => ctrlr0_ask_count_2_rt_958,
      S(1) => ctrlr0_ask_count_1_rt_961,
      S(0) => ctrlr0_Madd_synchronised_add0001_lut(0)
    );
  ctrlr0_ask_count_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_ask_count(2),
      ADR5 => '1',
      O => ctrlr0_ask_count_2_rt_958
    );
  N0_57_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_57_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_ask_count(1),
      ADR5 => '1',
      O => ctrlr0_ask_count_1_rt_961
    );
  N0_58_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_58_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_ask_count(0),
      ADR5 => '1',
      O => ctrlr0_Madd_synchronised_add0001_lut(0)
    );
  N1_7_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_7_ctrlr0_Madd_synchronised_add0001_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(7),
      O => ctrlr0_synchronised_add0001_7_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_7_ctrlr0_Madd_synchronised_add0001_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(6),
      O => ctrlr0_synchronised_add0001_6_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_7_ctrlr0_Madd_synchronised_add0001_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(5),
      O => ctrlr0_synchronised_add0001_5_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_7_ctrlr0_Madd_synchronised_add0001_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(4),
      O => ctrlr0_synchronised_add0001_4_0
    );
  ctrlr0_ask_count_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_ask_count(7),
      ADR5 => '1',
      O => ctrlr0_ask_count_7_rt_971
    );
  N0_52_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_52_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y67"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0001_cy_3_Q_5530,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0001_cy_7_Q_5535,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0001_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_synchronised_add0001(7),
      O(2) => ctrlr0_synchronised_add0001(6),
      O(1) => ctrlr0_synchronised_add0001(5),
      O(0) => ctrlr0_synchronised_add0001(4),
      S(3) => ctrlr0_ask_count_7_rt_971,
      S(2) => ctrlr0_ask_count_6_rt_980,
      S(1) => ctrlr0_ask_count_5_rt_983,
      S(0) => ctrlr0_ask_count_4_rt_986
    );
  ctrlr0_ask_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_ask_count(6),
      ADR5 => '1',
      O => ctrlr0_ask_count_6_rt_980
    );
  N0_53_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_53_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_ask_count(5),
      ADR5 => '1',
      O => ctrlr0_ask_count_5_rt_983
    );
  N0_54_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_54_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_ask_count(4),
      ADR5 => '1',
      O => ctrlr0_ask_count_4_rt_986
    );
  N0_55_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_55_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_11_ctrlr0_Madd_synchronised_add0001_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(11),
      O => ctrlr0_synchronised_add0001_11_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_11_ctrlr0_Madd_synchronised_add0001_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(10),
      O => ctrlr0_synchronised_add0001_10_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_11_ctrlr0_Madd_synchronised_add0001_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(9),
      O => ctrlr0_synchronised_add0001_9_0
    );
  ctrlr0_Madd_synchronised_add0001_cy_11_ctrlr0_Madd_synchronised_add0001_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(8),
      O => ctrlr0_synchronised_add0001_8_0
    );
  ctrlr0_ask_count_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_ask_count(11),
      ADR5 => '1',
      O => ctrlr0_ask_count_11_rt_993
    );
  N0_48_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_48_SLICEL_D5LUT_O_UNCONNECTED
    );
  ctrlr0_Madd_synchronised_add0001_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y68"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0001_cy_7_Q_5535,
      CYINIT => '0',
      CO(3) => ctrlr0_Madd_synchronised_add0001_cy_11_Q_5540,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0001_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ctrlr0_synchronised_add0001(11),
      O(2) => ctrlr0_synchronised_add0001(10),
      O(1) => ctrlr0_synchronised_add0001(9),
      O(0) => ctrlr0_synchronised_add0001(8),
      S(3) => ctrlr0_ask_count_11_rt_993,
      S(2) => ctrlr0_ask_count_10_rt_1002,
      S(1) => ctrlr0_ask_count_9_rt_1005,
      S(0) => ctrlr0_ask_count_8_rt_1008
    );
  ctrlr0_ask_count_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_ask_count(10),
      ADR5 => '1',
      O => ctrlr0_ask_count_10_rt_1002
    );
  N0_49_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_49_SLICEL_C5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_ask_count(9),
      ADR5 => '1',
      O => ctrlr0_ask_count_9_rt_1005
    );
  N0_50_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_50_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_ask_count(8),
      ADR5 => '1',
      O => ctrlr0_ask_count_8_rt_1008
    );
  N0_51_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_51_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_synchronised_add0001_14_ctrlr0_synchronised_add0001_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(14),
      O => ctrlr0_synchronised_add0001_14_0
    );
  ctrlr0_synchronised_add0001_14_ctrlr0_synchronised_add0001_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(13),
      O => ctrlr0_synchronised_add0001_13_0
    );
  ctrlr0_synchronised_add0001_14_ctrlr0_synchronised_add0001_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_add0001(12),
      O => ctrlr0_synchronised_add0001_12_0
    );
  ctrlr0_Madd_synchronised_add0001_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y69"
    )
    port map (
      CI => ctrlr0_Madd_synchronised_add0001_cy_11_Q_5540,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_synchronised_add0001(14),
      O(1) => ctrlr0_synchronised_add0001(13),
      O(0) => ctrlr0_synchronised_add0001(12),
      S(3) => NLW_ctrlr0_Madd_synchronised_add0001_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_ask_count_14_rt_1019,
      S(1) => ctrlr0_ask_count_13_rt_1021,
      S(0) => ctrlr0_ask_count_12_rt_1024
    );
  ctrlr0_ask_count_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ctrlr0_ask_count(14),
      O => ctrlr0_ask_count_14_rt_1019
    );
  ctrlr0_ask_count_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_ask_count(13),
      ADR5 => '1',
      O => ctrlr0_ask_count_13_rt_1021
    );
  N0_46_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_46_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_ask_count(12),
      ADR5 => '1',
      O => ctrlr0_ask_count_12_rt_1024
    );
  N0_47_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_47_SLICEL_A5LUT_O_UNCONNECTED
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_3_sinus0_Madd_tmp_vs_addsub0000_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(3),
      O => sinus0_tmp_vs_addsub0000_3_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_3_sinus0_Madd_tmp_vs_addsub0000_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(2),
      O => sinus0_tmp_vs_addsub0000_2_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_3_sinus0_Madd_tmp_vs_addsub0000_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(1),
      O => sinus0_tmp_vs_addsub0000_1_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_3_sinus0_Madd_tmp_vs_addsub0000_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(0),
      O => sinus0_tmp_vs_addsub0000_0_0
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y90",
      INIT => X"2ED12ED122DDEE11"
    )
    port map (
      ADR1 => sinus0_signe_dtmf2_5547,
      ADR0 => N120,
      ADR2 => N169,
      ADR5 => sinus0_mux2_varindex0000_1_Q,
      ADR3 => sinus0_mux_mux0001(3),
      ADR4 => N312_0,
      O => sinus0_Madd_tmp_vs_addsub0000_lut(3)
    );
  ProtoComp35_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X59Y90"
    )
    port map (
      O => NLW_ProtoComp35_CYINITGND_O_UNCONNECTED
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X59Y90"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => sinus0_Madd_tmp_vs_addsub0000_cy_3_Q_5556,
      CO(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_1_Q,
      DI(0) => sinus0_Madd_mux_addsub0000_lut(0),
      O(3) => sinus0_tmp_vs_addsub0000(3),
      O(2) => sinus0_tmp_vs_addsub0000(2),
      O(1) => sinus0_tmp_vs_addsub0000(1),
      O(0) => sinus0_tmp_vs_addsub0000(0),
      S(3) => sinus0_Madd_tmp_vs_addsub0000_lut(3),
      S(2) => sinus0_Madd_tmp_vs_addsub0000_lut(2),
      S(1) => sinus0_Madd_tmp_vs_addsub0000_lut(1),
      S(0) => sinus0_Madd_tmp_vs_addsub0000_lut(0)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y90",
      INIT => X"2FD020DFFF0000FF"
    )
    port map (
      ADR2 => sinus0_signe_dtmf2_5547,
      ADR1 => sinus0_N513,
      ADR0 => N188,
      ADR3 => sinus0_mux_mux0001(2),
      ADR4 => N187_0,
      ADR5 => sinus0_N99,
      O => sinus0_Madd_tmp_vs_addsub0000_lut(2)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y90",
      INIT => X"AA0055FF55FFAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => sinus0_signe_dtmf2_5547,
      ADR3 => sinus0_Madd_mux2_addsub0000_lut(0),
      ADR4 => sinus0_mux_mux0001(1),
      ADR5 => sinus0_mux2_varindex0000_1_Q,
      O => sinus0_Madd_tmp_vs_addsub0000_lut(1)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y90",
      INIT => X"FF00CC33FF00CC33"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_I1(8),
      ADR4 => sinus0_Mmux_mux_varindex0001120,
      ADR3 => sinus0_Madd_mux2_addsub0000_lut(0),
      ADR5 => '1',
      O => sinus0_Madd_tmp_vs_addsub0000_lut(0)
    );
  sinus0_Mmux_mux_varindex00011221 : X_LUT5
    generic map(
      LOC => "SLICE_X59Y90",
      INIT => X"00003333"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_I1(8),
      ADR4 => sinus0_Mmux_mux_varindex0001120,
      ADR3 => '1',
      O => sinus0_Madd_mux_addsub0000_lut(0)
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_7_sinus0_Madd_tmp_vs_addsub0000_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(7),
      O => sinus0_tmp_vs_addsub0000_7_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_7_sinus0_Madd_tmp_vs_addsub0000_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(6),
      O => sinus0_tmp_vs_addsub0000_6_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_7_sinus0_Madd_tmp_vs_addsub0000_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(5),
      O => sinus0_tmp_vs_addsub0000_5_0
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_7_sinus0_Madd_tmp_vs_addsub0000_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(4),
      O => sinus0_tmp_vs_addsub0000_4_0
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y91",
      INIT => X"0F1F0F0FF0E0F0F0"
    )
    port map (
      ADR2 => sinus0_signe_dtmf2_5547,
      ADR0 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR3 => sinus0_mux2_varindex0000_1_Q,
      ADR1 => N318,
      ADR4 => sinus0_N60,
      ADR5 => sinus0_mux_mux0001(6),
      O => sinus0_Madd_tmp_vs_addsub0000_lut(7)
    );
  sinus0_Madd_tmp_vs_addsub0000_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X59Y91"
    )
    port map (
      CI => sinus0_Madd_tmp_vs_addsub0000_cy_3_Q_5556,
      CYINIT => '0',
      CO(3) => sinus0_Madd_tmp_vs_addsub0000_cy_7_Q_5576,
      CO(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Madd_tmp_vs_addsub0000_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_0_Q,
      O(3) => sinus0_tmp_vs_addsub0000(7),
      O(2) => sinus0_tmp_vs_addsub0000(6),
      O(1) => sinus0_tmp_vs_addsub0000(5),
      O(0) => sinus0_tmp_vs_addsub0000(4),
      S(3) => sinus0_Madd_tmp_vs_addsub0000_lut(7),
      S(2) => sinus0_Madd_tmp_vs_addsub0000_lut(6),
      S(1) => sinus0_Madd_tmp_vs_addsub0000_lut(5),
      S(0) => sinus0_Madd_tmp_vs_addsub0000_lut(4)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y91",
      INIT => X"0F1F0F0FF0E0F0F0"
    )
    port map (
      ADR2 => sinus0_signe_dtmf2_5547,
      ADR0 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR3 => sinus0_mux2_varindex0000_1_Q,
      ADR1 => N318,
      ADR4 => sinus0_N60,
      ADR5 => sinus0_mux_mux0001(6),
      O => sinus0_Madd_tmp_vs_addsub0000_lut(6)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y91",
      INIT => X"C3CC33CC3C33CC33"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_signe_dtmf2_5547,
      ADR1 => N122,
      ADR2 => sinus0_N73,
      ADR4 => sinus0_N547,
      ADR5 => sinus0_mux_mux0001(5),
      O => sinus0_Madd_tmp_vs_addsub0000_lut(5)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y91",
      INIT => X"991966E6BB3B44C4"
    )
    port map (
      ADR0 => sinus0_signe_dtmf2_5547,
      ADR1 => sinus0_mux2_varindex0000_4_Q,
      ADR2 => sinus0_N73,
      ADR3 => sinus0_N99,
      ADR4 => sinus0_mux_mux0001(4),
      ADR5 => sinus0_mux2_mux0000_4_60_5565,
      O => sinus0_Madd_tmp_vs_addsub0000_lut(4)
    );
  sinus0_I_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_3_CLK,
      I => sinus0_Mcount_I4,
      O => sinus0_I(3),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"CC0000CCCC0000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(3),
      ADR4 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(3)
    );
  sinus0_Mcount_I_mand_2 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(3),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand3
    );
  sinus0_I_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_2_CLK,
      I => sinus0_Mcount_I3_1111,
      O => sinus0_I(2),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y116"
    )
    port map (
      CI => '0',
      CYINIT => sinus0_Mcount_I,
      CO(3) => sinus0_Mcount_I_cy_3_Q_5584,
      CO(2) => NLW_sinus0_Mcount_I_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I_cy_3_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I_mand3,
      DI(2) => sinus0_Mcount_I_mand2,
      DI(1) => sinus0_Mcount_I_mand1,
      DI(0) => sinus0_Mcount_I_mand_1129,
      O(3) => sinus0_Mcount_I4,
      O(2) => sinus0_Mcount_I3_1111,
      O(1) => sinus0_Mcount_I2,
      O(0) => sinus0_Mcount_I1,
      S(3) => sinus0_Mcount_I_lut(3),
      S(2) => sinus0_Mcount_I_lut(2),
      S(1) => sinus0_Mcount_I_lut(1),
      S(0) => sinus0_Mcount_I_lut(0)
    );
  sinus0_Mcount_I_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"8844884488448844"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(2),
      ADR0 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(2)
    );
  sinus0_Mcount_I_mand_1 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(2),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand2
    );
  sinus0_I_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_1_CLK,
      I => sinus0_Mcount_I2,
      O => sinus0_I(1),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"F00F0000F00F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(1),
      ADR2 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(1)
    );
  sinus0_Mcount_I_mand_0 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(1),
      ADR2 => '1',
      O => sinus0_Mcount_I_mand1
    );
  sinus0_I_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_0_CLK,
      I => sinus0_Mcount_I1,
      O => sinus0_I(0),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"50A050A050A050A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(0),
      ADR0 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(0)
    );
  sinus0_Mcount_I_mand : X_LUT5
    generic map(
      LOC => "SLICE_X55Y116",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(0),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand_1129
    );
  sinus0_I_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_7_CLK,
      I => sinus0_Mcount_I8,
      O => sinus0_I(7),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC0000CCCC0000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(7),
      ADR4 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(7)
    );
  sinus0_Mcount_I_mand_6 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(7),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand7
    );
  sinus0_I_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_6_CLK,
      I => sinus0_Mcount_I7,
      O => sinus0_I(6),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y117"
    )
    port map (
      CI => sinus0_Mcount_I_cy_3_Q_5584,
      CYINIT => '0',
      CO(3) => sinus0_Mcount_I_cy_7_Q_5585,
      CO(2) => NLW_sinus0_Mcount_I_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I_cy_7_CO_0_UNCONNECTED,
      DI(3) => sinus0_Mcount_I_mand7,
      DI(2) => sinus0_Mcount_I_mand6,
      DI(1) => sinus0_Mcount_I_mand5,
      DI(0) => sinus0_Mcount_I_mand4,
      O(3) => sinus0_Mcount_I8,
      O(2) => sinus0_Mcount_I7,
      O(1) => sinus0_Mcount_I6,
      O(0) => sinus0_Mcount_I5,
      S(3) => sinus0_Mcount_I_lut(7),
      S(2) => sinus0_Mcount_I_lut(6),
      S(1) => sinus0_Mcount_I_lut(5),
      S(0) => sinus0_Mcount_I_lut(4)
    );
  sinus0_Mcount_I_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC0000CCCC0000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(6),
      ADR4 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(6)
    );
  sinus0_Mcount_I_mand_5 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(6),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand6
    );
  sinus0_I_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_5_CLK,
      I => sinus0_Mcount_I6,
      O => sinus0_I(5),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"8844884488448844"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(5),
      ADR0 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(5)
    );
  sinus0_Mcount_I_mand_4 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(5),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand5
    );
  sinus0_I_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_4_CLK,
      I => sinus0_Mcount_I5,
      O => sinus0_I(4),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"8844884488448844"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(4),
      ADR0 => sinus0_C1_ask,
      ADR5 => '1',
      O => sinus0_Mcount_I_lut(4)
    );
  sinus0_Mcount_I_mand_3 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y117",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_C6_ask_inv_0,
      ADR3 => sinus0_I(4),
      ADR4 => '1',
      O => sinus0_Mcount_I_mand4
    );
  sinus0_Mcount_I_xor_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y118"
    )
    port map (
      CI => sinus0_Mcount_I_cy_7_Q_5585,
      CYINIT => '0',
      CO(3) => NLW_sinus0_Mcount_I_xor_8_CO_3_UNCONNECTED,
      CO(2) => NLW_sinus0_Mcount_I_xor_8_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I_xor_8_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I_xor_8_CO_0_UNCONNECTED,
      DI(3) => NLW_sinus0_Mcount_I_xor_8_DI_3_UNCONNECTED,
      DI(2) => NLW_sinus0_Mcount_I_xor_8_DI_2_UNCONNECTED,
      DI(1) => NLW_sinus0_Mcount_I_xor_8_DI_1_UNCONNECTED,
      DI(0) => NLW_sinus0_Mcount_I_xor_8_DI_0_UNCONNECTED,
      O(3) => NLW_sinus0_Mcount_I_xor_8_O_3_UNCONNECTED,
      O(2) => NLW_sinus0_Mcount_I_xor_8_O_2_UNCONNECTED,
      O(1) => NLW_sinus0_Mcount_I_xor_8_O_1_UNCONNECTED,
      O(0) => sinus0_Mcount_I9,
      S(3) => NLW_sinus0_Mcount_I_xor_8_S_3_UNCONNECTED,
      S(2) => NLW_sinus0_Mcount_I_xor_8_S_2_UNCONNECTED,
      S(1) => NLW_sinus0_Mcount_I_xor_8_S_1_UNCONNECTED,
      S(0) => sinus0_Mcount_I_lut(8)
    );
  sinus0_I_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y118",
      INIT => '0'
    )
    port map (
      CE => sinus0_I_not0001,
      CLK => NlwBufferSignal_sinus0_I_8_CLK,
      I => sinus0_Mcount_I9,
      O => sinus0_I(8),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y118",
      INIT => X"FF00000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I(8),
      ADR4 => sinus0_C6_ask_inv_0,
      ADR5 => sinus0_C1_ask,
      O => sinus0_Mcount_I_lut(8)
    );
  h_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y119",
      PATHPULSE => 396 ps
    )
    port map (
      I => h,
      O => h_IBUF
    );
  m_a_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y173",
      PATHPULSE => 396 ps
    )
    port map (
      I => m_a_IBUF_6149,
      O => m_a_IBUF_5289
    );
  m_a_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y173",
      PATHPULSE => 396 ps
    )
    port map (
      I => m_a,
      O => m_a_IBUF_6149
    );
  dtr_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y172",
      PATHPULSE => 396 ps
    )
    port map (
      I => dtr,
      O => dtr_IBUF_6152
    );
  rst_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y169",
      PATHPULSE => 396 ps
    )
    port map (
      I => rst_IBUF_6155,
      O => rst_IBUF_5295
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y169",
      PATHPULSE => 396 ps
    )
    port map (
      I => rst,
      O => rst_IBUF_6155
    );
  rts_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y171",
      PATHPULSE => 396 ps
    )
    port map (
      I => rts_IBUF_6158,
      O => rts_IBUF_5293
    );
  rts_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y171",
      PATHPULSE => 396 ps
    )
    port map (
      I => rts,
      O => rts_IBUF_6158
    );
  txd_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y170",
      PATHPULSE => 396 ps
    )
    port map (
      I => txd,
      O => txd_IBUF_6161
    );
  tb_0_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y118",
      PATHPULSE => 396 ps
    )
    port map (
      I => tb_0_IBUF_6164,
      O => tb_0_IBUF_5346
    );
  tb_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y118",
      PATHPULSE => 396 ps
    )
    port map (
      I => tb(0),
      O => tb_0_IBUF_6164
    );
  tb_1_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y119",
      PATHPULSE => 396 ps
    )
    port map (
      I => tb_1_IBUF_6167,
      O => tb_1_IBUF_5298
    );
  tb_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y119",
      PATHPULSE => 396 ps
    )
    port map (
      I => tb(1),
      O => tb_1_IBUF_6167
    );
  no_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y182",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(0),
      O => no_0_IBUF_6170
    );
  no_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y177",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(1),
      O => no_1_IBUF_6173
    );
  no_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y196",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(2),
      O => no_2_IBUF_6176
    );
  no_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y192",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(3),
      O => no_3_IBUF_6179
    );
  no_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y185",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(4),
      O => no_4_IBUF_6182
    );
  no_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y174",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(5),
      O => no_5_IBUF_6185
    );
  no_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y198",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(6),
      O => no_6_IBUF_6188
    );
  no_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y193",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(7),
      O => no_7_IBUF_6191
    );
  no_8_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y181",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(8),
      O => no_8_IBUF_6194
    );
  no_9_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y175",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(9),
      O => no_9_IBUF_6197
    );
  vs_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y189"
    )
    port map (
      I => NlwBufferSignal_vs_0_OBUF_I,
      O => vs(0)
    );
  vs_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y190"
    )
    port map (
      I => NlwBufferSignal_vs_1_OBUF_I,
      O => vs(1)
    );
  vs_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y183"
    )
    port map (
      I => NlwBufferSignal_vs_2_OBUF_I,
      O => vs(2)
    );
  vs_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y188"
    )
    port map (
      I => NlwBufferSignal_vs_3_OBUF_I,
      O => vs(3)
    );
  vs_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y184"
    )
    port map (
      I => NlwBufferSignal_vs_4_OBUF_I,
      O => vs(4)
    );
  vs_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y187"
    )
    port map (
      I => NlwBufferSignal_vs_5_OBUF_I,
      O => vs(5)
    );
  vs_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y178"
    )
    port map (
      I => NlwBufferSignal_vs_6_OBUF_I,
      O => vs(6)
    );
  vs_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y186"
    )
    port map (
      I => NlwBufferSignal_vs_7_OBUF_I,
      O => vs(7)
    );
  vs_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y191"
    )
    port map (
      I => NlwBufferSignal_vs_8_OBUF_I,
      O => vs(8)
    );
  vs_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y179"
    )
    port map (
      I => NlwBufferSignal_vs_9_OBUF_I,
      O => vs(9)
    );
  no_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y197",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(10),
      O => no_10_IBUF_6220
    );
  no_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y195",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(11),
      O => no_11_IBUF_6223
    );
  no_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y180",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(12),
      O => no_12_IBUF_6226
    );
  no_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y176",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(13),
      O => no_13_IBUF_6229
    );
  no_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y199",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(14),
      O => no_14_IBUF_6232
    );
  no_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y194",
      PATHPULSE => 396 ps
    )
    port map (
      I => no(15),
      O => no_15_IBUF_6235
    );
  sinus0_I2_4_1 : X_FF
    generic map(
      LOC => "SLICE_X42Y83",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_4_1_CLK,
      I => NlwBufferSignal_sinus0_I2_4_1_IN,
      O => sinus0_I2_4_1_5451,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex00003501142 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y84",
      INIT => X"0300030003000300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(1),
      O => sinus0_N298
    );
  sinus0_Mmux_mux2_varindex0000429379_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y84",
      INIT => X"0000000800000000"
    )
    port map (
      ADR1 => sinus0_I2(8),
      ADR3 => sinus0_I2(6),
      ADR2 => sinus0_I2(5),
      ADR4 => sinus0_I2(4),
      ADR0 => sinus0_N220,
      ADR5 => sinus0_N298,
      O => sinus0_Mmux_mux2_varindex000015418
    );
  sinus0_mux2_mux0000_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y84",
      INIT => X"0F0F0F0FFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => sinus0_I2_3_1_5449,
      ADR5 => sinus0_I2_4_1_5451,
      O => sinus0_N40
    );
  sinus0_mux2_mux0000_2_211 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y84",
      INIT => X"FF00FF00FE00FF00"
    )
    port map (
      ADR2 => sinus0_I2(6),
      ADR3 => sinus0_I2(8),
      ADR0 => sinus0_I2(5),
      ADR1 => ctrlr0_freq(1),
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_N40,
      O => sinus0_N513
    );
  sinus0_Mmux_mux2_varindex00003501222 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y82",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(3),
      O => sinus0_N182
    );
  sinus0_Mmux_mux2_varindex0000154800_sinus0_Mmux_mux2_varindex0000154800_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000154800_1285,
      O => sinus0_Mmux_mux2_varindex0000154800_0
    );
  sinus0_Mmux_mux2_varindex0000154800 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y83"
    )
    port map (
      IA => N482,
      IB => N483,
      O => sinus0_Mmux_mux2_varindex0000154800_1285,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex0000154800_F : X_LUT6
    generic map(
      LOC => "SLICE_X43Y83",
      INIT => X"77FF44FFFFFFCFFF"
    )
    port map (
      ADR0 => ctrlr0_freq_0_1_5344,
      ADR1 => sinus0_I2_4_1_5451,
      ADR5 => ctrlr0_freq(1),
      ADR4 => sinus0_I2_7_2_5632,
      ADR3 => sinus0_I2(1),
      ADR2 => sinus0_I2(0),
      O => N482
    );
  sinus0_Mmux_mux2_varindex0000154800_G : X_LUT6
    generic map(
      LOC => "SLICE_X43Y83",
      INIT => X"0FFFFFFF0F3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2_1_1_5444,
      ADR1 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      ADR4 => ctrlr0_freq(1),
      O => N483
    );
  sinus0_Mmux_mux2_varindex0000257131 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y85",
      INIT => X"0000FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2(1),
      ADR5 => sinus0_I2(0),
      ADR4 => ctrlr0_freq(1),
      O => sinus0_N234
    );
  sinus0_N240_sinus0_N240_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000154997_1304,
      O => sinus0_Mmux_mux2_varindex0000154997_0
    );
  sinus0_Mmux_mux2_varindex0000154997 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y82"
    )
    port map (
      IA => N480,
      IB => N481,
      O => sinus0_Mmux_mux2_varindex0000154997_1304,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex0000154997_F : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"FFFFFFFFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(2),
      ADR5 => sinus0_I2(7),
      O => N480
    );
  sinus0_Mmux_mux2_varindex0000154997_G : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"00000057FF575F5F"
    )
    port map (
      ADR3 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(0),
      ADR2 => sinus0_I2(1),
      ADR0 => sinus0_I2(2),
      ADR5 => sinus0_I2(7),
      O => N481
    );
  sinus0_Mmux_mux2_varindex000013851 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"CCC0000000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(0),
      ADR4 => sinus0_I2(2),
      ADR1 => sinus0_I2(3),
      ADR2 => sinus0_I2(1),
      O => sinus0_N240
    );
  sinus0_Mmux_mux2_varindex00001391231 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(7),
      O => sinus0_N271
    );
  sinus0_Mmux_mux2_varindex00001541053 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"FFFFFFDFFFFFFFFF"
    )
    port map (
      ADR1 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(1),
      ADR3 => sinus0_I2(3),
      ADR0 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(2),
      ADR4 => sinus0_I2(7),
      O => sinus0_Mmux_mux2_varindex00001541053_5960
    );
  sinus0_I2_1_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_1_1_CLK,
      I => NlwBufferSignal_sinus0_I2_1_1_IN,
      O => sinus0_I2_1_1_5444,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex00001541068 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"0FFF07F700000000"
    )
    port map (
      ADR2 => sinus0_I2(7),
      ADR1 => sinus0_I2(4),
      ADR0 => sinus0_N576,
      ADR4 => sinus0_N250,
      ADR3 => sinus0_N240,
      ADR5 => sinus0_Mmux_mux2_varindex00001541053_5960,
      O => sinus0_Mmux_mux2_varindex00001541068_5730
    );
  sinus0_Mmux_mux2_varindex0000154674 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"FDFF4454E4E4E6F4"
    )
    port map (
      ADR0 => sinus0_I2_4_1_5451,
      ADR1 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      ADR2 => sinus0_I2(7),
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex0000154674_5959
    );
  sinus0_Mmux_mux2_varindex00001541126_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"45FF05FFCFFF0FFF"
    )
    port map (
      ADR2 => sinus0_I2(2),
      ADR5 => sinus0_I2(4),
      ADR3 => ctrlr0_freq(1),
      ADR0 => sinus0_N271,
      ADR1 => sinus0_Mmux_mux2_varindex0000154610_5925,
      ADR4 => sinus0_Mmux_mux2_varindex0000154674_5959,
      O => N110
    );
  sinus0_Mmux_mux2_varindex000039579_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"FFFFFCF0FFFFF8F0"
    )
    port map (
      ADR3 => sinus0_I2_3_1_5449,
      ADR1 => sinus0_I2_2_1_5446,
      ADR0 => sinus0_I2_1_1_5444,
      ADR2 => sinus0_I2_5_1_5453,
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(0),
      O => N393
    );
  sinus0_I2_3_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_3_1_CLK,
      I => NlwBufferSignal_sinus0_I2_3_1_IN,
      O => sinus0_I2_3_1_5449,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex0000370151_SW0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"A8A8FCCC20A820CC"
    )
    port map (
      ADR0 => sinus0_I2_2_1_5446,
      ADR1 => sinus0_I2_7_2_5632,
      ADR5 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(1),
      O => N368
    );
  sinus0_I2_2_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_2_1_CLK,
      I => NlwBufferSignal_sinus0_I2_2_1_IN,
      O => sinus0_I2_2_1_5446,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_5_1_sinus0_I2_5_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000395216_1385,
      O => sinus0_Mmux_mux2_varindex0000395216_0
    );
  sinus0_Mmux_mux2_varindex0000395216 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y85"
    )
    port map (
      IA => N566,
      IB => N567,
      O => sinus0_Mmux_mux2_varindex0000395216_1385,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex0000138231 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y85",
      INIT => X"FFFF0000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_freq_1_1_5343,
      ADR4 => sinus0_I2_4_1_5451,
      O => sinus0_N197
    );
  sinus0_I2_5_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y85",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_5_1_CLK,
      I => NlwBufferSignal_sinus0_I2_5_1_IN,
      O => sinus0_I2_5_1_5453,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex0000395148 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y85",
      INIT => X"0000000080000000"
    )
    port map (
      ADR1 => sinus0_I2_0_1_5438,
      ADR3 => sinus0_I2(2),
      ADR0 => sinus0_I2_1_1_5444,
      ADR4 => sinus0_I2(3),
      ADR2 => ctrlr0_freq(0),
      ADR5 => sinus0_N197,
      O => sinus0_Mmux_mux2_varindex0000395148_5924
    );
  sinus0_Mmux_mux2_varindex0000395216_F : X_LUT6
    generic map(
      LOC => "SLICE_X44Y85",
      INIT => X"0000000100000101"
    )
    port map (
      ADR3 => sinus0_I2_0_1_5438,
      ADR2 => ctrlr0_freq_1_1_5343,
      ADR0 => sinus0_I2_4_1_5451,
      ADR1 => sinus0_I2(2),
      ADR4 => sinus0_I2(3),
      ADR5 => sinus0_I2(1),
      O => N566
    );
  sinus0_Mmux_mux2_varindex0000395216_G : X_LUT6
    generic map(
      LOC => "SLICE_X44Y85",
      INIT => X"8000800080000000"
    )
    port map (
      ADR3 => sinus0_I2_3_1_5449,
      ADR2 => ctrlr0_freq_0_1_5344,
      ADR0 => sinus0_I2_4_1_5451,
      ADR1 => sinus0_I2(2),
      ADR4 => sinus0_I2(0),
      ADR5 => sinus0_I2(1),
      O => N567
    );
  sinus0_Mmux_mux2_varindex000039579_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y86",
      INIT => X"FFFF8080FFFFBFBF"
    )
    port map (
      ADR3 => '1',
      ADR4 => ctrlr0_freq_0_1_5344,
      ADR1 => sinus0_I2_1_1_5444,
      ADR5 => sinus0_I2_5_1_5453,
      ADR2 => sinus0_I2(2),
      ADR0 => sinus0_I2(3),
      O => N392
    );
  sinus0_Mmux_mux2_varindex000035073 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y86",
      INIT => X"CCCCCCCCCCCC8000"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR2 => sinus0_I2(7),
      ADR0 => ctrlr0_freq(1),
      ADR3 => sinus0_N181,
      ADR4 => sinus0_Mmux_mux2_varindex000035020_5954,
      ADR5 => sinus0_Mmux_mux2_varindex000035052_5962,
      O => sinus0_Mmux_mux2_varindex000035073_5619
    );
  sinus0_Mmux_mux2_varindex000035052 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y86",
      INIT => X"03030B0300000A00"
    )
    port map (
      ADR2 => sinus0_I2(7),
      ADR0 => ctrlr0_freq(0),
      ADR4 => sinus0_N263,
      ADR1 => sinus0_N127,
      ADR3 => sinus0_N234,
      ADR5 => sinus0_N576,
      O => sinus0_Mmux_mux2_varindex000035052_5962
    );
  sinus0_N169_sinus0_N169_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N43,
      O => N43_0
    );
  sinus0_Mmux_mux2_varindex000013841 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y87",
      INIT => X"FCFCFCFCFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_freq_1_1_5343,
      ADR1 => ctrlr0_freq_0_1_5344,
      ADR5 => '1',
      O => sinus0_N169
    );
  sinus0_eqmax_dtmf292_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X44Y87",
      INIT => X"FDDFFBFF"
    )
    port map (
      ADR0 => sinus0_I2(0),
      ADR3 => sinus0_I2(6),
      ADR4 => sinus0_I2(5),
      ADR2 => ctrlr0_freq_1_1_5343,
      ADR1 => ctrlr0_freq_0_1_5344,
      O => N43
    );
  sinus0_Mcount_I21 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y79",
      INIT => X"00FF00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => sinus0_C6_dtmf2,
      ADR5 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR1 => sinus0_sens_dtmf2_5439,
      O => sinus0_Mcount_I21_5443
    );
  N106_N106_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000154869_1466,
      O => sinus0_Mmux_mux2_varindex0000154869_0
    );
  sinus0_Mmux_mux2_varindex0000154869 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y82"
    )
    port map (
      IA => N472,
      IB => N473,
      O => sinus0_Mmux_mux2_varindex0000154869_1466,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex00001541606_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y82",
      INIT => X"0A0050500B03D3D0"
    )
    port map (
      ADR5 => sinus0_I2_7_2_5632,
      ADR3 => sinus0_I2(0),
      ADR2 => ctrlr0_freq(1),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(1),
      ADR0 => sinus0_I2(3),
      O => N106
    );
  sinus0_Mmux_mux2_varindex0000154869_F : X_LUT6
    generic map(
      LOC => "SLICE_X45Y82",
      INIT => X"D9BBD9FBFBB2FBBB"
    )
    port map (
      ADR1 => sinus0_I2_4_1_5451,
      ADR2 => sinus0_I2(1),
      ADR4 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      ADR0 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(0),
      O => N472
    );
  sinus0_Mmux_mux2_varindex0000154869_G : X_LUT6
    generic map(
      LOC => "SLICE_X45Y82",
      INIT => X"FFFFFBF3FFFFFBB3"
    )
    port map (
      ADR4 => sinus0_I2(3),
      ADR2 => sinus0_I2(1),
      ADR5 => ctrlr0_freq(0),
      ADR0 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(0),
      ADR1 => sinus0_I2(4),
      O => N473
    );
  sinus0_C6_dtmf2234 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => X"FFFFFFFFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => sinus0_I2_1_1_5444,
      ADR5 => sinus0_I2(2),
      O => sinus0_C6_dtmf2234_5919
    );
  sinus0_Mmux_mux2_varindex0000350826 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => X"D9110000D8500000"
    )
    port map (
      ADR4 => sinus0_I2(5),
      ADR1 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(7),
      ADR2 => sinus0_I2(3),
      ADR0 => ctrlr0_freq(0),
      ADR5 => sinus0_C6_dtmf2234_5919,
      O => sinus0_Mmux_mux2_varindex0000350826_5847
    );
  sinus0_Mmux_mux2_varindex00001541126_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => X"EEAECC8CCC8CCC8C"
    )
    port map (
      ADR1 => sinus0_I2(2),
      ADR3 => sinus0_I2(1),
      ADR2 => sinus0_I2(4),
      ADR0 => N442,
      ADR4 => sinus0_Mmux_mux2_varindex0000154800_0,
      ADR5 => sinus0_Mmux_mux2_varindex0000154869_0,
      O => N141
    );
  ctrlr0_freq_0_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_0_1_CLK,
      I => NlwBufferSignal_ctrlr0_freq_0_1_IN,
      O => ctrlr0_freq_0_1_5344,
      SET => GND,
      RST => GND
    );
  sinus0_Mmux_mux2_varindex00001541178_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => X"0F5FFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(4),
      ADR3 => sinus0_Mmux_mux2_varindex0000154997_0,
      ADR5 => N110,
      ADR2 => sinus0_Mmux_mux2_varindex00001541068_5730,
      ADR4 => N141,
      O => N462
    );
  sinus0_Mmux_mux2_varindex0000395254 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => X"FF00C000FF00EA00"
    )
    port map (
      ADR1 => sinus0_I2_7_2_5632,
      ADR3 => ctrlr0_freq(1),
      ADR5 => sinus0_N40,
      ADR2 => sinus0_N250,
      ADR0 => sinus0_N181,
      ADR4 => sinus0_Mmux_mux2_varindex0000395228_5964,
      O => sinus0_Mmux_mux2_varindex0000395254_5944
    );
  sinus0_Mmux_mux2_varindex0000395228 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => X"FEFEF000F0F0F000"
    )
    port map (
      ADR2 => sinus0_I2_7_1_5457,
      ADR4 => ctrlr0_freq_0_1_5344,
      ADR1 => sinus0_I2_2_1_5446,
      ADR5 => sinus0_I2_4_1_5451,
      ADR0 => sinus0_I2_1_1_5444,
      ADR3 => sinus0_I2(3),
      O => sinus0_Mmux_mux2_varindex0000395228_5964
    );
  sinus0_I2_7_2 : X_FF
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_7_2_CLK,
      I => NlwBufferSignal_sinus0_I2_7_2_IN,
      O => sinus0_I2_7_2_5632,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex0000422121 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => X"FF00FF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2_2_1_5446,
      ADR4 => sinus0_I2_0_1_5438,
      ADR5 => sinus0_I2_1_1_5444,
      O => sinus0_N250
    );
  sinus0_I2_7_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_7_1_CLK,
      I => NlwBufferSignal_sinus0_I2_7_1_IN,
      O => sinus0_I2_7_1_5457,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex000027611 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => X"0000FFFF0003FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I2(5),
      ADR5 => sinus0_I2(4),
      ADR1 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      ADR2 => sinus0_N250,
      O => sinus0_N19_5926
    );
  sinus0_Mmux_mux2_varindex0000395297 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y85",
      INIT => X"FFFFFEFEFFFFFE32"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR2 => sinus0_Mmux_mux2_varindex0000395148_5924,
      ADR3 => sinus0_Mmux_mux2_varindex0000395216_0,
      ADR5 => sinus0_Mmux_mux2_varindex0000395254_5944,
      ADR4 => sinus0_Mmux_mux2_varindex000039579_5965,
      ADR0 => sinus0_Mmux_mux2_varindex0000395136_0,
      O => sinus0_Mmux_mux2_varindex0000394
    );
  sinus0_Mmux_mux2_varindex000039579 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y85",
      INIT => X"8000801180228033"
    )
    port map (
      ADR0 => sinus0_I2_7_2_5632,
      ADR1 => sinus0_I2(4),
      ADR3 => ctrlr0_freq(1),
      ADR2 => N394,
      ADR4 => N392,
      ADR5 => N393,
      O => sinus0_Mmux_mux2_varindex000039579_5965
    );
  sinus0_Mmux_mux2_varindex000034961 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y85",
      INIT => X"FFFFF0F0FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => sinus0_I2_2_1_5446,
      ADR3 => sinus0_I2_0_1_5438,
      ADR5 => sinus0_I2_1_1_5444,
      ADR4 => ctrlr0_freq(0),
      O => sinus0_N181
    );
  sinus0_Mmux_mux2_varindex000044358_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y85",
      INIT => X"A8008800A0000000"
    )
    port map (
      ADR0 => sinus0_I2(6),
      ADR3 => sinus0_I2(5),
      ADR1 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      ADR2 => sinus0_C6_dtmf2234_5919,
      ADR5 => sinus0_N181,
      O => N440
    );
  sinus0_Mmux_mux2_varindex000035020 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y86",
      INIT => X"0000000000444404"
    )
    port map (
      ADR1 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR2 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      ADR3 => sinus0_N250,
      O => sinus0_Mmux_mux2_varindex000035020_5954
    );
  sinus0_Mmux_mux2_varindex0000370151_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y86",
      INIT => X"00005577FF005777"
    )
    port map (
      ADR0 => sinus0_I2_3_1_5449,
      ADR4 => sinus0_I2_7_2_5632,
      ADR2 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      ADR5 => ctrlr0_freq(0),
      ADR3 => ctrlr0_freq(1),
      O => N367
    );
  sinus0_Mmux_mux2_varindex000039579_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y86",
      INIT => X"FAFAFAFAFAFAFAFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_freq_0_1_5344,
      ADR0 => sinus0_I2_5_1_5453,
      O => N394
    );
  sinus0_Mmux_mux2_varindex00003501252 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y86",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I2(2),
      ADR5 => sinus0_I2(3),
      O => sinus0_N263
    );
  sinus0_Mmux_mux2_varindex00003501510 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y87",
      INIT => X"FFFF00FFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      O => sinus0_N239
    );
  sinus0_I2_not0001 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"FFDDFFFFFEDDFEFF"
    )
    port map (
      ADR2 => sinus0_N0,
      ADR0 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR5 => N34,
      ADR1 => sinus0_C6_dtmf2,
      O => sinus0_I2_not0001_5455
    );
  sinus0_Mmux_mux2_varindex000042929 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"0C083F3B0CC83FFB"
    )
    port map (
      ADR1 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(3),
      ADR4 => sinus0_I2(7),
      ADR5 => sinus0_C6_dtmf2234_5919,
      O => sinus0_Mmux_mux2_varindex000042929_5936
    );
  sinus0_Mmux_mux2_varindex000037051 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y82",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I2(3),
      ADR5 => sinus0_I2(4),
      O => sinus0_N247
    );
  sinus0_Mmux_mux2_varindex00002771045 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"FFFFFFFFFFFFFC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      ADR3 => sinus0_N269,
      ADR5 => sinus0_N231,
      ADR4 => sinus0_Mmux_mux2_varindex00002771033_5966,
      O => sinus0_Mmux_mux2_varindex00002771045_5854
    );
  sinus0_Mmux_mux2_varindex00002771033 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"0000FFFF00000040"
    )
    port map (
      ADR3 => sinus0_I2(2),
      ADR2 => sinus0_I2(7),
      ADR4 => sinus0_I2(4),
      ADR1 => sinus0_I2(3),
      ADR0 => ctrlr0_freq(1),
      ADR5 => sinus0_N240,
      O => sinus0_Mmux_mux2_varindex00002771033_5966
    );
  sinus0_Mmux_mux2_varindex0000154610 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"FFFFFFFFF5F5FFF5"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(1),
      ADR4 => sinus0_I2(7),
      ADR2 => sinus0_I2(4),
      O => sinus0_Mmux_mux2_varindex0000154610_5925
    );
  sinus0_Mmux_mux2_varindex00001541126_SW1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"FFFFFFFFFCFCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(7),
      ADR2 => ctrlr0_freq(0),
      O => N442
    );
  sinus0_Mmux_mux2_varindex000013891 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y84",
      INIT => X"000000000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(3),
      O => sinus0_N576
    );
  sinus0_I2_7 : X_FF
    generic map(
      LOC => "SLICE_X46Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_7_CLK,
      I => NlwBufferSignal_sinus0_I2_7_IN,
      O => sinus0_I2(7),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_5 : X_FF
    generic map(
      LOC => "SLICE_X46Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_5_CLK,
      I => NlwBufferSignal_sinus0_I2_5_IN,
      O => sinus0_I2(5),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_4 : X_FF
    generic map(
      LOC => "SLICE_X46Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_4_CLK,
      I => NlwBufferSignal_sinus0_I2_4_IN,
      O => sinus0_I2(4),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex00002771573 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"02020200020E0204"
    )
    port map (
      ADR3 => sinus0_I2_7_2_5632,
      ADR1 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(3),
      ADR5 => sinus0_I2(0),
      ADR4 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex00002771573_5857
    );
  ctrlr0_freq_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_1_CLK,
      I => NlwBufferSignal_ctrlr0_freq_1_IN,
      O => ctrlr0_freq(1),
      SET => GND,
      RST => GND
    );
  sinus0_Mmux_mux2_varindex000067581 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2_0_1_5438,
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(3),
      O => sinus0_N569
    );
  ctrlr0_freq_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_0_CLK,
      I => NlwBufferSignal_ctrlr0_freq_0_IN,
      O => ctrlr0_freq(0),
      SET => GND,
      RST => GND
    );
  sinus0_Mmux_mux2_varindex00001541891 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"0F0FFFFFAFA3FFF3"
    )
    port map (
      ADR3 => sinus0_I2(1),
      ADR2 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(0),
      ADR5 => ctrlr0_freq(1),
      ADR4 => sinus0_N569,
      O => sinus0_Mmux_mux2_varindex00001541891_5749
    );
  sinus0_Mmux_mux2_varindex0000258111 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I2(1),
      ADR4 => sinus0_I2(2),
      O => sinus0_N127
    );
  sinus0_Mmux_mux2_varindex00002771471_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"1000202000002020"
    )
    port map (
      ADR3 => sinus0_I2(7),
      ADR4 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(3),
      ADR2 => ctrlr0_freq(0),
      ADR5 => sinus0_N127,
      O => N147
    );
  sinus0_Mmux_mux2_varindex00006811 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"FFFFFFFFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => sinus0_I2(0),
      ADR3 => sinus0_I2(1),
      O => sinus0_N0
    );
  sinus0_Mmux_mux2_varindex00002771372 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"0003000200010000"
    )
    port map (
      ADR0 => sinus0_I2(2),
      ADR2 => sinus0_I2(7),
      ADR1 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(0),
      ADR5 => ctrlr0_freq(1),
      ADR4 => sinus0_N0,
      O => sinus0_Mmux_mux2_varindex00002771372_5860
    );
  sinus0_Mmux_mux2_varindex0000350400_sinus0_Mmux_mux2_varindex0000350400_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N424,
      O => N424_0
    );
  sinus0_Mmux_mux2_varindex0000350637_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y87"
    )
    port map (
      IA => N496,
      IB => N497,
      O => N424,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex0000350400 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"00FA000044004400"
    )
    port map (
      ADR5 => sinus0_I2(3),
      ADR0 => sinus0_I2(2),
      ADR3 => sinus0_I2(7),
      ADR1 => ctrlr0_freq(0),
      ADR4 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(1),
      O => sinus0_Mmux_mux2_varindex0000350400_5927
    );
  sinus0_Mmux_mux2_varindex0000350637_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"2A00000022000000"
    )
    port map (
      ADR0 => sinus0_I2(2),
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_I2(0),
      ADR2 => ctrlr0_freq(1),
      ADR3 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(5),
      O => N496
    );
  sinus0_Mmux_mux2_varindex0000350637_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"3F033F033F032F02"
    )
    port map (
      ADR1 => ctrlr0_freq_1_1_5343,
      ADR0 => sinus0_I2(2),
      ADR2 => sinus0_I2(5),
      ADR5 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(1),
      O => N497
    );
  sinus0_N221_sinus0_N221_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000154382_1695,
      O => sinus0_Mmux_mux2_varindex0000154382_0
    );
  sinus0_Mmux_mux2_varindex0000154382 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y88"
    )
    port map (
      IA => N488,
      IB => N489,
      O => sinus0_Mmux_mux2_varindex0000154382_1695,
      SEL => ctrlr0_freq(1)
    );
  sinus0_Mmux_mux2_varindex0000154382_F : X_LUT6
    generic map(
      LOC => "SLICE_X46Y88",
      INIT => X"9DFF9DFF1FFF5FFF"
    )
    port map (
      ADR0 => sinus0_I2(3),
      ADR5 => sinus0_I2(0),
      ADR4 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(7),
      ADR2 => sinus0_I2(1),
      O => N488
    );
  sinus0_Mmux_mux2_varindex0000154382_G : X_LUT6
    generic map(
      LOC => "SLICE_X46Y88",
      INIT => X"AE00AEEEFFFFFFFF"
    )
    port map (
      ADR2 => sinus0_I2(1),
      ADR3 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_N221,
      ADR5 => sinus0_I2(7),
      ADR0 => sinus0_I2(3),
      O => N489
    );
  sinus0_Mmux_mux2_varindex00003501242 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y88",
      INIT => X"F000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ctrlr0_freq_0_1_5344,
      ADR2 => sinus0_I2(3),
      ADR5 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      O => sinus0_N221
    );
  sinus0_I2_not0001_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y78",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => sinus0_I2(2),
      ADR2 => sinus0_I2(3),
      ADR1 => sinus0_I2(4),
      ADR3 => sinus0_I2(5),
      ADR5 => sinus0_I2(6),
      ADR0 => sinus0_I2(7),
      O => N34
    );
  sinus0_C6_dtmf2211 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y80",
      INIT => X"FFFFFFFFFFFAFAFA"
    )
    port map (
      ADR1 => '1',
      ADR5 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(1),
      ADR4 => sinus0_I2(2),
      ADR2 => sinus0_I2(3),
      O => sinus0_C6_dtmf2211_5918
    );
  sinus0_C6_dtmf2262 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y81",
      INIT => X"FFFAFFAA88888888"
    )
    port map (
      ADR0 => sinus0_I2(4),
      ADR5 => sinus0_I2(6),
      ADR3 => sinus0_I2(3),
      ADR4 => sinus0_I2(2),
      ADR2 => sinus0_N0,
      ADR1 => ctrlr0_freq(1),
      O => sinus0_C6_dtmf2262_5967
    );
  sinus0_C6_dtmf2_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y81",
      INIT => X"33373737333F3F3F"
    )
    port map (
      ADR4 => sinus0_C6_dtmf2234_5919,
      ADR0 => ctrlr0_freq(0),
      ADR2 => sinus0_C6_dtmf2229_5968,
      ADR1 => sinus0_I2(8),
      ADR3 => sinus0_N269,
      ADR5 => sinus0_C6_dtmf2262_5967,
      O => sinus0_C6_dtmf2_inv
    );
  sinus0_C6_dtmf2229 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y81",
      INIT => X"FEF8FEF8FAF0FAF0"
    )
    port map (
      ADR4 => '1',
      ADR3 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(6),
      ADR1 => sinus0_I2(5),
      ADR5 => sinus0_C6_dtmf2211_5918,
      ADR2 => sinus0_I2(7),
      O => sinus0_C6_dtmf2229_5968
    );
  sinus0_C6_dtmf2285 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y81",
      INIT => X"FF00EA00FF00C000"
    )
    port map (
      ADR3 => sinus0_I2(8),
      ADR1 => sinus0_N269,
      ADR2 => sinus0_C6_dtmf2234_5919,
      ADR5 => ctrlr0_freq(0),
      ADR0 => sinus0_C6_dtmf2262_5967,
      ADR4 => sinus0_C6_dtmf2229_5968,
      O => sinus0_C6_dtmf2
    );
  sinus0_Mmux_mux2_varindex0000429309_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y82",
      INIT => X"FFFFFEFECCCC8080"
    )
    port map (
      ADR3 => '1',
      ADR5 => sinus0_I2(4),
      ADR2 => sinus0_I2(1),
      ADR0 => sinus0_I2(0),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(2),
      O => N216
    );
  sinus0_Mmux_mux2_varindex0000429309 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y82",
      INIT => X"0000000013003300"
    )
    port map (
      ADR3 => sinus0_I2(7),
      ADR1 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(5),
      ADR0 => sinus0_N247,
      ADR2 => sinus0_N182,
      ADR4 => N216,
      O => sinus0_Mmux_mux2_varindex0000429309_5783
    );
  sinus0_N244_sinus0_N244_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N177,
      O => N177_0
    );
  sinus0_Mmux_mux2_varindex0000350481_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y83"
    )
    port map (
      IA => N494,
      IB => N495,
      O => N177,
      SEL => sinus0_I2(1)
    );
  sinus0_Mmux_mux2_varindex0000350481_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X47Y83",
      INIT => X"FFA0FFA0FFFAFFA8"
    )
    port map (
      ADR0 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(3),
      ADR4 => sinus0_I2(2),
      ADR5 => sinus0_I2(7),
      ADR1 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(1),
      O => N494
    );
  sinus0_Mmux_mux2_varindex0000350481_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X47Y83",
      INIT => X"FFAAFFAAFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(3),
      ADR5 => sinus0_I2(7),
      ADR3 => ctrlr0_freq(1),
      O => N495
    );
  sinus0_Mmux_mux2_varindex000068261 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y83",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2(7),
      ADR5 => sinus0_I2(4),
      ADR4 => sinus0_I2(1),
      O => sinus0_N244
    );
  sinus0_Mmux_mux2_varindex000025731 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y83",
      INIT => X"0000C00000000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I2(0),
      ADR4 => sinus0_I2(2),
      ADR1 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(3),
      ADR5 => sinus0_N244,
      O => sinus0_N231
    );
  sinus0_I2_3 : X_FF
    generic map(
      LOC => "SLICE_X47Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_3_CLK,
      I => NlwBufferSignal_sinus0_I2_3_IN,
      O => sinus0_I2(3),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_2 : X_FF
    generic map(
      LOC => "SLICE_X47Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_2_CLK,
      I => NlwBufferSignal_sinus0_I2_2_IN,
      O => sinus0_I2(2),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_1 : X_FF
    generic map(
      LOC => "SLICE_X47Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_1_CLK,
      I => NlwBufferSignal_sinus0_I2_1_IN,
      O => sinus0_I2(1),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_I2_0 : X_FF
    generic map(
      LOC => "SLICE_X47Y84",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_0_CLK,
      I => NlwBufferSignal_sinus0_I2_0_IN,
      O => sinus0_I2(0),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex00003701 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y84",
      INIT => X"EAEAEAE880000000"
    )
    port map (
      ADR0 => sinus0_I2_3_1_5449,
      ADR1 => sinus0_I2(2),
      ADR3 => sinus0_I2(1),
      ADR4 => sinus0_I2(0),
      ADR2 => ctrlr0_freq(0),
      ADR5 => ctrlr0_freq(1),
      O => sinus0_N5
    );
  sinus0_I2_0_1_sinus0_I2_0_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000395136_1821,
      O => sinus0_Mmux_mux2_varindex0000395136_0
    );
  sinus0_Mmux_mux2_varindex0000395136 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y85"
    )
    port map (
      IA => N490,
      IB => N491,
      O => sinus0_Mmux_mux2_varindex0000395136_1821,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex0000395136_F : X_LUT6
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => X"3333333003333330"
    )
    port map (
      ADR0 => '1',
      ADR4 => ctrlr0_freq(0),
      ADR1 => sinus0_I2_7_2_5632,
      ADR5 => sinus0_N220,
      ADR2 => sinus0_I2(4),
      ADR3 => ctrlr0_freq(1),
      O => N490
    );
  sinus0_Mmux_mux2_varindex0000395136_G : X_LUT6
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => X"0505051555555555"
    )
    port map (
      ADR0 => sinus0_I2_7_2_5632,
      ADR2 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      O => N491
    );
  sinus0_I2_0_1 : X_FF
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => '0'
    )
    port map (
      CE => sinus0_I2_not0001_5455,
      CLK => NlwBufferSignal_sinus0_I2_0_1_CLK,
      I => NlwBufferSignal_sinus0_I2_0_1_IN,
      O => sinus0_I2_0_1_5438,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux2_varindex0000350149 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => sinus0_I2_0_1_5438,
      ADR3 => sinus0_I2_2_1_5446,
      ADR5 => sinus0_I2_1_1_5444,
      O => sinus0_N220
    );
  sinus0_Mmux_mux2_varindex0000350880 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y86",
      INIT => X"0A0A0A0AFAFA0AFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => sinus0_I2(2),
      ADR4 => sinus0_I2_5_1_5453,
      ADR5 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(3),
      O => sinus0_Mmux_mux2_varindex0000350880_5970
    );
  sinus0_Mmux_mux2_varindex0000350912 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y86",
      INIT => X"0505040405050405"
    )
    port map (
      ADR3 => sinus0_I2(5),
      ADR0 => sinus0_I2(7),
      ADR2 => ctrlr0_freq(1),
      ADR1 => sinus0_N275,
      ADR5 => sinus0_N0,
      ADR4 => sinus0_Mmux_mux2_varindex0000350880_5970,
      O => sinus0_Mmux_mux2_varindex0000350912_5848
    );
  ctrlr0_freq_1_1_ctrlr0_freq_1_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000350353_1853,
      O => sinus0_Mmux_mux2_varindex0000350353_0
    );
  sinus0_Mmux_mux2_varindex0000350353 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y87"
    )
    port map (
      IA => N560,
      IB => N561,
      O => sinus0_Mmux_mux2_varindex0000350353_1853,
      SEL => sinus0_I2(7)
    );
  ctrlr0_freq_1_1 : X_FF
    generic map(
      LOC => "SLICE_X47Y87",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_1_1_CLK,
      I => NlwBufferSignal_ctrlr0_freq_1_1_IN,
      O => ctrlr0_freq_1_1_5343,
      SET => GND,
      RST => GND
    );
  sinus0_Mmux_mux2_varindex0000350967_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y87",
      INIT => X"CC7FCC7FCCFFCCFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(1),
      ADR3 => ctrlr0_freq_1_1_5343,
      ADR5 => sinus0_I2(0),
      ADR0 => sinus0_I2(3),
      O => N243
    );
  sinus0_Mmux_mux2_varindex0000350967 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y87",
      INIT => X"0101313101333133"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR3 => sinus0_I2(2),
      ADR2 => sinus0_I2(7),
      ADR0 => sinus0_I2(3),
      ADR4 => sinus0_N239,
      ADR5 => N243,
      O => sinus0_Mmux_mux2_varindex0000350967_5774
    );
  sinus0_Mmux_mux2_varindex0000350353_F : X_LUT6
    generic map(
      LOC => "SLICE_X47Y87",
      INIT => X"00CF008F030FCF0F"
    )
    port map (
      ADR5 => sinus0_I2(3),
      ADR1 => sinus0_I2(2),
      ADR2 => ctrlr0_freq(1),
      ADR3 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      O => N560
    );
  sinus0_Mmux_mux2_varindex0000350353_G : X_LUT6
    generic map(
      LOC => "SLICE_X47Y87",
      INIT => X"EECCECCCCCCCCCCC"
    )
    port map (
      ADR1 => ctrlr0_freq_1_1_5343,
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(2),
      ADR2 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      O => N561
    );
  sinus0_Mmux_mux2_varindex0000350194_sinus0_Mmux_mux2_varindex0000350194_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000350194_1881,
      O => sinus0_Mmux_mux2_varindex0000350194_0
    );
  sinus0_Mmux_mux2_varindex0000350194 : X_MUX2
    generic map(
      LOC => "SLICE_X47Y88"
    )
    port map (
      IA => N498,
      IB => N499,
      O => sinus0_Mmux_mux2_varindex0000350194_1881,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex0000350194_F : X_LUT6
    generic map(
      LOC => "SLICE_X47Y88",
      INIT => X"0000000000AA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(2),
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_I2(5),
      O => N498
    );
  sinus0_Mmux_mux2_varindex0000350194_G : X_LUT6
    generic map(
      LOC => "SLICE_X47Y88",
      INIT => X"0000000033333337"
    )
    port map (
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_I2_5_1_5453,
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(2),
      ADR3 => sinus0_I2(0),
      ADR1 => ctrlr0_freq(1),
      O => N499
    );
  ctrlr0_counter2_cmp_ge0000116 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y111",
      INIT => X"EE00EA0000000000"
    )
    port map (
      ADR2 => ctrlr0_dtmf_count_add0001_3_0,
      ADR1 => ctrlr0_dtmf_count_add0001_5_0,
      ADR3 => ctrlr0_dtmf_count_add0001_8_0,
      ADR5 => ctrlr0_dtmf_count_add0001_7_0,
      ADR4 => ctrlr0_dtmf_count_add0001_4_0,
      ADR0 => ctrlr0_dtmf_count_add0001_6_0,
      O => ctrlr0_counter2_cmp_ge0000116_5375
    );
  sinus0_sens_dtmf2 : X_FF
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => '0'
    )
    port map (
      CE => sinus0_C3_dtmf2,
      CLK => NlwBufferSignal_sinus0_sens_dtmf2_CLK,
      I => sinus0_sens_dtmf2_not0001,
      O => sinus0_sens_dtmf2_5439,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_sens_dtmf2_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_sens_dtmf2_5439,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_sens_dtmf2_not0001
    );
  sinus0_Mmux_mux2_varindex0000429117_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"FFC0FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I2(3),
      ADR2 => sinus0_I2(2),
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_I2(0),
      ADR3 => sinus0_I2(4),
      O => N277
    );
  sinus0_Mmux_mux2_varindex000042962 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"C8008800880F88FF"
    )
    port map (
      ADR3 => sinus0_I2(7),
      ADR1 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_N250,
      O => sinus0_Mmux_mux2_varindex000042962_5937
    );
  sinus0_Mmux_mux2_varindex00001541606 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"33F733F7F7F733F7"
    )
    port map (
      ADR3 => sinus0_I2(2),
      ADR1 => sinus0_I2(4),
      ADR2 => sinus0_N67,
      ADR0 => sinus0_N553,
      ADR5 => N106,
      ADR4 => sinus0_Mmux_mux2_varindex00001541538_5972,
      O => sinus0_Mmux_mux2_varindex00001541606_5751
    );
  sinus0_Mmux_mux2_varindex00001541538 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"FCFCFEAA3C3CFEFE"
    )
    port map (
      ADR4 => sinus0_I2_7_2_5632,
      ADR1 => sinus0_I2(3),
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(1),
      ADR3 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(1),
      O => sinus0_Mmux_mux2_varindex00001541538_5972
    );
  sinus0_Mmux_mux2_varindex00003501710 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"F000F00000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(1),
      O => sinus0_N269
    );
  sinus0_Mmux_mux2_varindex0000429263 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"4444000044440000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => sinus0_I2(5),
      ADR1 => sinus0_I2(4),
      ADR0 => sinus0_I2(7),
      O => sinus0_Mmux_mux2_varindex0000429263_5938
    );
  sinus0_Mmux_mux2_varindex00002771444_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"A000A000AFFFAFFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(1),
      ADR0 => sinus0_I2(3),
      O => N160
    );
  sinus0_Mmux_mux2_varindex00002771444 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"000800C800000000"
    )
    port map (
      ADR2 => sinus0_I2(2),
      ADR1 => sinus0_I2(7),
      ADR3 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(1),
      ADR5 => ctrlr0_freq(0),
      ADR4 => N160,
      O => sinus0_Mmux_mux2_varindex00002771444_5797
    );
  sinus0_Mmux_mux2_varindex0000429353 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"FFFFAFAFFCF0ACA0"
    )
    port map (
      ADR2 => sinus0_I2(8),
      ADR1 => sinus0_Mmux_mux2_varindex0000429263_5938,
      ADR3 => sinus0_N5,
      ADR4 => sinus0_Mmux_mux2_varindex0000429229_5933,
      ADR0 => sinus0_Mmux_mux2_varindex0000429202_5836,
      ADR5 => sinus0_Mmux_mux2_varindex0000429309_5783,
      O => sinus0_Mmux_mux2_varindex0000429353_5940
    );
  sinus0_mux2_mux0000_3_41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"FFFCFFFCFAFCF0FC"
    )
    port map (
      ADR3 => sinus0_I2(6),
      ADR0 => sinus0_Mmux_mux2_varindex00001541278,
      ADR2 => sinus0_Mmux_mux2_varindex000015418,
      ADR4 => sinus0_N19_5926,
      ADR5 => sinus0_Mmux_mux2_varindex0000429159_5934,
      ADR1 => sinus0_Mmux_mux2_varindex0000429353_5940,
      O => N190
    );
  sinus0_Mmux_mux2_varindex000034921 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"00FF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => sinus0_I2(0),
      ADR3 => sinus0_I2(1),
      O => sinus0_N67
    );
  sinus0_Mmux_mux2_varindex00002771606 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y85",
      INIT => X"000080008800AA00"
    )
    port map (
      ADR3 => sinus0_I2(3),
      ADR1 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(7),
      ADR2 => sinus0_I2(0),
      O => sinus0_Mmux_mux2_varindex00002771606_5974
    );
  sinus0_Mmux_mux2_varindex00002771626 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y85",
      INIT => X"0033003300320030"
    )
    port map (
      ADR3 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      ADR0 => sinus0_N273,
      ADR4 => sinus0_N569,
      ADR2 => sinus0_Mmux_mux2_varindex00002771573_5857,
      ADR5 => sinus0_Mmux_mux2_varindex00002771606_5974,
      O => sinus0_Mmux_mux2_varindex00002771626_5807
    );
  sinus0_Mmux_mux2_varindex0000429111 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y85",
      INIT => X"5555555555FF55FF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => sinus0_I2(3),
      ADR3 => sinus0_I2(1),
      ADR5 => sinus0_I2(2),
      O => sinus0_N192
    );
  sinus0_Mmux_mux2_varindex0000429229 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y85",
      INIT => X"050405040F000500"
    )
    port map (
      ADR2 => sinus0_I2(5),
      ADR3 => ctrlr0_freq(1),
      ADR0 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      ADR1 => sinus0_I2(3),
      ADR4 => sinus0_N192,
      O => sinus0_Mmux_mux2_varindex0000429229_5933
    );
  sinus0_Mmux_mux2_varindex000037064_sinus0_Mmux_mux2_varindex000037064_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000369,
      O => sinus0_Mmux_mux2_varindex0000369_0
    );
  sinus0_Mmux_mux2_varindex0000370299 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y86"
    )
    port map (
      IA => N514,
      IB => N515,
      O => sinus0_Mmux_mux2_varindex0000369,
      SEL => sinus0_I2(5)
    );
  sinus0_Mmux_mux2_varindex0000370299_F : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"FFF7FFFFFFC0FFC8"
    )
    port map (
      ADR0 => sinus0_N569,
      ADR1 => sinus0_I2(4),
      ADR4 => N368,
      ADR5 => N367,
      ADR2 => sinus0_Mmux_mux2_varindex0000370231_5931,
      ADR3 => sinus0_Mmux_mux2_varindex0000370149_5975,
      O => N514
    );
  sinus0_Mmux_mux2_varindex0000370299_G : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"FFFFFFFF33000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_I2(7),
      ADR3 => sinus0_I2(4),
      ADR4 => sinus0_N5,
      ADR5 => sinus0_Mmux_mux2_varindex000037064_5976,
      O => N515
    );
  sinus0_Mmux_mux2_varindex000037064 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"0F001F0107001F00"
    )
    port map (
      ADR1 => sinus0_I2_4_1_5451,
      ADR3 => sinus0_I2_7_2_5632,
      ADR2 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(3),
      ADR5 => sinus0_N220,
      O => sinus0_Mmux_mux2_varindex000037064_5976
    );
  sinus0_Mmux_mux2_varindex0000370149 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"00FB00F300F300F3"
    )
    port map (
      ADR1 => sinus0_I2_7_2_5632,
      ADR3 => sinus0_I2(4),
      ADR2 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_N51,
      O => sinus0_Mmux_mux2_varindex0000370149_5975
    );
  sinus0_Mmux_mux2_varindex00002771471 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y87",
      INIT => X"FFFFFFFFFFFFF1F0"
    )
    port map (
      ADR0 => sinus0_I2(7),
      ADR3 => ctrlr0_freq(0),
      ADR1 => sinus0_N192,
      ADR4 => sinus0_Mmux_mux2_varindex00002771372_5860,
      ADR2 => N147,
      ADR5 => sinus0_Mmux_mux2_varindex00002771444_5797,
      O => sinus0_Mmux_mux2_varindex00002771471_5808
    );
  sinus0_Mmux_mux2_varindex00002771680_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y87",
      INIT => X"3333000033320000"
    )
    port map (
      ADR4 => sinus0_I2(6),
      ADR1 => sinus0_I2(5),
      ADR2 => sinus0_Mmux_mux2_varindex00002771505_0,
      ADR0 => sinus0_Mmux_mux2_varindex00002771541_0,
      ADR5 => sinus0_Mmux_mux2_varindex00002771626_5807,
      ADR3 => sinus0_Mmux_mux2_varindex00002771471_5808,
      O => N174
    );
  sinus0_Mmux_mux2_varindex0000350511 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y87",
      INIT => X"AAA2AA80AAA2AAA2"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR0 => sinus0_I2(4),
      ADR4 => sinus0_Mmux_mux2_varindex0000350400_5927,
      ADR3 => sinus0_Mmux_mux2_varindex0000350289_5977,
      ADR2 => sinus0_Mmux_mux2_varindex0000350353_0,
      ADR5 => N177_0,
      O => sinus0_Mmux_mux2_varindex0000350511_5617
    );
  sinus0_Mmux_mux2_varindex0000350289 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y87",
      INIT => X"F0B00000F0A00000"
    )
    port map (
      ADR1 => sinus0_I2_5_1_5453,
      ADR5 => sinus0_I2(0),
      ADR0 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(1),
      ADR2 => ctrlr0_freq(0),
      ADR3 => sinus0_C6_dtmf2234_5919,
      O => sinus0_Mmux_mux2_varindex0000350289_5977
    );
  sinus0_Mmux_mux2_varindex0000350553 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y88",
      INIT => X"FFFCFFCCFFFCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(1),
      ADR4 => sinus0_I2(5),
      ADR3 => sinus0_I2(2),
      O => sinus0_Mmux_mux2_varindex0000350553_5978
    );
  sinus0_Mmux_mux2_varindex0000350637 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y88",
      INIT => X"A0A0A0A0A0200000"
    )
    port map (
      ADR2 => sinus0_I2(4),
      ADR0 => sinus0_I2(3),
      ADR1 => sinus0_N67,
      ADR4 => sinus0_N273,
      ADR3 => sinus0_Mmux_mux2_varindex0000350553_5978,
      ADR5 => N424_0,
      O => sinus0_Mmux_mux2_varindex0000350637_5624
    );
  sinus0_Mmux_mux2_varindex0000154568 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y88",
      INIT => X"7F0F0F0FFF0F0F0F"
    )
    port map (
      ADR2 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      ADR0 => sinus0_N300,
      ADR5 => sinus0_N235,
      ADR4 => sinus0_Mmux_mux2_varindex0000154522_0,
      ADR3 => sinus0_Mmux_mux2_varindex0000154382_0,
      O => sinus0_Mmux_mux2_varindex0000154568_5839
    );
  sinus0_Mmux_mux2_varindex0000350106_sinus0_Mmux_mux2_varindex0000350106_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000350106_2072,
      O => sinus0_Mmux_mux2_varindex0000350106_0
    );
  sinus0_Mmux_mux2_varindex0000350106 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y89"
    )
    port map (
      IA => N558,
      IB => N559,
      O => sinus0_Mmux_mux2_varindex0000350106_2072,
      SEL => sinus0_I2(2)
    );
  sinus0_Mmux_mux2_varindex0000350106_F : X_LUT6
    generic map(
      LOC => "SLICE_X48Y89",
      INIT => X"0000000FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_freq(0),
      ADR5 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR4 => sinus0_I2(1),
      O => N558
    );
  sinus0_Mmux_mux2_varindex0000350106_G : X_LUT6
    generic map(
      LOC => "SLICE_X48Y89",
      INIT => X"80000000FCFCFCF0"
    )
    port map (
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(7),
      ADR1 => sinus0_I2(3),
      ADR4 => sinus0_I2(1),
      ADR3 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(1),
      O => N559
    );
  sinus0_Mmux_mux2_varindex000042930 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y79",
      INIT => X"A000A000A0000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => sinus0_I2(2),
      ADR4 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(7),
      ADR5 => sinus0_I2(0),
      O => sinus0_Mmux_mux2_varindex000042930_5935
    );
  sinus0_Mmux_mux2_varindex000025811111 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y80",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      O => sinus0_N553
    );
  sinus0_Mmux_mux2_varindex0000429159 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => X"00FF00CC00FB00C8"
    )
    port map (
      ADR3 => sinus0_I2(8),
      ADR1 => sinus0_I2(5),
      ADR2 => sinus0_Mmux_mux2_varindex000042930_5935,
      ADR5 => sinus0_Mmux_mux2_varindex000042929_5936,
      ADR0 => sinus0_Mmux_mux2_varindex000042962_5937,
      ADR4 => sinus0_Mmux_mux2_varindex0000429117_5979,
      O => sinus0_Mmux_mux2_varindex0000429159_5934
    );
  sinus0_Mmux_mux2_varindex0000429117 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => X"A0FFA0FB00FF00FB"
    )
    port map (
      ADR3 => sinus0_I2(7),
      ADR0 => ctrlr0_freq(1),
      ADR2 => ctrlr0_freq(0),
      ADR4 => sinus0_N247,
      ADR1 => sinus0_N127,
      ADR5 => N277,
      O => sinus0_Mmux_mux2_varindex0000429117_5979
    );
  sinus0_C3_dtmf21 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => X"AFAFAAAAAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => sinus0_sens_dtmf2_5439,
      ADR5 => sinus0_I2(8),
      ADR4 => sinus0_N401,
      ADR0 => sinus0_C4_dtmf2,
      O => sinus0_C3_dtmf2
    );
  sinus0_eqmax_dtmf292 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => X"0ACE0A0A00CC0000"
    )
    port map (
      ADR0 => ctrlr0_freq(0),
      ADR2 => sinus0_N262,
      ADR5 => sinus0_N231,
      ADR1 => sinus0_N275,
      ADR4 => sinus0_N244,
      ADR3 => N43_0,
      O => sinus0_N401
    );
  sinus0_Mmux_mux2_varindex00001391121 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(3),
      ADR4 => sinus0_I2(4),
      O => sinus0_N235
    );
  sinus0_Mmux_mux2_varindex0000429202 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"7F337F0033333300"
    )
    port map (
      ADR3 => sinus0_I2(5),
      ADR2 => sinus0_I2(2),
      ADR0 => sinus0_I2(1),
      ADR1 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_N235,
      O => sinus0_Mmux_mux2_varindex0000429202_5836
    );
  sinus0_Mmux_mux2_varindex0000370231 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"3F3F30201F1F3020"
    )
    port map (
      ADR2 => sinus0_I2(3),
      ADR0 => sinus0_I2(2),
      ADR5 => sinus0_I2(7),
      ADR1 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(0),
      O => sinus0_Mmux_mux2_varindex0000370231_5931
    );
  sinus0_N544_sinus0_N544_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000350775_2140,
      O => sinus0_Mmux_mux2_varindex0000350775_0
    );
  sinus0_Mmux_mux2_varindex0000350775 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => N516,
      IB => N517,
      O => sinus0_Mmux_mux2_varindex0000350775_2140,
      SEL => ctrlr0_freq(1)
    );
  sinus0_Mmux_mux2_varindex0000350775_F : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"5500010055000000"
    )
    port map (
      ADR3 => sinus0_I2(5),
      ADR0 => sinus0_I2(2),
      ADR4 => sinus0_N544,
      ADR2 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(3),
      ADR5 => sinus0_Mmux_mux2_varindex0000350730_5980,
      O => N516
    );
  sinus0_Mmux_mux2_varindex0000350775_G : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"22F0000088F80000"
    )
    port map (
      ADR4 => sinus0_I2(5),
      ADR1 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(2),
      ADR2 => sinus0_N544,
      O => N517
    );
  sinus0_Mmux_mux2_varindex000067571 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"0030000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2_0_1_5438,
      ADR5 => sinus0_I2(3),
      ADR3 => sinus0_I2(1),
      ADR4 => ctrlr0_freq(1),
      ADR1 => ctrlr0_freq(0),
      O => sinus0_N544
    );
  sinus0_Mmux_mux2_varindex0000350730 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"000FFFFF000FFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => sinus0_I2(1),
      ADR3 => sinus0_I2(0),
      ADR2 => sinus0_I2(7),
      ADR5 => sinus0_I2(4),
      O => sinus0_Mmux_mux2_varindex0000350730_5980
    );
  sinus0_Mmux_mux2_varindex0000258161 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I2(2),
      ADR5 => sinus0_I2(3),
      O => sinus0_N275
    );
  sinus0_Mmux_mux2_varindex0000350183 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(7),
      O => sinus0_N273
    );
  sinus0_Mmux_mux2_varindex000037021 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"FFFFFF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I2_0_1_5438,
      ADR5 => sinus0_I2_1_1_5444,
      ADR4 => sinus0_I2(2),
      O => sinus0_N51
    );
  N169_N169_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00002771541_2185,
      O => sinus0_Mmux_mux2_varindex00002771541_0
    );
  sinus0_Mmux_mux2_varindex00002771541 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      IA => '0',
      IB => N505,
      O => sinus0_Mmux_mux2_varindex00002771541_2185,
      SEL => sinus0_I2(4)
    );
  N0_103_SLICEL_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X49Y87",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_103_SLICEL_D6LUT_O_UNCONNECTED
    );
  sinus0_Mmux_mux2_varindex00002771541_G : X_LUT6
    generic map(
      LOC => "SLICE_X49Y87",
      INIT => X"5540000044405500"
    )
    port map (
      ADR1 => ctrlr0_freq(1),
      ADR0 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(2),
      ADR5 => sinus0_I2(3),
      ADR4 => sinus0_I2(7),
      ADR2 => sinus0_I2(1),
      O => N505
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y87",
      INIT => X"FFCFFFCCCCCFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2(8),
      ADR3 => sinus0_I2(6),
      ADR1 => sinus0_N513,
      ADR4 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR5 => sinus0_Mmux_mux2_varindex0000394,
      O => N169
    );
  N175_N175_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000154522_2195,
      O => sinus0_Mmux_mux2_varindex0000154522_0
    );
  sinus0_Mmux_mux2_varindex0000154522 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      IA => N470,
      IB => N471,
      O => sinus0_Mmux_mux2_varindex0000154522_2195,
      SEL => ctrlr0_freq(0)
    );
  sinus0_Mmux_mux2_varindex00002771680_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => X"FF00FF00FF00FE00"
    )
    port map (
      ADR3 => sinus0_I2(6),
      ADR0 => sinus0_I2(5),
      ADR2 => sinus0_Mmux_mux2_varindex00002771505_0,
      ADR1 => sinus0_Mmux_mux2_varindex00002771541_0,
      ADR4 => sinus0_Mmux_mux2_varindex00002771626_5807,
      ADR5 => sinus0_Mmux_mux2_varindex00002771471_5808,
      O => N175
    );
  sinus0_Mmux_mux2_varindex0000154522_F : X_LUT6
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => X"FFFFAB44FFFF3171"
    )
    port map (
      ADR3 => sinus0_I2(3),
      ADR0 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(4),
      ADR2 => sinus0_I2(0),
      ADR5 => sinus0_I2(7),
      ADR4 => sinus0_I2(1),
      O => N470
    );
  sinus0_Mmux_mux2_varindex0000154522_G : X_LUT6
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => X"FBFFAA55FBFF9091"
    )
    port map (
      ADR5 => sinus0_I2(7),
      ADR0 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR1 => sinus0_I2(4),
      ADR2 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      O => N471
    );
  sinus0_N300_sinus0_N300_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00002771505_2233,
      O => sinus0_Mmux_mux2_varindex00002771505_0
    );
  sinus0_Mmux_mux2_varindex00002771505 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y89"
    )
    port map (
      IA => N508,
      IB => N509,
      O => sinus0_Mmux_mux2_varindex00002771505_2233,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex00003501272 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y89",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(7),
      O => sinus0_N300
    );
  sinus0_Mmux_mux2_varindex00002771505_F : X_LUT6
    generic map(
      LOC => "SLICE_X49Y89",
      INIT => X"0002000300020003"
    )
    port map (
      ADR5 => '1',
      ADR0 => sinus0_I2(7),
      ADR2 => ctrlr0_freq(1),
      ADR1 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(4),
      ADR4 => sinus0_I2(1),
      O => N508
    );
  sinus0_Mmux_mux2_varindex00002771505_G : X_LUT6
    generic map(
      LOC => "SLICE_X49Y89",
      INIT => X"000000000202020A"
    )
    port map (
      ADR3 => sinus0_I2(0),
      ADR0 => sinus0_I2(7),
      ADR4 => sinus0_I2(1),
      ADR2 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(4),
      ADR1 => sinus0_I2(2),
      O => N509
    );
  sinus0_Madd_mux2_addsub0000_cy_5_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y90",
      INIT => X"CCCCCCCCCCCCCDDD"
    )
    port map (
      ADR5 => sinus0_I2(6),
      ADR0 => sinus0_I2(5),
      ADR2 => sinus0_I2(4),
      ADR3 => sinus0_I2(3),
      ADR4 => sinus0_N169,
      ADR1 => sinus0_Mmux_mux2_varindex0000447,
      O => N67
    );
  ctrlr0_counter2_cmp_ge000014 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y114",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_add0001_12_0,
      ADR2 => ctrlr0_dtmf_count_add0001_11_0,
      ADR5 => ctrlr0_dtmf_count_add0001_10_0,
      ADR3 => ctrlr0_dtmf_count_add0001_9_0,
      O => ctrlr0_counter2_cmp_ge000014_5376
    );
  ctrlr0_counter2_cmp_ge0000_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y114",
      INIT => X"33337777FFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_dtmf_count_add0001_13_0,
      ADR0 => ctrlr0_counter2_cmp_ge0000116_5375,
      ADR4 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR1 => ctrlr0_dtmf_count_add0001_14_0,
      O => ctrlr0_counter2_cmp_ge0000_inv
    );
  diviseur0_count_100_5 : X_SFF
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_5_CLK,
      I => Result(5),
      O => diviseur0_count_100(5),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR1 => diviseur0_count_100(0),
      ADR4 => diviseur0_count_100(1),
      ADR0 => diviseur0_count_100(2),
      ADR3 => diviseur0_count_100(5),
      ADR2 => diviseur0_count_100(4),
      ADR5 => diviseur0_count_100(3),
      O => Result(5)
    );
  diviseur0_count_100_3 : X_SFF
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_3_CLK,
      I => Result(3),
      O => diviseur0_count_100(3),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_3_111 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"5FFF5FFF5FFF5FFF"
    )
    port map (
      ADR4 => '1',
      ADR3 => diviseur0_count_100(0),
      ADR0 => diviseur0_count_100(1),
      ADR1 => '1',
      ADR2 => diviseur0_count_100(2),
      ADR5 => '1',
      O => N4
    );
  diviseur0_Mcount_count_100_xor_3_12 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"5FFFA000"
    )
    port map (
      ADR1 => '1',
      ADR3 => diviseur0_count_100(0),
      ADR0 => diviseur0_count_100(1),
      ADR4 => diviseur0_count_100(3),
      ADR2 => diviseur0_count_100(2),
      O => Result(3)
    );
  diviseur0_count_100_6 : X_SFF
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_6_CLK,
      I => Result(6),
      O => diviseur0_count_100(6),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"FF003FC0FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => N4,
      ADR1 => diviseur0_count_100(5),
      ADR3 => diviseur0_count_100(6),
      ADR5 => diviseur0_count_100(4),
      ADR2 => diviseur0_count_100(3),
      O => Result(6)
    );
  sinus0_Mmux_mux2_varindex0000350680_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"FFFFFFFCCFFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => sinus0_I2(7),
      ADR4 => sinus0_I2(1),
      ADR1 => sinus0_I2(0),
      ADR2 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(3),
      O => N450
    );
  sinus0_Mmux_mux2_varindex0000350680 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"0000303000443074"
    )
    port map (
      ADR0 => sinus0_I2(5),
      ADR3 => sinus0_I2(2),
      ADR2 => sinus0_I2(7),
      ADR1 => ctrlr0_freq(1),
      ADR4 => N406,
      ADR5 => N450,
      O => sinus0_Mmux_mux2_varindex0000350680_5625
    );
  sinus0_N261_sinus0_N261_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277191,
      O => sinus0_Mmux_mux2_varindex0000277191_0
    );
  sinus0_Mmux_mux2_varindex00002771911 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y84"
    )
    port map (
      IA => N500,
      IB => N501,
      O => sinus0_Mmux_mux2_varindex0000277191,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex00003501610 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_freq(0),
      ADR5 => ctrlr0_freq(1),
      O => sinus0_N261
    );
  sinus0_Mmux_mux2_varindex00001541856 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"FFFFF7F7FFFFC0F7"
    )
    port map (
      ADR1 => sinus0_I2(0),
      ADR2 => sinus0_I2(1),
      ADR3 => sinus0_I2(7),
      ADR4 => sinus0_I2(3),
      ADR5 => sinus0_N288,
      ADR0 => sinus0_N261,
      O => sinus0_Mmux_mux2_varindex00001541856_5750
    );
  sinus0_Mmux_mux2_varindex00002771911_F : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"00000000000C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I2(3),
      ADR5 => sinus0_I2(2),
      ADR3 => sinus0_I2(0),
      ADR2 => sinus0_I2(4),
      ADR4 => sinus0_I2(1),
      O => N500
    );
  sinus0_Mmux_mux2_varindex00002771911_G : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"0000000000003030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      O => N501
    );
  sinus0_Mmux_mux2_varindex00001542564_sinus0_Mmux_mux2_varindex00001542564_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00001542564_2312,
      O => sinus0_Mmux_mux2_varindex00001542564_0
    );
  sinus0_Mmux_mux2_varindex00001542564 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y85"
    )
    port map (
      IA => N468,
      IB => N469,
      O => sinus0_Mmux_mux2_varindex00001542564_2312,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex00001542564_F : X_LUT6
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"7F55B3FFFA15B25F"
    )
    port map (
      ADR0 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(0),
      ADR4 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(4),
      ADR5 => sinus0_I2(3),
      O => N468
    );
  sinus0_Mmux_mux2_varindex00001542564_G : X_LUT6
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"FBFF33B3FF37B3FF"
    )
    port map (
      ADR5 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(1),
      ADR2 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(4),
      O => N469
    );
  sinus0_Mmux_mux2_varindex00003501013_sinus0_Mmux_mux2_varindex00003501013_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N412,
      O => N412_0
    );
  sinus0_Mmux_mux2_varindex00001542257_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y86"
    )
    port map (
      IA => N518,
      IB => N519,
      O => N412,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex00003501013 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"3333773233333632"
    )
    port map (
      ADR1 => sinus0_I2_7_2_5632,
      ADR0 => sinus0_I2(1),
      ADR2 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(0),
      ADR3 => sinus0_I2(5),
      ADR5 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex00003501013_5984
    );
  sinus0_Mmux_mux2_varindex00003501038 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"1111111100110010"
    )
    port map (
      ADR3 => sinus0_I2(5),
      ADR1 => sinus0_I2(2),
      ADR2 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(3),
      ADR4 => sinus0_N566,
      ADR5 => sinus0_Mmux_mux2_varindex00003501013_5984,
      O => sinus0_Mmux_mux2_varindex00003501038_5843
    );
  sinus0_Mmux_mux2_varindex00001542257_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"AAA803038080BB2B"
    )
    port map (
      ADR3 => sinus0_I2(3),
      ADR1 => sinus0_I2(1),
      ADR5 => ctrlr0_freq(0),
      ADR4 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(4),
      ADR2 => sinus0_I2(0),
      O => N518
    );
  sinus0_Mmux_mux2_varindex00001542257_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"AA2A6A5555B9A86A"
    )
    port map (
      ADR0 => sinus0_I2(4),
      ADR4 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(1),
      ADR2 => sinus0_I2(0),
      O => N519
    );
  sinus0_Mmux_mux2_varindex0000350148_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y87",
      INIT => X"0313033703030307"
    )
    port map (
      ADR1 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(3),
      ADR0 => sinus0_I2(0),
      ADR3 => sinus0_I2(2),
      ADR5 => sinus0_I2(5),
      ADR4 => sinus0_I2(1),
      O => N448
    );
  sinus0_Mmux_mux2_varindex0000350841_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y87",
      INIT => X"FFFFFFFFFFFFB3B3"
    )
    port map (
      ADR3 => '1',
      ADR4 => sinus0_I2(3),
      ADR1 => sinus0_I2(2),
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(1),
      ADR5 => sinus0_I2(7),
      O => N272
    );
  sinus0_Mmux_mux2_varindex00003501096 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y87",
      INIT => X"5555555555555550"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(6),
      ADR2 => sinus0_Mmux_mux2_varindex0000350637_5624,
      ADR4 => sinus0_Mmux_mux2_varindex0000350680_5625,
      ADR3 => sinus0_Mmux_mux2_varindex0000350775_0,
      ADR5 => sinus0_Mmux_mux2_varindex00003501067_5623,
      O => sinus0_Mmux_mux2_varindex00003501096_5686
    );
  sinus0_Mmux_mux2_varindex00003501067 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y87",
      INIT => X"3333333333333331"
    )
    port map (
      ADR1 => sinus0_I2(4),
      ADR0 => N272,
      ADR5 => sinus0_Mmux_mux2_varindex0000350826_5847,
      ADR2 => sinus0_Mmux_mux2_varindex0000350967_5774,
      ADR4 => sinus0_Mmux_mux2_varindex0000350912_5848,
      ADR3 => sinus0_Mmux_mux2_varindex00003501038_5843,
      O => sinus0_Mmux_mux2_varindex00003501067_5623
    );
  sinus0_Mmux_mux2_varindex0000683611 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y89",
      INIT => X"000000FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_I2(0),
      O => sinus0_N566
    );
  sinus0_Mmux_mux2_varindex00004432 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y90",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(5),
      ADR3 => sinus0_I2(6),
      O => sinus0_Mmux_mux2_varindex00004432_5986
    );
  sinus0_Mmux_mux2_varindex000044312 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y90",
      INIT => X"EEEEEEAAEEEEAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(4),
      ADR5 => sinus0_I2(3),
      ADR3 => sinus0_N51,
      ADR0 => sinus0_Mmux_mux2_varindex00004432_5986,
      O => sinus0_Mmux_mux2_varindex000044312_5889
    );
  sinus0_Mmux_mux2_varindex000044316 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y90",
      INIT => X"AAA80000AAA80000"
    )
    port map (
      ADR5 => '1',
      ADR4 => sinus0_I2(4),
      ADR0 => sinus0_I2(3),
      ADR3 => sinus0_I2(0),
      ADR2 => sinus0_I2(1),
      ADR1 => sinus0_I2(2),
      O => sinus0_Mmux_mux2_varindex000044316_5955
    );
  diviseur0_hd_or00001 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y57",
      INIT => X"FE000FFFFE001FFF"
    )
    port map (
      ADR3 => diviseur0_count_100(5),
      ADR4 => diviseur0_count_100(6),
      ADR1 => diviseur0_count_100(3),
      ADR2 => diviseur0_count_100(4),
      ADR0 => diviseur0_count_100(2),
      ADR5 => diviseur0_count_100(1),
      O => diviseur0_hd_or0000
    );
  diviseur0_hd : X_SFF
    generic map(
      LOC => "SLICE_X51Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_hd_CLK,
      I => '1',
      O => diviseur0_hd1,
      SSET => GND,
      SRST => diviseur0_hd_or0000,
      SET => GND,
      RST => GND
    );
  diviseur0_count_100_and00001 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y57",
      INIT => X"FFFC000000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => diviseur0_count_100(5),
      ADR4 => diviseur0_count_100(6),
      ADR2 => diviseur0_count_100(2),
      ADR3 => diviseur0_count_100(3),
      ADR1 => diviseur0_count_100(4),
      O => diviseur0_count_100_and0000
    );
  diviseur0_count_100_1 : X_SFF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_1_CLK,
      I => NlwBufferSignal_diviseur0_count_100_1_IN,
      O => diviseur0_count_100(1),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_count_100_4 : X_SFF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_4_CLK,
      I => Result(4),
      O => diviseur0_count_100(4),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => X"7F807F80FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR2 => diviseur0_count_100(3),
      ADR1 => diviseur0_count_100(0),
      ADR3 => diviseur0_count_100(4),
      ADR5 => diviseur0_count_100(1),
      ADR0 => diviseur0_count_100(2),
      O => Result(4)
    );
  diviseur0_count_100_2 : X_SFF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_2_CLK,
      I => Result(2),
      O => diviseur0_count_100(2),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => diviseur0_count_100(1),
      ADR3 => '1',
      ADR4 => diviseur0_count_100(0),
      ADR5 => '1',
      O => Result(1)
    );
  diviseur0_Mcount_count_100_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => X"33CCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => diviseur0_count_100(1),
      ADR3 => diviseur0_count_100(2),
      ADR4 => diviseur0_count_100(0),
      O => Result(2)
    );
  diviseur0_count_100_0 : X_SFF
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_diviseur0_count_100_0_CLK,
      I => Result(0),
      O => diviseur0_count_100(0),
      SSET => GND,
      SRST => diviseur0_count_100_and0000,
      SET => GND,
      RST => GND
    );
  diviseur0_Mcount_count_100_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y58",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => diviseur0_count_100(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result(0)
    );
  sinus0_Mmux_mux2_varindex0000350680_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => X"F0F3FFFFF3F3FFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2(5),
      ADR5 => sinus0_I2(2),
      ADR1 => sinus0_I2(4),
      ADR3 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      O => N406
    );
  sinus0_Mmux_mux2_varindex00001541467_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => X"FFFF78F8FFFF0F2D"
    )
    port map (
      ADR2 => sinus0_I2(2),
      ADR0 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(0),
      ADR3 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(3),
      ADR4 => sinus0_I2(1),
      O => N396
    );
  sinus0_Mmux_mux2_varindex00003501102 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      O => sinus0_N288
    );
  sinus0_Mmux_mux2_varindex0000154108_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y82",
      INIT => X"F0F0FCCCFFFF3F03"
    )
    port map (
      ADR0 => '1',
      ADR5 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(1),
      ADR1 => sinus0_I2(0),
      ADR3 => sinus0_I2(3),
      O => N381
    );
  sinus0_Mmux_mux2_varindex0000154108 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y82",
      INIT => X"DCCCDCDCDFCFDFDF"
    )
    port map (
      ADR1 => sinus0_I2(7),
      ADR2 => sinus0_I2(4),
      ADR4 => sinus0_I2(0),
      ADR0 => sinus0_I2(1),
      ADR3 => sinus0_I2(3),
      ADR5 => N381,
      O => sinus0_Mmux_mux2_varindex0000154108_5725
    );
  sinus0_Mmux_mux2_varindex0000277985 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y82",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => sinus0_I2(5),
      ADR5 => sinus0_I2(6),
      O => sinus0_Mmux_mux2_varindex0000277985_5943
    );
  sinus0_Mmux_mux2_varindex000027771_sinus0_Mmux_mux2_varindex000027771_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277119_2478,
      O => sinus0_Mmux_mux2_varindex0000277119_0
    );
  sinus0_Mmux_mux2_varindex0000277119 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y83"
    )
    port map (
      IA => N512,
      IB => N513,
      O => sinus0_Mmux_mux2_varindex0000277119_2478,
      SEL => sinus0_I2(4)
    );
  sinus0_Mmux_mux2_varindex0000277119_F : X_LUT6
    generic map(
      LOC => "SLICE_X51Y83",
      INIT => X"0F0F0F0F03030302"
    )
    port map (
      ADR0 => sinus0_I2(0),
      ADR1 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(5),
      ADR4 => sinus0_I2(1),
      ADR5 => sinus0_Mmux_mux2_varindex000027771_5990,
      ADR3 => sinus0_I2(2),
      O => N512
    );
  sinus0_Mmux_mux2_varindex0000277119_G : X_LUT6
    generic map(
      LOC => "SLICE_X51Y83",
      INIT => X"00000A0F00000A0F"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => sinus0_I2(3),
      ADR2 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(5),
      ADR0 => ctrlr0_freq(1),
      O => N513
    );
  sinus0_Mmux_mux2_varindex000027771 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y83",
      INIT => X"0303FFFC00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => sinus0_I2(3),
      ADR1 => sinus0_I2(2),
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex000027771_5990
    );
  sinus0_C4_dtmf21 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y83",
      INIT => X"0000000000000400"
    )
    port map (
      ADR0 => sinus0_I2(7),
      ADR2 => sinus0_I2(8),
      ADR3 => sinus0_N220,
      ADR5 => sinus0_N247,
      ADR1 => sinus0_sens_dtmf2_5439,
      ADR4 => sinus0_N262,
      O => sinus0_C4_dtmf2
    );
  sinus0_Mmux_mux2_varindex0000429379 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y84",
      INIT => X"FF73FF33CC40CC00"
    )
    port map (
      ADR4 => sinus0_I2(8),
      ADR1 => sinus0_I2(6),
      ADR0 => ctrlr0_freq(1),
      ADR2 => sinus0_N19_5926,
      ADR3 => sinus0_Mmux_mux2_varindex0000429159_5934,
      ADR5 => sinus0_Mmux_mux2_varindex0000429353_5940,
      O => sinus0_mux2_varindex0000_4_Q
    );
  sinus0_Mmux_mux2_varindex00001542240_sinus0_Mmux_mux2_varindex00001542240_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00001542421_pack_11,
      O => sinus0_Mmux_mux2_varindex00001542421_5991
    );
  sinus0_Mmux_mux2_varindex00001542421 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y86"
    )
    port map (
      IA => N478,
      IB => N479,
      O => sinus0_Mmux_mux2_varindex00001542421_pack_11,
      SEL => sinus0_I2(0)
    );
  sinus0_Mmux_mux2_varindex00001542240 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"FFFF0FFFBBBB0BBB"
    )
    port map (
      ADR5 => sinus0_I2(0),
      ADR4 => sinus0_I2(7),
      ADR3 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(3),
      ADR1 => sinus0_N244,
      ADR2 => sinus0_N221,
      O => sinus0_Mmux_mux2_varindex00001542240_5992
    );
  sinus0_Mmux_mux2_varindex00001542608 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"C0F30033C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I2(2),
      ADR2 => sinus0_Mmux_mux2_varindex00001542421_5991,
      ADR3 => N412_0,
      ADR4 => sinus0_Mmux_mux2_varindex00001542564_0,
      ADR5 => sinus0_Mmux_mux2_varindex00001542240_5992,
      O => sinus0_Mmux_mux2_varindex00001542608_5752
    );
  sinus0_Mmux_mux2_varindex00001542421_F : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"BFEAABFBAFAAEAFB"
    )
    port map (
      ADR4 => ctrlr0_freq(1),
      ADR2 => ctrlr0_freq(0),
      ADR1 => sinus0_I2(1),
      ADR5 => sinus0_I2(3),
      ADR3 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      O => N478
    );
  sinus0_Mmux_mux2_varindex00001542421_G : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"AFABABEAEEEAEBEA"
    )
    port map (
      ADR1 => sinus0_I2(1),
      ADR5 => sinus0_I2_7_2_5632,
      ADR2 => ctrlr0_freq(0),
      ADR4 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR0 => sinus0_I2(4),
      O => N479
    );
  sinus0_Mmux_mux2_varindex0000350254_sinus0_Mmux_mux2_varindex0000350254_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N168,
      O => N168_0
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_3_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y87"
    )
    port map (
      IA => N544,
      IB => N545,
      O => N168,
      SEL => sinus0_I2(6)
    );
  sinus0_Mmux_mux2_varindex0000350254 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y87",
      INIT => X"1100110055555150"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR5 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR2 => sinus0_Mmux_mux2_varindex0000350194_0,
      ADR3 => sinus0_Mmux_mux2_varindex0000350106_0,
      ADR4 => sinus0_Mmux_mux2_varindex0000350148_5993,
      O => sinus0_Mmux_mux2_varindex0000350254_5618
    );
  sinus0_Mmux_mux2_varindex0000350148 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y87",
      INIT => X"F0F0CCCCF0F08888"
    )
    port map (
      ADR3 => '1',
      ADR4 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(3),
      ADR1 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(2),
      ADR2 => N448,
      O => sinus0_Mmux_mux2_varindex0000350148_5993
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_3_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X51Y87",
      INIT => X"FFFFAAAAFFFEAAAB"
    )
    port map (
      ADR3 => sinus0_Mmux_mux2_varindex0000350775_0,
      ADR4 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR5 => sinus0_Mmux_mux2_varindex00003501067_5623,
      ADR2 => sinus0_Mmux_mux2_varindex0000350637_5624,
      ADR0 => sinus0_I2(8),
      ADR1 => sinus0_Mmux_mux2_varindex0000350680_5625,
      O => N544
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_3_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X51Y87",
      INIT => X"FFAAFFAAFFAAFAAF"
    )
    port map (
      ADR1 => '1',
      ADR3 => sinus0_Mmux_mux2_varindex0000394,
      ADR4 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR5 => sinus0_Mmux_mux2_varindex0000350254_5618,
      ADR2 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR0 => sinus0_I2(8),
      O => N545
    );
  sinus0_Madd_mux2_addsub0000_cy_5_11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y88",
      INIT => X"00000000F0F0F0E0"
    )
    port map (
      ADR5 => sinus0_I2(6),
      ADR4 => sinus0_Mmux_mux2_varindex0000350680_5625,
      ADR0 => sinus0_Mmux_mux2_varindex0000350637_5624,
      ADR1 => sinus0_Mmux_mux2_varindex0000350775_0,
      ADR3 => sinus0_Mmux_mux2_varindex00003501067_5623,
      ADR2 => sinus0_Mmux_mux2_varindex0000369_0,
      O => N171
    );
  sinus0_mux2_mux0000_5_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y90",
      INIT => X"00000F0FF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => sinus0_I2(8),
      ADR4 => sinus0_Mmux_mux2_varindex0000442,
      ADR5 => sinus0_Mmux_mux2_varindex0000447,
      O => N122
    );
  sinus0_Mmux_mux2_varindex000044358 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y90",
      INIT => X"EAAAEAAAEAAAC000"
    )
    port map (
      ADR0 => sinus0_I2(7),
      ADR2 => sinus0_I2(4),
      ADR3 => ctrlr0_freq(1),
      ADR5 => sinus0_Mmux_mux2_varindex000044316_5955,
      ADR4 => sinus0_Mmux_mux2_varindex000044312_5889,
      ADR1 => N440,
      O => sinus0_Mmux_mux2_varindex0000442
    );
  sinus0_Mmux_mux2_varindex0000448 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y94",
      INIT => X"005D555D007F557F"
    )
    port map (
      ADR0 => sinus0_I2(6),
      ADR3 => ctrlr0_freq(1),
      ADR2 => ctrlr0_freq(0),
      ADR1 => sinus0_N250,
      ADR5 => N45,
      ADR4 => N46,
      O => sinus0_Mmux_mux2_varindex0000447
    );
  sinus0_Mmux_mux2_varindex0000448_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y94",
      INIT => X"FFCCEEC8FECCEE88"
    )
    port map (
      ADR4 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(1),
      ADR2 => sinus0_I2(2),
      ADR1 => sinus0_I2(5),
      ADR0 => sinus0_I2(4),
      O => N46
    );
  sinus0_Mmux_mux2_varindex00001541736_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y81",
      INIT => X"D010D010EFEFEFEF"
    )
    port map (
      ADR4 => '1',
      ADR2 => sinus0_I2(4),
      ADR5 => sinus0_I2(2),
      ADR0 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(0),
      ADR3 => sinus0_I2(3),
      O => N376
    );
  sinus0_Mmux_mux2_varindex00001541736 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y81",
      INIT => X"5FFFFFFF50FFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => sinus0_I2(7),
      ADR4 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(0),
      ADR0 => N377,
      ADR5 => N376,
      O => sinus0_Mmux_mux2_varindex00001541736_5745
    );
  sinus0_Mmux_mux2_varindex0000258181 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y82",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => sinus0_I2(7),
      ADR5 => sinus0_I2(4),
      O => sinus0_N297
    );
  sinus0_Mmux_mux2_varindex0000277549 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y82",
      INIT => X"EA00000000000000"
    )
    port map (
      ADR2 => sinus0_I2(0),
      ADR0 => sinus0_I2(2),
      ADR1 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(1),
      ADR5 => ctrlr0_freq(0),
      ADR4 => sinus0_N297,
      O => sinus0_Mmux_mux2_varindex0000277549_5932
    );
  sinus0_Mmux_mux2_varindex00004292 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y83",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I2(8),
      ADR1 => ctrlr0_freq(1),
      O => sinus0_Mmux_mux2_varindex00001541278
    );
  N444_N444_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N295,
      O => N295_0
    );
  sinus0_Mmux_mux2_varindex0000154228_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y84"
    )
    port map (
      IA => N520,
      IB => N521,
      O => N295,
      SEL => sinus0_I2(1)
    );
  sinus0_Mmux_mux2_varindex0000154228_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X52Y84",
      INIT => X"54FFFFFF5FF0FFFC"
    )
    port map (
      ADR4 => sinus0_I2_7_2_5632,
      ADR1 => sinus0_I2(0),
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(4),
      ADR2 => ctrlr0_freq(0),
      O => N520
    );
  sinus0_Mmux_mux2_varindex0000154228_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X52Y84",
      INIT => X"FFFFFFFFFFFFFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(7),
      ADR4 => ctrlr0_freq(0),
      O => N521
    );
  sinus0_Mmux_mux2_varindex0000277369_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y84",
      INIT => X"22BF23FF0002ABFF"
    )
    port map (
      ADR3 => sinus0_I2(2),
      ADR4 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(0),
      ADR1 => sinus0_I2(1),
      O => N444
    );
  sinus0_Mmux_mux2_varindex0000277177_sinus0_Mmux_mux2_varindex0000277177_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277235_2643,
      O => sinus0_Mmux_mux2_varindex0000277235_0
    );
  sinus0_Mmux_mux2_varindex0000277235 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y85"
    )
    port map (
      IA => N486,
      IB => N487,
      O => sinus0_Mmux_mux2_varindex0000277235_2643,
      SEL => sinus0_N566
    );
  sinus0_Mmux_mux2_varindex0000277235_F : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"00000000030020A0"
    )
    port map (
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(7),
      ADR4 => sinus0_I2(3),
      ADR5 => sinus0_I2(4),
      ADR1 => sinus0_I2(2),
      ADR3 => ctrlr0_freq(1),
      O => N486
    );
  sinus0_Mmux_mux2_varindex0000277235_G : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"11110022131120A2"
    )
    port map (
      ADR4 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(7),
      ADR1 => sinus0_I2(2),
      ADR2 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      O => N487
    );
  sinus0_Mmux_mux2_varindex0000277177 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"FF550000FF500000"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(6),
      ADR4 => sinus0_I2(8),
      ADR5 => sinus0_Mmux_mux2_varindex000027744_0,
      ADR3 => sinus0_Mmux_mux2_varindex000027713_5803,
      ADR2 => sinus0_Mmux_mux2_varindex0000277119_0,
      O => sinus0_Mmux_mux2_varindex0000277177_5812
    );
  sinus0_Mmux_mux2_varindex000027713 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"0F000F0100000101"
    )
    port map (
      ADR1 => sinus0_I2(5),
      ADR0 => sinus0_I2(4),
      ADR4 => ctrlr0_freq(0),
      ADR2 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(6),
      ADR3 => sinus0_N19_5926,
      O => sinus0_Mmux_mux2_varindex000027713_5803
    );
  sinus0_Mmux_mux2_varindex0000277537 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"3333332033330000"
    )
    port map (
      ADR5 => sinus0_I2(2),
      ADR0 => sinus0_I2(1),
      ADR1 => sinus0_N262,
      ADR2 => sinus0_Mmux_mux2_varindex0000277473_5942,
      ADR3 => sinus0_Mmux_mux2_varindex0000277413_0,
      ADR4 => sinus0_Mmux_mux2_varindex0000277369_5997,
      O => sinus0_Mmux_mux2_varindex0000277537_5814
    );
  sinus0_Mmux_mux2_varindex0000277369 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"FFFFFFFFFDFCFCFC"
    )
    port map (
      ADR0 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR4 => N444,
      ADR5 => sinus0_Mmux_mux2_varindex0000277283_5941,
      ADR1 => sinus0_Mmux_mux2_varindex0000277191_0,
      ADR2 => sinus0_Mmux_mux2_varindex0000277235_0,
      O => sinus0_Mmux_mux2_varindex0000277369_5997
    );
  sinus0_Mmux_mux2_varindex00002771723_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"FFBBFFBBFFFFFFFB"
    )
    port map (
      ADR5 => sinus0_I2(6),
      ADR1 => sinus0_I2(8),
      ADR3 => sinus0_N224,
      ADR4 => sinus0_Mmux_mux2_varindex000027744_0,
      ADR0 => sinus0_Mmux_mux2_varindex000027713_5803,
      ADR2 => sinus0_Mmux_mux2_varindex0000277119_0,
      O => N421
    );
  sinus0_Mmux_mux2_varindex00003501111_SW1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => X"FFFFFFFFFFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR4 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR5 => sinus0_Mmux_mux2_varindex0000350254_5618,
      O => N365
    );
  sinus0_Mmux_mux2_varindex00003501111 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => X"FFFFCCCCFFFFCCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I2(6),
      ADR3 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR5 => sinus0_Mmux_mux2_varindex0000350254_5618,
      ADR2 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR4 => sinus0_Mmux_mux2_varindex00003501096_5686,
      O => sinus0_Mmux_mux2_varindex0000349
    );
  sinus0_mux2_mux0000_4_25 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => X"00003333CCCCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => sinus0_I2(6),
      ADR4 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR5 => sinus0_Mmux_mux2_varindex0000394,
      O => sinus0_mux2_mux0000_4_25_5998
    );
  sinus0_Mmux_mux2_varindex00002771723_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => X"FFCFFFCFFFCFFFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2(8),
      ADR1 => sinus0_N224,
      ADR3 => sinus0_Mmux_mux2_varindex0000277177_5812,
      ADR5 => sinus0_Mmux_mux2_varindex0000277992_5813,
      ADR4 => sinus0_mux2_mux0000_4_25_5998,
      O => N422
    );
  sinus0_Madd_mux2_addsub0000_cy_5_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y90",
      INIT => X"FFAAFFAAAAAAA8A8"
    )
    port map (
      ADR0 => sinus0_I2(6),
      ADR3 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR2 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR4 => sinus0_Mmux_mux2_varindex0000350254_5618,
      ADR1 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR5 => sinus0_Mmux_mux2_varindex00003501096_5686,
      O => N172
    );
  sinus0_Madd_mux2_addsub0000_cy_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y90",
      INIT => X"1B1B0A1B1B0A0A0A"
    )
    port map (
      ADR0 => sinus0_I2(8),
      ADR1 => sinus0_Mmux_mux2_varindex0000442,
      ADR2 => N67,
      ADR3 => sinus0_Mmux_mux2_varindex0000394,
      ADR5 => N171,
      ADR4 => N172,
      O => sinus0_N60
    );
  sinus0_Mmux_mux2_varindex00001541467_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y80",
      INIT => X"FEFEF03FFFFFBF03"
    )
    port map (
      ADR2 => sinus0_I2(3),
      ADR5 => sinus0_I2(2),
      ADR1 => ctrlr0_freq(1),
      ADR3 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      O => N397
    );
  sinus0_Mmux_mux2_varindex00001541467 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y80",
      INIT => X"FFFFFFAAFF55FF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => sinus0_I2(7),
      ADR3 => sinus0_I2(4),
      ADR4 => N396,
      ADR5 => N397,
      O => sinus0_Mmux_mux2_varindex00001541467_5740
    );
  sinus0_Mmux_mux2_varindex00001541736_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y81",
      INIT => X"F0000AFAF550055F"
    )
    port map (
      ADR1 => '1',
      ADR3 => sinus0_I2(4),
      ADR4 => sinus0_I2(3),
      ADR0 => sinus0_I2(0),
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(2),
      O => N377
    );
  sinus0_Mmux_mux2_varindex0000277992 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y82",
      INIT => X"FF00FE00DD00DC00"
    )
    port map (
      ADR0 => sinus0_I2(3),
      ADR3 => sinus0_Mmux_mux2_varindex0000277985_5943,
      ADR1 => sinus0_Mmux_mux2_varindex0000277549_5932,
      ADR5 => sinus0_Mmux_mux2_varindex0000277953_0,
      ADR4 => sinus0_Mmux_mux2_varindex0000277652_0,
      ADR2 => sinus0_Mmux_mux2_varindex0000277705_6001,
      O => sinus0_Mmux_mux2_varindex0000277992_5813
    );
  sinus0_Mmux_mux2_varindex0000277705 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y82",
      INIT => X"CCFD88B900000000"
    )
    port map (
      ADR2 => sinus0_I2(0),
      ADR1 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      ADR5 => sinus0_N261,
      ADR3 => sinus0_N127,
      ADR4 => sinus0_N220,
      O => sinus0_Mmux_mux2_varindex0000277705_6001
    );
  sinus0_Mmux_mux2_varindex0000154178 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y84",
      INIT => X"FF33F733FF33F7F7"
    )
    port map (
      ADR0 => sinus0_I2(0),
      ADR4 => sinus0_I2(1),
      ADR1 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      ADR2 => sinus0_N288,
      ADR5 => sinus0_N271,
      O => sinus0_Mmux_mux2_varindex0000154178_6003
    );
  sinus0_Mmux_mux2_varindex0000154268 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y84",
      INIT => X"EECCCCCCCCCCCCCC"
    )
    port map (
      ADR2 => '1',
      ADR1 => sinus0_I2(2),
      ADR0 => sinus0_Mmux_mux2_varindex0000154204_6002,
      ADR5 => N295_0,
      ADR4 => sinus0_Mmux_mux2_varindex0000154178_6003,
      ADR3 => sinus0_Mmux_mux2_varindex0000154108_5725,
      O => sinus0_Mmux_mux2_varindex0000154268_5838
    );
  sinus0_Mmux_mux2_varindex0000154204 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y84",
      INIT => X"FA77FFFFFF77FF77"
    )
    port map (
      ADR2 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(1),
      ADR0 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      ADR1 => sinus0_I2(3),
      ADR4 => sinus0_I2(1),
      O => sinus0_Mmux_mux2_varindex0000154204_6002
    );
  sinus0_N262_sinus0_N262_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex000027744_2785,
      O => sinus0_Mmux_mux2_varindex000027744_0
    );
  sinus0_Mmux_mux2_varindex000027744 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y85"
    )
    port map (
      IA => N492,
      IB => N493,
      O => sinus0_Mmux_mux2_varindex000027744_2785,
      SEL => ctrlr0_freq(1)
    );
  sinus0_Mmux_mux2_varindex000027744_F : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"FF88A800FF000000"
    )
    port map (
      ADR4 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(4),
      ADR0 => sinus0_I2(3),
      ADR1 => sinus0_I2(2),
      ADR3 => sinus0_I2(5),
      ADR2 => sinus0_N0,
      O => N492
    );
  sinus0_Mmux_mux2_varindex000027744_G : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"0000010000000500"
    )
    port map (
      ADR3 => sinus0_I2(5),
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(3),
      ADR1 => sinus0_I2(2),
      ADR4 => sinus0_I2(4),
      ADR5 => sinus0_I2(1),
      O => N493
    );
  sinus0_Mmux_mux2_varindex000015421 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I2(5),
      ADR4 => sinus0_I2(6),
      O => sinus0_N262
    );
  sinus0_mux2_mux0000_3_51 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"000000040000000C"
    )
    port map (
      ADR1 => sinus0_I2(8),
      ADR0 => sinus0_I2(4),
      ADR2 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(3),
      ADR3 => ctrlr0_freq(0),
      ADR4 => sinus0_N262,
      O => sinus0_N224
    );
  sinus0_Mmux_mux2_varindex00001542649 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"1111511100004000"
    )
    port map (
      ADR0 => sinus0_I2(8),
      ADR1 => sinus0_I2(5),
      ADR2 => sinus0_Mmux_mux2_varindex00001541736_5745,
      ADR3 => sinus0_Mmux_mux2_varindex00001541467_5740,
      ADR5 => sinus0_Mmux_mux2_varindex00001542608_5752,
      ADR4 => N139,
      O => sinus0_Mmux_mux2_varindex00001542649_5648
    );
  sinus0_Mmux_mux2_varindex00001542649_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"007FFFFFFFFFFFFF"
    )
    port map (
      ADR3 => sinus0_I2(2),
      ADR4 => sinus0_Mmux_mux2_varindex00001541969_6004,
      ADR2 => sinus0_Mmux_mux2_varindex00001541891_5749,
      ADR1 => sinus0_Mmux_mux2_varindex00001541856_5750,
      ADR0 => N403_0,
      ADR5 => sinus0_Mmux_mux2_varindex00001541606_5751,
      O => N139
    );
  sinus0_Mmux_mux2_varindex00001541969_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"F3F3F3F3F3F3F3F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => sinus0_I2(0),
      ADR2 => ctrlr0_freq(1),
      O => N388
    );
  sinus0_Mmux_mux2_varindex00001541969 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"FFFF67FFFFFF6FFF"
    )
    port map (
      ADR2 => sinus0_I2(2),
      ADR3 => sinus0_I2(7),
      ADR5 => sinus0_I2(4),
      ADR0 => sinus0_I2(3),
      ADR1 => ctrlr0_freq(0),
      ADR4 => N388,
      O => sinus0_Mmux_mux2_varindex00001541969_6004
    );
  sinus0_Madd_mux2_addsub0000_lut_0_sinus0_Madd_mux2_addsub0000_lut_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N312,
      O => N312_0
    );
  sinus0_mux2_mux0000_3_41_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y87"
    )
    port map (
      IA => N428,
      IB => N429,
      O => N312,
      SEL => sinus0_Mmux_mux2_varindex00001542649_5648
    );
  sinus0_mux2_mux0000_3_41_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X53Y87",
      INIT => X"FDFC0000FFFF0203"
    )
    port map (
      ADR4 => N169,
      ADR1 => sinus0_Mmux_mux2_varindex000015418,
      ADR2 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR3 => sinus0_Mmux_mux2_varindex00001541284_5650,
      ADR0 => sinus0_I2(6),
      ADR5 => N168_0,
      O => N428
    );
  sinus0_mux2_mux0000_3_41_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X53Y87",
      INIT => X"FF003300FF00FFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => N169,
      ADR1 => sinus0_I2(6),
      ADR4 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR5 => N168_0,
      O => N429
    );
  sinus0_Mmux_mux2_varindex00001542688 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y87",
      INIT => X"FFFFFFFFF0FFF0FC"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I2(6),
      ADR2 => sinus0_Mmux_mux2_varindex000015418,
      ADR1 => sinus0_Mmux_mux2_varindex00001541284_5650,
      ADR4 => sinus0_Mmux_mux2_varindex00001542649_5648,
      ADR5 => sinus0_Mmux_mux2_varindex00001541178_5571,
      O => sinus0_Madd_mux2_addsub0000_lut(0)
    );
  sinus0_Mmux_mux2_varindex00001541178 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y87",
      INIT => X"040000000C080808"
    )
    port map (
      ADR2 => sinus0_I2(8),
      ADR1 => sinus0_I2(6),
      ADR0 => sinus0_I2(5),
      ADR4 => sinus0_Mmux_mux2_varindex0000154268_5838,
      ADR3 => sinus0_Mmux_mux2_varindex0000154568_5839,
      ADR5 => N462,
      O => sinus0_Mmux_mux2_varindex00001541178_5571
    );
  sinus0_mux2_mux0000_4_60 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => X"FFFFCCD8FFFFCCCC"
    )
    port map (
      ADR0 => sinus0_Mmux_mux2_varindex0000277537_5814,
      ADR1 => N421,
      ADR3 => sinus0_Mmux_mux2_varindex00002771680_5815,
      ADR5 => sinus0_Mmux_mux2_varindex0000349,
      ADR2 => N422,
      ADR4 => sinus0_Madd_mux2_addsub0000_lut(0),
      O => sinus0_mux2_mux0000_4_60_5565
    );
  sinus0_Mmux_mux2_varindex0000277473 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => X"0A0A554080CC00FF"
    )
    port map (
      ADR3 => sinus0_I2(3),
      ADR1 => sinus0_I2(0),
      ADR5 => sinus0_I2(7),
      ADR2 => ctrlr0_freq(1),
      ADR4 => sinus0_I2(4),
      ADR0 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex0000277473_5942
    );
  sinus0_Mmux_mux2_varindex00003501111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => X"FFFFFF00FFFFFF01"
    )
    port map (
      ADR4 => sinus0_I2(8),
      ADR3 => sinus0_I2(6),
      ADR1 => sinus0_Mmux_mux2_varindex0000350637_5624,
      ADR5 => sinus0_Mmux_mux2_varindex0000350680_5625,
      ADR0 => sinus0_Mmux_mux2_varindex0000350775_0,
      ADR2 => sinus0_Mmux_mux2_varindex00003501067_5623,
      O => N197
    );
  sinus0_mux2_mux0000_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => X"FCF0FEF2F0F0F2F2"
    )
    port map (
      ADR1 => sinus0_I2(6),
      ADR2 => sinus0_N513,
      ADR0 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR3 => sinus0_Mmux_mux2_varindex0000394,
      ADR5 => N365,
      ADR4 => N197,
      O => sinus0_N73
    );
  sinus0_mux2_mux0000_3_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y89",
      INIT => X"3333333030333030"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I2(8),
      ADR3 => sinus0_I2(6),
      ADR1 => sinus0_N224,
      ADR4 => sinus0_Mmux_mux2_varindex0000369_0,
      ADR5 => sinus0_Mmux_mux2_varindex0000394,
      O => N120
    );
  N188_N188_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N187,
      O => N187_0
    );
  sinus0_mux2_mux0000_2_1_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y90"
    )
    port map (
      IA => N510,
      IB => N511,
      O => N187,
      SEL => sinus0_I2(8)
    );
  sinus0_mux2_mux0000_2_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y90",
      INIT => X"FFFF0000FFFF01FF"
    )
    port map (
      ADR3 => sinus0_I2(6),
      ADR4 => sinus0_I2(8),
      ADR2 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR0 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR1 => sinus0_Mmux_mux2_varindex0000350254_5618,
      ADR5 => sinus0_Mmux_mux2_varindex00003501096_5686,
      O => N188
    );
  sinus0_mux2_mux0000_2_1_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X53Y90",
      INIT => X"FFFFFFFFAAAAAAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(6),
      ADR4 => sinus0_Mmux_mux2_varindex0000350511_5617,
      ADR3 => sinus0_Mmux_mux2_varindex0000350254_5618,
      ADR2 => sinus0_Mmux_mux2_varindex000035073_5619,
      ADR5 => sinus0_Mmux_mux2_varindex00003501096_5686,
      O => N510
    );
  sinus0_mux2_mux0000_2_1_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X53Y90",
      INIT => X"FFFFFFFEFFFFFFEE"
    )
    port map (
      ADR0 => sinus0_I2(5),
      ADR5 => sinus0_I2(3),
      ADR2 => sinus0_I2(4),
      ADR1 => sinus0_I2(6),
      ADR3 => ctrlr0_freq(1),
      ADR4 => ctrlr0_freq(0),
      O => N511
    );
  sinus0_Mmux_mux2_varindex0000448_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y94",
      INIT => X"F0F0F0F0F0A0F0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(3),
      ADR3 => sinus0_I2(4),
      ADR5 => sinus0_I2(5),
      O => N45
    );
  sinus0_Mmux_mux2_varindex0000277652_sinus0_Mmux_mux2_varindex0000277652_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277652_2917,
      O => sinus0_Mmux_mux2_varindex0000277652_0
    );
  sinus0_Mmux_mux2_varindex0000277652 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y82"
    )
    port map (
      IA => N474,
      IB => N475,
      O => sinus0_Mmux_mux2_varindex0000277652_2917,
      SEL => sinus0_I2(7)
    );
  sinus0_Mmux_mux2_varindex0000277652_F : X_LUT6
    generic map(
      LOC => "SLICE_X54Y82",
      INIT => X"3700EE103700EE31"
    )
    port map (
      ADR2 => sinus0_I2(4),
      ADR0 => sinus0_I2(1),
      ADR4 => sinus0_I2(2),
      ADR1 => ctrlr0_freq(0),
      ADR5 => sinus0_I2(0),
      ADR3 => ctrlr0_freq(1),
      O => N474
    );
  sinus0_Mmux_mux2_varindex0000277652_G : X_LUT6
    generic map(
      LOC => "SLICE_X54Y82",
      INIT => X"3703031037020310"
    )
    port map (
      ADR2 => sinus0_I2(4),
      ADR3 => ctrlr0_freq(1),
      ADR1 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(1),
      ADR4 => sinus0_I2(2),
      ADR5 => sinus0_I2(0),
      O => N475
    );
  sinus0_Mmux_mux2_varindex00001541253 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y83",
      INIT => X"000000003337AA04"
    )
    port map (
      ADR4 => sinus0_I2(3),
      ADR3 => sinus0_I2(1),
      ADR5 => ctrlr0_freq(0),
      ADR0 => sinus0_I2(2),
      ADR1 => sinus0_I2(4),
      ADR2 => sinus0_I2(0),
      O => sinus0_Mmux_mux2_varindex00001541253_5834
    );
  N403_N403_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N403,
      O => N403_0
    );
  sinus0_Mmux_mux2_varindex00001541893_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y85"
    )
    port map (
      IA => N550,
      IB => N551,
      O => N403,
      SEL => sinus0_I2(0)
    );
  sinus0_Mmux_mux2_varindex00001541893_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X54Y85",
      INIT => X"ECFFEAFFFEFF5EFF"
    )
    port map (
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(4),
      ADR0 => sinus0_I2(7),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(3),
      ADR3 => sinus0_I2(1),
      O => N550
    );
  sinus0_Mmux_mux2_varindex00001541893_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X54Y85",
      INIT => X"ACCFEEFFFEFFFEFF"
    )
    port map (
      ADR5 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(7),
      ADR2 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_I2(3),
      ADR3 => sinus0_I2(1),
      O => N551
    );
  sinus0_Mmux_mux2_varindex00002771296_sinus0_Mmux_mux2_varindex00002771296_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00002771296_2956,
      O => sinus0_Mmux_mux2_varindex00002771296_0
    );
  sinus0_Mmux_mux2_varindex00002771296_sinus0_Mmux_mux2_varindex00002771296_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277413_2957,
      O => sinus0_Mmux_mux2_varindex0000277413_0
    );
  sinus0_Mmux_mux2_varindex00002771296 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y86"
    )
    port map (
      IA => N484,
      IB => N485,
      O => sinus0_Mmux_mux2_varindex00002771296_2956,
      SEL => sinus0_I2(3)
    );
  sinus0_Mmux_mux2_varindex0000277413 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y86"
    )
    port map (
      IA => N476,
      IB => N477,
      O => sinus0_Mmux_mux2_varindex0000277413_2957,
      SEL => ctrlr0_freq(1)
    );
  sinus0_Mmux_mux2_varindex00002771296_F : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"CDDFCDDF00010103"
    )
    port map (
      ADR1 => sinus0_I2(7),
      ADR2 => sinus0_I2(2),
      ADR0 => sinus0_I2(1),
      ADR3 => ctrlr0_freq(1),
      ADR5 => sinus0_I2(4),
      ADR4 => sinus0_I2(0),
      O => N484
    );
  sinus0_Mmux_mux2_varindex00002771296_G : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"0C0C4C4C0C0C4C4C"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => sinus0_I2(7),
      ADR2 => sinus0_I2(2),
      ADR4 => sinus0_I2(1),
      ADR0 => sinus0_I2(0),
      O => N485
    );
  sinus0_Mmux_mux2_varindex0000277413_F : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"00FC000000FC0404"
    )
    port map (
      ADR3 => sinus0_I2(3),
      ADR4 => ctrlr0_freq(0),
      ADR2 => sinus0_I2(1),
      ADR1 => sinus0_I2(0),
      ADR5 => sinus0_I2(7),
      ADR0 => sinus0_I2(4),
      O => N476
    );
  sinus0_Mmux_mux2_varindex0000277413_G : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"5000FF0000FF00FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => sinus0_I2(7),
      ADR3 => sinus0_I2(3),
      ADR2 => sinus0_N0,
      ADR0 => sinus0_I2(4),
      ADR4 => ctrlr0_freq(0),
      O => N477
    );
  sinus0_Mmux_mux2_varindex0000277171 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y87",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => sinus0_I2(4),
      ADR1 => ctrlr0_freq(0),
      O => sinus0_N265
    );
  sinus0_Mmux_mux2_varindex00002771201 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"3333333330003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I2(2),
      ADR1 => ctrlr0_freq(0),
      ADR2 => N446,
      ADR4 => N179_0,
      ADR5 => sinus0_Mmux_mux2_varindex00002771178_0,
      O => sinus0_Mmux_mux2_varindex00002771201_5796
    );
  sinus0_Mmux_mux2_varindex00002771201_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"00331037000F050F"
    )
    port map (
      ADR2 => sinus0_I2(4),
      ADR4 => sinus0_I2(0),
      ADR0 => sinus0_I2(1),
      ADR3 => sinus0_I2(3),
      ADR5 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(7),
      O => N446
    );
  sinus0_mux2_mux0000_3_41_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"FFAAFFFFFFAAFFFA"
    )
    port map (
      ADR1 => '1',
      ADR4 => sinus0_I2(6),
      ADR0 => sinus0_Mmux_mux2_varindex000015418,
      ADR2 => sinus0_Mmux_mux2_varindex00001541284_5650,
      ADR3 => sinus0_Mmux_mux2_varindex0000277177_5812,
      ADR5 => sinus0_Mmux_mux2_varindex00001542649_5648,
      O => N414
    );
  sinus0_mux2_mux0000_3_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"FFFFFFFFFFFF3332"
    )
    port map (
      ADR1 => sinus0_I2(8),
      ADR0 => sinus0_Mmux_mux2_varindex0000277992_5813,
      ADR3 => sinus0_Mmux_mux2_varindex0000277537_5814,
      ADR5 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR2 => sinus0_Mmux_mux2_varindex00002771680_5815,
      ADR4 => N414,
      O => sinus0_N99
    );
  sinus0_Mmux_mux2_varindex00002771178_sinus0_Mmux_mux2_varindex00002771178_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex00002771178_3016,
      O => sinus0_Mmux_mux2_varindex00002771178_0
    );
  sinus0_Mmux_mux2_varindex00002771178 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y89"
    )
    port map (
      IA => '0',
      IB => N503,
      O => sinus0_Mmux_mux2_varindex00002771178_3016,
      SEL => sinus0_I2(3)
    );
  N0_102_SLICEL_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_102_SLICEL_B6LUT_O_UNCONNECTED
    );
  sinus0_Mmux_mux2_varindex00002771178_G : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"000055110000FF1F"
    )
    port map (
      ADR3 => sinus0_I2(4),
      ADR4 => sinus0_I2(7),
      ADR0 => sinus0_I2(2),
      ADR5 => ctrlr0_freq(1),
      ADR2 => sinus0_I2(1),
      ADR1 => sinus0_I2(0),
      O => N503
    );
  sinus0_Mrom_mux_rom00001913_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y106",
      INIT => X"D8D4F12BF8DDF12A"
    )
    port map (
      ADR3 => sinus0_I(5),
      ADR2 => sinus0_I(3),
      ADR5 => sinus0_I(0),
      ADR1 => sinus0_I(4),
      ADR4 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      O => sinus0_N15
    );
  sinus0_Mrom_mux_rom00001123 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y111",
      INIT => X"0032000203320302"
    )
    port map (
      ADR1 => sinus0_I(8),
      ADR3 => sinus0_I(7),
      ADR2 => sinus0_I(6),
      ADR4 => sinus0_N23,
      ADR0 => sinus0_N22,
      ADR5 => sinus0_N24,
      O => sinus0_mux_rom0000(2)
    );
  sinus0_Mrom_mux_rom00001123_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y111",
      INIT => X"FFFFD3D3FFFFA527"
    )
    port map (
      ADR5 => sinus0_I(4),
      ADR1 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      ADR3 => sinus0_I(0),
      ADR4 => sinus0_I(5),
      O => sinus0_N24
    );
  sinus0_sens_ask : X_FF
    generic map(
      LOC => "SLICE_X54Y114",
      INIT => '0'
    )
    port map (
      CE => sinus0_C3_ask,
      CLK => NlwBufferSignal_sinus0_sens_ask_CLK,
      I => sinus0_sens_ask_not0001,
      O => sinus0_sens_ask_5697,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_sens_ask_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y114",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_sens_ask_5697,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_sens_ask_not0001
    );
  sinus0_I_not00013_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y116",
      INIT => X"E0C0E0C000000000"
    )
    port map (
      ADR4 => '1',
      ADR5 => sinus0_I(4),
      ADR2 => sinus0_I(3),
      ADR3 => sinus0_I(0),
      ADR0 => sinus0_I(1),
      ADR1 => sinus0_I(2),
      O => N454
    );
  sinus0_I_not00013 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y116",
      INIT => X"0000000000330037"
    )
    port map (
      ADR1 => sinus0_I(7),
      ADR5 => sinus0_I(8),
      ADR3 => sinus0_sens_ask_5697,
      ADR2 => sinus0_I(5),
      ADR0 => sinus0_I(6),
      ADR4 => N454,
      O => sinus0_C1_ask
    );
  sinus0_Mmux_mux2_varindex0000277953_sinus0_Mmux_mux2_varindex0000277953_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux2_varindex0000277953_3064,
      O => sinus0_Mmux_mux2_varindex0000277953_0
    );
  sinus0_Mmux_mux2_varindex0000277953 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => N466,
      IB => N467,
      O => sinus0_Mmux_mux2_varindex0000277953_3064,
      SEL => sinus0_I2(1)
    );
  sinus0_Mmux_mux2_varindex0000277953_F : X_LUT6
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => X"3938185AF5959696"
    )
    port map (
      ADR3 => sinus0_I2(0),
      ADR4 => sinus0_I2(2),
      ADR0 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(7),
      ADR5 => sinus0_I2(4),
      ADR2 => ctrlr0_freq(0),
      O => N466
    );
  sinus0_Mmux_mux2_varindex0000277953_G : X_LUT6
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => X"ADB93818E5E59595"
    )
    port map (
      ADR4 => sinus0_I2(2),
      ADR0 => ctrlr0_freq(1),
      ADR1 => sinus0_I2(7),
      ADR2 => ctrlr0_freq(0),
      ADR3 => sinus0_I2(0),
      ADR5 => sinus0_I2(4),
      O => N467
    );
  sinus0_Mmux_mux2_varindex00001541284 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => X"AAAA0A8AA0A80088"
    )
    port map (
      ADR2 => sinus0_I2(5),
      ADR3 => sinus0_I2(3),
      ADR0 => sinus0_Mmux_mux2_varindex00001541278,
      ADR1 => sinus0_N265,
      ADR4 => sinus0_Mmux_mux2_varindex00001541253_5834,
      ADR5 => sinus0_Mmux_mux2_varindex00001541214_6012,
      O => sinus0_Mmux_mux2_varindex00001541284_5650
    );
  sinus0_Mmux_mux2_varindex00001541214 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => X"7666CCCC3222CCCC"
    )
    port map (
      ADR4 => sinus0_I2(3),
      ADR1 => sinus0_I2(4),
      ADR2 => sinus0_I2(0),
      ADR3 => sinus0_I2(1),
      ADR0 => sinus0_I2(2),
      ADR5 => ctrlr0_freq(0),
      O => sinus0_Mmux_mux2_varindex00001541214_6012
    );
  sinus0_Mmux_mux2_varindex0000277276 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y87",
      INIT => X"00AA00AA00000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => sinus0_I2(4),
      ADR5 => ctrlr0_freq(1),
      ADR3 => sinus0_I2(3),
      O => sinus0_Mmux_mux2_varindex0000277276_6013
    );
  sinus0_Mmux_mux2_varindex0000277283 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y87",
      INIT => X"CCEE0000CDC80000"
    )
    port map (
      ADR5 => sinus0_I2(0),
      ADR2 => sinus0_I2(2),
      ADR3 => sinus0_I2(7),
      ADR0 => sinus0_I2(1),
      ADR1 => ctrlr0_freq(0),
      ADR4 => sinus0_Mmux_mux2_varindex0000277276_6013,
      O => sinus0_Mmux_mux2_varindex0000277283_5941
    );
  sinus0_Mmux_mux2_varindex00002771723 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => X"CCFFCCFFCCFFCCEE"
    )
    port map (
      ADR2 => '1',
      ADR3 => sinus0_I2(8),
      ADR5 => sinus0_Mmux_mux2_varindex0000277992_5813,
      ADR1 => sinus0_Mmux_mux2_varindex0000277177_5812,
      ADR0 => sinus0_Mmux_mux2_varindex0000277537_5814,
      ADR4 => sinus0_Mmux_mux2_varindex00002771680_5815,
      O => sinus0_mux2_varindex0000_1_Q
    );
  sinus0_Mmux_mux2_varindex00002771680 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => X"FFFFFFF800070000"
    )
    port map (
      ADR1 => ctrlr0_freq(0),
      ADR0 => sinus0_Mmux_mux2_varindex00002771296_0,
      ADR2 => sinus0_Mmux_mux2_varindex00002771201_5796,
      ADR3 => sinus0_Mmux_mux2_varindex00002771045_5854,
      ADR4 => N174,
      ADR5 => N175,
      O => sinus0_Mmux_mux2_varindex00002771680_5815
    );
  sinus0_Madd_mux2_addsub0000_cy_4_111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => X"FFFFFF55FFFFFF50"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I2(6),
      ADR2 => sinus0_Mmux_mux2_varindex00001541284_5650,
      ADR3 => sinus0_Mmux_mux2_varindex0000277177_5812,
      ADR4 => N190,
      ADR5 => sinus0_Mmux_mux2_varindex00001542649_5648,
      O => N464
    );
  sinus0_Madd_mux2_addsub0000_cy_4_111 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => X"0000CCCC000000CD"
    )
    port map (
      ADR1 => sinus0_I2(8),
      ADR0 => sinus0_Mmux_mux2_varindex0000277992_5813,
      ADR2 => sinus0_Mmux_mux2_varindex0000277537_5814,
      ADR3 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR5 => sinus0_Mmux_mux2_varindex00002771680_5815,
      ADR4 => N464,
      O => sinus0_N547
    );
  N179_N179_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N179,
      O => N179_0
    );
  sinus0_Mmux_mux2_varindex00002771201_SW0_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      IA => N506,
      IB => N507,
      O => N179,
      SEL => sinus0_I2(1)
    );
  sinus0_Mmux_mux2_varindex00002771201_SW0_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X55Y89",
      INIT => X"FFFFFFDDFFFFFFDD"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => sinus0_I2(2),
      ADR3 => sinus0_I2(4),
      ADR0 => sinus0_I2(7),
      ADR1 => sinus0_I2(3),
      O => N506
    );
  sinus0_Mmux_mux2_varindex00002771201_SW0_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X55Y89",
      INIT => X"FFFFFFFFFFC0FFCD"
    )
    port map (
      ADR5 => sinus0_I2(2),
      ADR2 => ctrlr0_freq(1),
      ADR0 => sinus0_I2(7),
      ADR4 => sinus0_I2(0),
      ADR1 => sinus0_I2(3),
      ADR3 => sinus0_I2(4),
      O => N507
    );
  sinus0_signe_dtmf2 : X_FF
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => '0'
    )
    port map (
      CE => sinus0_C4_dtmf2,
      CLK => NlwBufferSignal_sinus0_signe_dtmf2_CLK,
      I => sinus0_signe_dtmf2_not0001,
      O => sinus0_signe_dtmf2_5547,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_signe_dtmf2_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_signe_dtmf2_5547,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_signe_dtmf2_not0001
    );
  sinus0_Mrom_mux_rom00001913 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y106",
      INIT => X"00500044005000EE"
    )
    port map (
      ADR3 => sinus0_I(8),
      ADR0 => sinus0_I(7),
      ADR4 => sinus0_I(6),
      ADR2 => sinus0_N15,
      ADR1 => sinus0_N14,
      ADR5 => sinus0_N16,
      O => sinus0_mux_rom0000(4)
    );
  sinus0_Mrom_mux_rom00001913_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y106",
      INIT => X"FF9DFF55FFDDFF55"
    )
    port map (
      ADR0 => sinus0_I(4),
      ADR1 => sinus0_I(3),
      ADR4 => sinus0_I(2),
      ADR2 => sinus0_I(1),
      ADR5 => sinus0_I(0),
      ADR3 => sinus0_I(5),
      O => sinus0_N16
    );
  sinus0_Mrom_mux_rom00001123_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y111",
      INIT => X"678738C831C31C9C"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR0 => sinus0_I(4),
      ADR3 => sinus0_I(3),
      ADR1 => sinus0_I(0),
      ADR5 => sinus0_I(1),
      ADR4 => sinus0_I(2),
      O => sinus0_N22
    );
  sinus0_Mrom_mux_rom00001123_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y111",
      INIT => X"D59D0DB067B9CC37"
    )
    port map (
      ADR4 => sinus0_I(5),
      ADR5 => sinus0_I(4),
      ADR2 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      ADR3 => sinus0_I(0),
      ADR1 => sinus0_I(3),
      O => sinus0_N23
    );
  sinus0_signe_ask : X_FF
    generic map(
      LOC => "SLICE_X55Y113",
      INIT => '0'
    )
    port map (
      CE => sinus0_C4_ask_5714,
      CLK => NlwBufferSignal_sinus0_signe_ask_CLK,
      I => sinus0_signe_ask_not0001,
      O => sinus0_signe_ask_5314,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_signe_ask_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y113",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_signe_ask_5314,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_signe_ask_not0001
    );
  sinus0_C4_ask : X_LUT6
    generic map(
      LOC => "SLICE_X55Y114",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR3 => sinus0_I(1),
      ADR5 => sinus0_I(0),
      ADR1 => sinus0_I(6),
      ADR0 => N27,
      O => sinus0_C4_ask_5714
    );
  sinus0_C3_ask1 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y114",
      INIT => X"FFFF3333FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => sinus0_N372,
      ADR1 => sinus0_sens_ask_5697,
      ADR4 => sinus0_C4_ask_5714,
      O => sinus0_C3_ask
    );
  sinus0_C4_ask_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y115",
      INIT => X"FFFFFFFFFFFAFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => sinus0_I(8),
      ADR5 => sinus0_I(4),
      ADR3 => sinus0_I(7),
      ADR4 => sinus0_sens_ask_5697,
      ADR0 => sinus0_I(5),
      O => N27
    );
  sinus0_tmp_vs_mux0002_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => X"3030FFFF3030FFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => sinus0_signe_ask_5314,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      O => N102
    );
  sinus0_Madd_mux_sub0001_xor_7_111 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y106",
      INIT => X"FFFFFFFFFFFFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => sinus0_mux_rom0000(5),
      ADR0 => sinus0_mux_rom0000(6),
      ADR5 => sinus0_mux_rom0000(4),
      ADR4 => sinus0_N305,
      O => sinus0_N32
    );
  sinus0_Madd_mux_sub0001_xor_4_111 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y106",
      INIT => X"FFFFFFFAFFFFFFFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => sinus0_mux_rom0000(2),
      ADR0 => sinus0_Madd_mux_sub0001_lut(0),
      ADR3 => sinus0_mux_rom0000(1),
      ADR2 => sinus0_mux_rom0000(3),
      O => sinus0_N305
    );
  sinus0_Mrom_mux_rom00001913_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y106",
      INIT => X"0EA7789A1A96F15A"
    )
    port map (
      ADR3 => sinus0_I(5),
      ADR0 => sinus0_I(4),
      ADR2 => sinus0_I(2),
      ADR4 => sinus0_I(1),
      ADR1 => sinus0_I(3),
      ADR5 => sinus0_I(0),
      O => sinus0_N14
    );
  sinus0_mux_rom0000_5_sinus0_mux_rom0000_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_N2_3238,
      O => sinus0_N2_0
    );
  sinus0_Mrom_mux_rom00002313 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y107",
      INIT => X"0101010100112233"
    )
    port map (
      ADR1 => sinus0_I(8),
      ADR0 => sinus0_I(6),
      ADR5 => sinus0_I(7),
      ADR2 => sinus0_N4,
      ADR3 => sinus0_N10,
      ADR4 => sinus0_N11,
      O => sinus0_mux_rom0000(5)
    );
  sinus0_Mrom_mux_rom00002313_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y107",
      INIT => X"FFF8FFF0850E0F50"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR3 => sinus0_I(3),
      ADR4 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      ADR1 => sinus0_I(0),
      ADR5 => sinus0_I(4),
      O => sinus0_N11
    );
  sinus0_Mrom_mux_rom00003123_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y107",
      INIT => X"FFFF8080FFFF8080"
    )
    port map (
      ADR3 => '1',
      ADR0 => sinus0_I(4),
      ADR1 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR4 => sinus0_I(5),
      ADR5 => '1',
      O => sinus0_N4
    );
  sinus0_Mrom_mux_rom00003123_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y107",
      INIT => X"57778880"
    )
    port map (
      ADR3 => sinus0_I(1),
      ADR0 => sinus0_I(4),
      ADR1 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR4 => sinus0_I(5),
      O => sinus0_N2_3238
    );
  sinus0_Mrom_mux_rom00002713 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y107",
      INIT => X"0054005E0004000E"
    )
    port map (
      ADR3 => sinus0_I(8),
      ADR0 => sinus0_I(7),
      ADR2 => sinus0_I(6),
      ADR5 => sinus0_N7,
      ADR1 => sinus0_N6,
      ADR4 => sinus0_N4,
      O => sinus0_mux_rom0000(6)
    );
  sinus0_Mrom_mux_rom00003123 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y108",
      INIT => X"0057001300460002"
    )
    port map (
      ADR3 => sinus0_I(8),
      ADR0 => sinus0_I(7),
      ADR1 => sinus0_I(6),
      ADR4 => sinus0_N3,
      ADR5 => sinus0_N2_0,
      ADR2 => sinus0_N4,
      O => sinus0_mux_rom0000(7)
    );
  sinus0_Mrom_mux_rom00002313_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y109",
      INIT => X"626AB99D6A2BB9D5"
    )
    port map (
      ADR4 => sinus0_I(5),
      ADR0 => sinus0_I(3),
      ADR1 => sinus0_I(2),
      ADR3 => sinus0_I(4),
      ADR5 => sinus0_I(0),
      ADR2 => sinus0_I(1),
      O => sinus0_N10
    );
  sinus0_Mrom_mux_rom00001513_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y111",
      INIT => X"DAF08C333CE3629D"
    )
    port map (
      ADR4 => sinus0_I(5),
      ADR1 => sinus0_I(4),
      ADR5 => sinus0_I(3),
      ADR3 => sinus0_I(1),
      ADR0 => sinus0_I(0),
      ADR2 => sinus0_I(2),
      O => sinus0_N27
    );
  sinus0_Mrom_mux_rom00001513_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y112",
      INIT => X"9949956D56265AB2"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR3 => sinus0_I(4),
      ADR5 => sinus0_I(3),
      ADR0 => sinus0_I(1),
      ADR1 => sinus0_I(0),
      ADR4 => sinus0_I(2),
      O => sinus0_N26
    );
  mode_0_mode_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_dtmf_done_and0000,
      O => ctrlr0_dtmf_done_and0000_0
    );
  ctrlr0_current_state_FSM_Out01 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y114",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR5 => '1',
      O => mode(0)
    );
  ctrlr0_dtmf_done_and00001 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y114",
      INIT => X"0F0F0F03"
    )
    port map (
      ADR0 => '1',
      ADR2 => rst_IBUF_5295,
      ADR4 => ctrlr0_counter2_cmp_ge0000,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      O => ctrlr0_dtmf_done_and0000
    );
  ctrlr0_counter2_cmp_ge0000128 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y114",
      INIT => X"FF00CC0000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => ctrlr0_counter2_cmp_ge000014_5376,
      ADR5 => ctrlr0_dtmf_count_add0001_13_0,
      ADR3 => ctrlr0_dtmf_count_add0001_14_0,
      ADR4 => ctrlr0_counter2_cmp_ge0000116_5375,
      O => ctrlr0_counter2_cmp_ge0000
    );
  sinus0_Mrom_mux_rom0000313 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y114",
      INIT => X"000E0004050E0504"
    )
    port map (
      ADR2 => sinus0_I(8),
      ADR3 => sinus0_I(7),
      ADR0 => sinus0_I(6),
      ADR4 => sinus0_N31,
      ADR1 => sinus0_N30,
      ADR5 => sinus0_N32_6017,
      O => sinus0_Madd_mux_sub0001_lut(0)
    );
  sinus0_Mrom_mux_rom0000313_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y114",
      INIT => X"FEEAFBEBFBEFFEEF"
    )
    port map (
      ADR2 => sinus0_I(4),
      ADR1 => sinus0_I(3),
      ADR3 => sinus0_I(1),
      ADR5 => sinus0_I(0),
      ADR4 => sinus0_I(2),
      ADR0 => sinus0_I(5),
      O => sinus0_N32_6017
    );
  sinus0_Mrom_mux_rom0000313_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y115",
      INIT => X"141316B9E6394B1A"
    )
    port map (
      ADR3 => sinus0_I(4),
      ADR5 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR4 => sinus0_I(1),
      ADR1 => sinus0_I(0),
      ADR0 => sinus0_I(5),
      O => sinus0_N30
    );
  sinus0_Mrom_mux_rom0000713_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y115",
      INIT => X"F445ABA00E6AA6A8"
    )
    port map (
      ADR1 => sinus0_I(4),
      ADR0 => sinus0_I(3),
      ADR3 => sinus0_I(2),
      ADR4 => sinus0_I(0),
      ADR5 => sinus0_I(5),
      ADR2 => sinus0_I(1),
      O => sinus0_N19
    );
  sinus0_Mcount_I3 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y116",
      INIT => X"CFCFCFCF8A8A8A8A"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => sinus0_sens_ask_5697,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_N372,
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      O => sinus0_Mcount_I
    );
  sinus0_Mrom_mux_rom0000313_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y116",
      INIT => X"DC2D4DB4069001A0"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR3 => sinus0_I(4),
      ADR0 => sinus0_I(2),
      ADR4 => sinus0_I(1),
      ADR5 => sinus0_I(3),
      ADR1 => sinus0_I(0),
      O => sinus0_N31
    );
  sinus0_Mrom_mux_rom0000713_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y116",
      INIT => X"0D4312ACEF23A4FC"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR3 => sinus0_I(4),
      ADR5 => sinus0_I(3),
      ADR0 => sinus0_I(2),
      ADR4 => sinus0_I(1),
      ADR1 => sinus0_I(0),
      O => sinus0_N18
    );
  sinus0_I_not000128 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y117",
      INIT => X"FFFF0000FFFE0000"
    )
    port map (
      ADR4 => sinus0_sens_ask_5697,
      ADR0 => sinus0_I(7),
      ADR3 => sinus0_I(8),
      ADR2 => sinus0_I(5),
      ADR1 => sinus0_I(6),
      ADR5 => sinus0_I_not00019_5372,
      O => sinus0_I_not000128_6018
    );
  sinus0_I_not000144 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y117",
      INIT => X"FFFFAAFAFFFFAAFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => sinus0_C1_ask,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR4 => sinus0_I_not000128_6018,
      O => sinus0_I_not0001
    );
  sinus0_mux2_mux0000_3_41_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y87",
      INIT => X"FFFFAAFFFFFFAAFA"
    )
    port map (
      ADR1 => '1',
      ADR3 => sinus0_I2(6),
      ADR0 => sinus0_Mmux_mux2_varindex000015418,
      ADR2 => sinus0_Mmux_mux2_varindex00001541284_5650,
      ADR4 => sinus0_mux2_varindex0000_4_Q,
      ADR5 => sinus0_Mmux_mux2_varindex00001542649_5648,
      O => N318
    );
  sinus0_tmp_vs_mux0002_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y97",
      INIT => X"55555556AAAAAAAA"
    )
    port map (
      ADR0 => sinus0_mux_rom0000(4),
      ADR4 => sinus0_mux_rom0000(3),
      ADR3 => sinus0_mux_rom0000(1),
      ADR2 => sinus0_Madd_mux_sub0001_lut(0),
      ADR1 => sinus0_mux_rom0000(2),
      ADR5 => sinus0_signe_ask_5314,
      O => sinus0_N65
    );
  sinus0_Mrom_mux_rom00003512 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y106",
      INIT => X"0050055500500555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => sinus0_I(8),
      ADR2 => sinus0_I(6),
      ADR3 => sinus0_I(7),
      ADR4 => sinus0_N0_6019,
      O => sinus0_mux_rom0000(8)
    );
  sinus0_Mrom_mux_rom00003512_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y106",
      INIT => X"BB9D99DDDDDDDDDD"
    )
    port map (
      ADR0 => sinus0_I(7),
      ADR5 => sinus0_I(4),
      ADR3 => sinus0_I(3),
      ADR4 => sinus0_I(2),
      ADR2 => sinus0_I(1),
      ADR1 => sinus0_I(5),
      O => sinus0_N0_6019
    );
  sinus0_Mrom_mux_rom00002713_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y107",
      INIT => X"005F05FFFE80F000"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR5 => sinus0_I(4),
      ADR4 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      ADR3 => sinus0_I(3),
      ADR1 => sinus0_I(0),
      O => sinus0_N6
    );
  sinus0_Mrom_mux_rom00002713_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y107",
      INIT => X"EAAA5676AAAA7666"
    )
    port map (
      ADR4 => sinus0_I(5),
      ADR1 => sinus0_I(3),
      ADR2 => sinus0_I(2),
      ADR5 => sinus0_I(1),
      ADR3 => sinus0_I(0),
      ADR0 => sinus0_I(4),
      O => sinus0_N7
    );
  sinus0_Mrom_mux_rom00003123_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y108",
      INIT => X"FAF8FAF0FAF0FAF0"
    )
    port map (
      ADR0 => sinus0_I(4),
      ADR3 => sinus0_I(3),
      ADR4 => sinus0_I(2),
      ADR5 => sinus0_I(1),
      ADR1 => sinus0_I(0),
      ADR2 => sinus0_I(5),
      O => sinus0_N3
    );
  sinus0_Mrom_mux_rom00001513 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y111",
      INIT => X"0000000057461302"
    )
    port map (
      ADR5 => sinus0_I(8),
      ADR0 => sinus0_I(7),
      ADR1 => sinus0_I(6),
      ADR4 => sinus0_N27,
      ADR3 => sinus0_N26,
      ADR2 => sinus0_N28,
      O => sinus0_mux_rom0000(3)
    );
  sinus0_Mrom_mux_rom00001513_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y111",
      INIT => X"FFF8FFF7FFF0FFF7"
    )
    port map (
      ADR2 => sinus0_I(5),
      ADR4 => sinus0_I(3),
      ADR1 => sinus0_I(2),
      ADR0 => sinus0_I(1),
      ADR5 => sinus0_I(0),
      ADR3 => sinus0_I(4),
      O => sinus0_N28
    );
  sinus0_Mrom_mux_rom0000713 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y115",
      INIT => X"0000514000007362"
    )
    port map (
      ADR4 => sinus0_I(8),
      ADR0 => sinus0_I(7),
      ADR1 => sinus0_I(6),
      ADR2 => sinus0_N19,
      ADR3 => sinus0_N18,
      ADR5 => sinus0_N20,
      O => sinus0_mux_rom0000(1)
    );
  sinus0_Mrom_mux_rom0000713_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y115",
      INIT => X"FFFFFFFFEBEBF061"
    )
    port map (
      ADR4 => sinus0_I(4),
      ADR0 => sinus0_I(3),
      ADR1 => sinus0_I(2),
      ADR2 => sinus0_I(1),
      ADR3 => sinus0_I(0),
      ADR5 => sinus0_I(5),
      O => sinus0_N20
    );
  sinus0_I_not00019_sinus0_I_not00019_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N29_pack_2,
      O => N29
    );
  sinus0_I_not00019 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y116",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR3 => sinus0_I(3),
      ADR1 => sinus0_I(4),
      ADR4 => sinus0_I(0),
      ADR0 => sinus0_I(1),
      ADR2 => sinus0_I(2),
      ADR5 => '1',
      O => sinus0_I_not00019_5372
    );
  sinus0_C3_ask2_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X57Y116",
      INIT => X"C8C8C0C0"
    )
    port map (
      ADR3 => '1',
      ADR1 => sinus0_I(4),
      ADR4 => sinus0_I(0),
      ADR0 => sinus0_I(1),
      ADR2 => sinus0_I(2),
      O => N29_pack_2
    );
  sinus0_C3_ask2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y116",
      INIT => X"EEEEEEEAEEEEEEAA"
    )
    port map (
      ADR0 => sinus0_I(8),
      ADR1 => sinus0_I(7),
      ADR4 => sinus0_I(5),
      ADR5 => sinus0_I(3),
      ADR2 => N29,
      ADR3 => sinus0_I(6),
      O => sinus0_N372
    );
  sinus0_tmp_vs_6_sinus0_tmp_vs_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N96_pack_8,
      O => N96
    );
  sinus0_tmp_vs_mux0002_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => X"F00FA05FF00FA05F"
    )
    port map (
      ADR1 => '1',
      ADR4 => sinus0_N305,
      ADR3 => sinus0_mux_rom0000(5),
      ADR2 => sinus0_signe_ask_5314,
      ADR0 => sinus0_mux_rom0000(4),
      ADR5 => '1',
      O => N91
    );
  sinus0_tmp_vs_mux0002_6_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => X"C3C3C393"
    )
    port map (
      ADR1 => sinus0_mux_rom0000(6),
      ADR4 => sinus0_N305,
      ADR3 => sinus0_mux_rom0000(5),
      ADR2 => sinus0_signe_ask_5314,
      ADR0 => sinus0_mux_rom0000(4),
      O => N96_pack_8
    );
  sinus0_tmp_vs_6 : X_FF
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_6_CLK,
      I => sinus0_tmp_vs_mux0002(6),
      O => sinus0_tmp_vs(6),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => X"ABABAABB03030033"
    )
    port map (
      ADR4 => ctrlr0_amp_5353,
      ADR1 => mode(0),
      ADR0 => sinus0_N222,
      ADR3 => N95,
      ADR2 => N96,
      ADR5 => sinus0_tmp_vs_addsub0000_6_0,
      O => sinus0_tmp_vs_mux0002(6)
    );
  sinus0_tmp_vs_mux0002_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => X"CC996633C4916A3F"
    )
    port map (
      ADR3 => sinus0_mux_rom0000(6),
      ADR4 => sinus0_mux_rom0000(5),
      ADR1 => sinus0_signe_ask_5314,
      ADR0 => ctrlr0_amp_5353,
      ADR5 => sinus0_N305,
      ADR2 => sinus0_mux_rom0000(4),
      O => N93
    );
  sinus0_tmp_vs_5 : X_FF
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_5_CLK,
      I => sinus0_tmp_vs_mux0002(5),
      O => sinus0_tmp_vs(5),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X57Y91",
      INIT => X"0010CFDF0000CFCF"
    )
    port map (
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_C6_dtmf2,
      ADR3 => sinus0_C6_dtmf1,
      ADR4 => N93,
      ADR5 => sinus0_tmp_vs_addsub0000_5_0,
      O => sinus0_tmp_vs_mux0002(5)
    );
  sinus0_tmp_vs_0_sinus0_tmp_vs_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N65_pack_7,
      O => N65
    );
  sinus0_tmp_vs_0 : X_FF
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_0_CLK,
      I => sinus0_tmp_vs_mux0002(0),
      O => sinus0_tmp_vs(0),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => X"FFFF203120312031"
    )
    port map (
      ADR0 => ctrlr0_amp_5353,
      ADR1 => mode(0),
      ADR2 => sinus0_Madd_mux_sub0001_lut(0),
      ADR3 => N61,
      ADR4 => sinus0_N222,
      ADR5 => sinus0_tmp_vs_addsub0000_0_0,
      O => sinus0_tmp_vs_mux0002(0)
    );
  sinus0_tmp_vs_mux0002_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => X"0000003300000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => sinus0_C6_dtmf1,
      ADR1 => sinus0_C6_dtmf2,
      ADR4 => ctrlr0_current_state_FSM_FFd2_5292,
      O => sinus0_N222
    );
  sinus0_tmp_vs_mux0002_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => X"9595959595959595"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => sinus0_Madd_mux_sub0001_lut(0),
      ADR0 => sinus0_mux_rom0000(1),
      ADR1 => sinus0_signe_ask_5314,
      ADR5 => '1',
      O => N61
    );
  sinus0_tmp_vs_mux0002_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => X"95C89537"
    )
    port map (
      ADR4 => sinus0_mux_rom0000(2),
      ADR3 => ctrlr0_amp_5353,
      ADR2 => sinus0_Madd_mux_sub0001_lut(0),
      ADR0 => sinus0_mux_rom0000(1),
      ADR1 => sinus0_signe_ask_5314,
      O => N65_pack_7
    );
  sinus0_tmp_vs_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_1_CLK,
      I => sinus0_tmp_vs_mux0002(1),
      O => sinus0_tmp_vs(1),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X58Y94",
      INIT => X"0000F5F50200F7F5"
    )
    port map (
      ADR2 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR5 => sinus0_C6_dtmf2,
      ADR1 => sinus0_C6_dtmf1,
      ADR4 => N65,
      ADR3 => sinus0_tmp_vs_addsub0000_1_0,
      O => sinus0_tmp_vs_mux0002(1)
    );
  sinus0_tmp_vs_mux0002_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y96",
      INIT => X"CC33C837CC33C837"
    )
    port map (
      ADR5 => '1',
      ADR3 => sinus0_mux_rom0000(3),
      ADR4 => sinus0_mux_rom0000(2),
      ADR0 => sinus0_mux_rom0000(1),
      ADR2 => sinus0_Madd_mux_sub0001_lut(0),
      ADR1 => sinus0_signe_ask_5314,
      O => N85
    );
  sinus0_tmp_vs_mux0002_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y96",
      INIT => X"C3C3C3C3C3C3C387"
    )
    port map (
      ADR4 => sinus0_mux_rom0000(5),
      ADR2 => sinus0_mux_rom0000(7),
      ADR1 => sinus0_signe_ask_5314,
      ADR5 => sinus0_N305,
      ADR3 => sinus0_mux_rom0000(6),
      ADR0 => sinus0_mux_rom0000(4),
      O => N95
    );
  sinus0_tmp_vs_9_sinus0_tmp_vs_9_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000_9_pack_4,
      O => sinus0_tmp_vs_addsub0000(9)
    );
  sinus0_tmp_vs_9_sinus0_tmp_vs_9_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_tmp_vs_addsub0000(8),
      O => sinus0_tmp_vs_addsub0000_8_0
    );
  sinus0_tmp_vs_9 : X_FF
    generic map(
      LOC => "SLICE_X59Y92",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_9_CLK,
      I => sinus0_tmp_vs_mux0002(9),
      O => sinus0_tmp_vs(9),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y92",
      INIT => X"BBBBBBBA33333330"
    )
    port map (
      ADR1 => N102,
      ADR3 => sinus0_mux_rom0000(8),
      ADR2 => sinus0_mux_rom0000(7),
      ADR0 => sinus0_N222,
      ADR4 => sinus0_N32,
      ADR5 => sinus0_tmp_vs_addsub0000(9),
      O => sinus0_tmp_vs_mux0002(9)
    );
  sinus0_Madd_tmp_vs_addsub0000_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X59Y92"
    )
    port map (
      CI => sinus0_Madd_tmp_vs_addsub0000_cy_7_Q_5576,
      CYINIT => '0',
      CO(3) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_1_UNCONNECTED,
      DI(0) => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_0_Q,
      O(3) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_O_2_UNCONNECTED,
      O(1) => sinus0_tmp_vs_addsub0000_9_pack_4,
      O(0) => sinus0_tmp_vs_addsub0000(8),
      S(3) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_sinus0_Madd_tmp_vs_addsub0000_xor_9_S_2_UNCONNECTED,
      S(1) => sinus0_Madd_tmp_vs_addsub0000_lut(9),
      S(0) => sinus0_Madd_tmp_vs_addsub0000_lut(8)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y92",
      INIT => X"F05A5A5A00AAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_signe_dtmf2_5547,
      ADR2 => sinus0_signe_dtmf1_5579,
      ADR4 => sinus0_N60,
      ADR3 => sinus0_N547,
      ADR5 => sinus0_mux_mux0001_9_mand,
      O => sinus0_Madd_tmp_vs_addsub0000_lut(9)
    );
  sinus0_Madd_tmp_vs_addsub0000_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y92",
      INIT => X"55575555AAA8AAAA"
    )
    port map (
      ADR0 => sinus0_signe_dtmf2_5547,
      ADR1 => sinus0_Mmux_mux2_varindex00001541178_5571,
      ADR3 => sinus0_mux2_varindex0000_1_Q,
      ADR2 => N318,
      ADR4 => sinus0_N60,
      ADR5 => sinus0_mux_mux0001(6),
      O => sinus0_Madd_tmp_vs_addsub0000_lut(8)
    );
  sinus0_tmp_vs_4 : X_FF
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_4_CLK,
      I => sinus0_tmp_vs_mux0002(4),
      O => sinus0_tmp_vs(4),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => X"AAAA0000FBABF303"
    )
    port map (
      ADR2 => ctrlr0_amp_5353,
      ADR5 => mode(0),
      ADR3 => sinus0_N65,
      ADR0 => sinus0_N222,
      ADR1 => N91,
      ADR4 => sinus0_tmp_vs_addsub0000_4_0,
      O => sinus0_tmp_vs_mux0002(4)
    );
  sinus0_tmp_vs_3 : X_FF
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_3_CLK,
      I => sinus0_tmp_vs_mux0002(3),
      O => sinus0_tmp_vs(3),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => X"ABAA0300BBBA3330"
    )
    port map (
      ADR2 => ctrlr0_amp_5353,
      ADR1 => mode(0),
      ADR5 => N85,
      ADR3 => sinus0_N65,
      ADR0 => sinus0_N222,
      ADR4 => sinus0_tmp_vs_addsub0000_3_0,
      O => sinus0_tmp_vs_mux0002(3)
    );
  sinus0_tmp_vs_mux0002_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => X"A5AA87A8A5558757"
    )
    port map (
      ADR5 => sinus0_mux_rom0000(3),
      ADR2 => sinus0_mux_rom0000(2),
      ADR0 => sinus0_signe_ask_5314,
      ADR3 => ctrlr0_amp_5353,
      ADR4 => sinus0_Madd_mux_sub0001_lut(0),
      ADR1 => sinus0_mux_rom0000(1),
      O => N71
    );
  sinus0_tmp_vs_2 : X_FF
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_2_CLK,
      I => sinus0_tmp_vs_mux0002(2),
      O => sinus0_tmp_vs(2),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y93",
      INIT => X"0010CFDF0000CFCF"
    )
    port map (
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_C6_dtmf2,
      ADR3 => sinus0_C6_dtmf1,
      ADR4 => N71,
      ADR5 => sinus0_tmp_vs_addsub0000_2_0,
      O => sinus0_tmp_vs_mux0002(2)
    );
  sinus0_tmp_vs_mux0002_8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => X"A50F853FA50F853F"
    )
    port map (
      ADR5 => '1',
      ADR0 => ctrlr0_amp_5353,
      ADR2 => sinus0_signe_ask_5314,
      ADR3 => sinus0_mux_rom0000(8),
      ADR1 => sinus0_mux_rom0000(7),
      ADR4 => sinus0_N32,
      O => N100
    );
  sinus0_tmp_vs_8 : X_FF
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_8_CLK,
      I => sinus0_tmp_vs_mux0002(8),
      O => sinus0_tmp_vs(8),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => X"3333035333330303"
    )
    port map (
      ADR4 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_C6_dtmf2,
      ADR3 => sinus0_C6_dtmf1,
      ADR1 => N100,
      ADR5 => sinus0_tmp_vs_addsub0000_8_0,
      O => sinus0_tmp_vs_mux0002(8)
    );
  sinus0_tmp_vs_mux0002_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => X"F00F00FFCCC33333"
    )
    port map (
      ADR0 => '1',
      ADR5 => ctrlr0_amp_5353,
      ADR4 => sinus0_signe_ask_5314,
      ADR1 => sinus0_mux_rom0000(8),
      ADR3 => sinus0_mux_rom0000(7),
      ADR2 => sinus0_N32,
      O => N98
    );
  sinus0_tmp_vs_7 : X_FF
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_sinus0_tmp_vs_7_CLK,
      I => sinus0_tmp_vs_mux0002(7),
      O => sinus0_tmp_vs(7),
      SET => GND,
      RST => GND
    );
  sinus0_tmp_vs_mux0002_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X59Y94",
      INIT => X"0002F5F70000F5F5"
    )
    port map (
      ADR2 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => sinus0_C6_dtmf2,
      ADR1 => sinus0_C6_dtmf1,
      ADR4 => N98,
      ADR5 => sinus0_tmp_vs_addsub0000_7_0,
      O => sinus0_tmp_vs_mux0002(7)
    );
  sinus0_Vs_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y92",
      INIT => X"8888888888888888"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_tmp_vs(9),
      O => vs_9_OBUF_5608
    );
  sinus0_Vs_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y93",
      INIT => X"CCCCCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR1 => sinus0_tmp_vs(2),
      O => vs_2_OBUF_5601
    );
  sinus0_Vs_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y93",
      INIT => X"AAAAAAAA00000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => sinus0_tmp_vs(4),
      O => vs_4_OBUF_5603
    );
  sinus0_Vs_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y93",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => sinus0_tmp_vs(6),
      O => vs_6_OBUF_5605
    );
  sinus0_Vs_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y93",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => sinus0_tmp_vs(3),
      O => vs_3_OBUF_5602
    );
  sinus0_rst_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y88",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => rst_IBUF_5295,
      O => ctrlr0_rst_inv
    );
  sinus0_mux_mux0001_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y92",
      INIT => X"FFFFFFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_signe_dtmf1_5579,
      ADR5 => sinus0_I1(8),
      O => N73
    );
  sinus0_mux_mux0001_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y92",
      INIT => X"0002000F02020F0F"
    )
    port map (
      ADR0 => sinus0_I1(7),
      ADR2 => N73,
      ADR1 => sinus0_N441,
      ADR3 => sinus0_Mmux_mux_varindex0001120,
      ADR4 => sinus0_N572,
      ADR5 => N299,
      O => sinus0_mux_mux0001(6)
    );
  sinus0_Vs_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y93",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => sinus0_tmp_vs(7),
      O => vs_7_OBUF_5606
    );
  sinus0_Vs_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y93",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => sinus0_tmp_vs(5),
      O => vs_5_OBUF_5604
    );
  sinus0_Vs_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y94",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR1 => sinus0_tmp_vs(0),
      O => vs_0_OBUF_5599
    );
  sinus0_Vs_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y94",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => sinus0_tmp_vs(1),
      O => vs_1_OBUF_5600
    );
  ctrlr0_dtmf_count_and0000_ctrlr0_dtmf_count_and0000_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_C6_ask_inv,
      O => sinus0_C6_ask_inv_0
    );
  ctrlr0_dtmf_count_and00001 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y114",
      INIT => X"0030000000300000"
    )
    port map (
      ADR0 => '1',
      ADR4 => ctrlr0_counter2_cmp_ge0000,
      ADR1 => rst_IBUF_5295,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR5 => '1',
      O => ctrlr0_dtmf_count_and0000
    );
  sinus0_C6_ask_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X63Y114",
      INIT => X"FF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      O => sinus0_C6_ask_inv
    );
  sinus0_mux_mux0001_4_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y93",
      INIT => X"FFFF0F0FFFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => sinus0_signe_dtmf1_5579,
      ADR4 => sinus0_I1(8),
      ADR5 => sinus0_Mmux_mux_varindex0001393,
      O => N78
    );
  sinus0_Vs_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y94",
      INIT => X"CCCCCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR5 => sinus0_tmp_vs(8),
      O => vs_8_OBUF_5607
    );
  N283_N283_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex00012491167_3660,
      O => sinus0_Mmux_mux_varindex00012491167_0
    );
  sinus0_Mmux_mux_varindex00012491167 : X_MUX2
    generic map(
      LOC => "SLICE_X64Y95"
    )
    port map (
      IA => N552,
      IB => '0',
      O => sinus0_Mmux_mux_varindex00012491167_3660,
      SEL => sinus0_N264
    );
  sinus0_Mmux_mux_varindex00012491167_F : X_LUT6
    generic map(
      LOC => "SLICE_X64Y95",
      INIT => X"BB11AA800E0E0000"
    )
    port map (
      ADR0 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(2),
      ADR2 => sinus0_I1(0),
      ADR4 => sinus0_I1(3),
      ADR1 => sinus0_I1(1),
      ADR3 => sinus0_I1(7),
      O => N552
    );
  N0_106_SLICEL_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X64Y95",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_106_SLICEL_C6LUT_O_UNCONNECTED
    );
  sinus0_mux_mux0001_2_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y95",
      INIT => X"FFFFFFFE33333332"
    )
    port map (
      ADR1 => sinus0_I1(6),
      ADR2 => sinus0_Mmux_mux_varindex0001290314_5717,
      ADR0 => sinus0_Mmux_mux_varindex000129051_5718,
      ADR4 => sinus0_Mmux_mux_varindex0001290478_5719,
      ADR3 => sinus0_Mmux_mux_varindex0001290211_5720,
      ADR5 => sinus0_Mmux_mux_varindex0001310,
      O => N283
    );
  sinus0_C6_dtmf12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y97",
      INIT => X"FFFFFFFFEAAAAAAA"
    )
    port map (
      ADR2 => sinus0_I1(2),
      ADR1 => sinus0_I1(0),
      ADR4 => sinus0_I1(1),
      ADR3 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(5),
      O => N48
    );
  sinus0_signe_dtmf1 : X_FF
    generic map(
      LOC => "SLICE_X64Y99",
      INIT => '0'
    )
    port map (
      CE => sinus0_C4_dtmf1,
      CLK => NlwBufferSignal_sinus0_signe_dtmf1_CLK,
      I => sinus0_signe_dtmf1_not0001,
      O => sinus0_signe_dtmf1_5579,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_signe_dtmf1_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y99",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_signe_dtmf1_not0001
    );
  ctrlr0_Mrom_transmission_count11 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y60",
      INIT => X"CCCCCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => tb_0_IBUF_5346,
      ADR1 => tb_1_IBUF_5298,
      O => ctrlr0_Mrom_transmission_count1
    );
  sinus0_mux_mux0001_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y93",
      INIT => X"0033300330033003"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_signe_dtmf1_5579,
      ADR1 => sinus0_I1(8),
      ADR3 => N283,
      ADR4 => sinus0_Mmux_mux_varindex0001248,
      ADR5 => sinus0_Mmux_mux_varindex0001120,
      O => sinus0_mux_mux0001(2)
    );
  sinus0_mux_mux0001_5_211_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y93",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => sinus0_I1(6),
      ADR1 => sinus0_Mmux_mux_varindex0001310,
      ADR4 => sinus0_Mmux_mux_varindex0001417,
      ADR3 => sinus0_Mmux_mux_varindex0001358,
      ADR2 => sinus0_Mmux_mux_varindex0001393,
      ADR5 => sinus0_Mmux_mux_varindex0001248,
      O => N299
    );
  sinus0_mux_mux0001_5_151 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y94",
      INIT => X"5555555555554010"
    )
    port map (
      ADR2 => sinus0_I1(6),
      ADR0 => sinus0_I1(8),
      ADR1 => sinus0_Mmux_mux_varindex0001417,
      ADR5 => sinus0_mux_mux0001_5_30_5805,
      ADR4 => sinus0_mux_mux0001_5_51_5764,
      ADR3 => N137,
      O => sinus0_mux_mux0001(5)
    );
  sinus0_mux_mux0001_5_151_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y94",
      INIT => X"2AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => sinus0_signe_dtmf1_5579,
      ADR3 => sinus0_Mmux_mux_varindex0001310,
      ADR2 => sinus0_Mmux_mux_varindex0001358,
      ADR1 => sinus0_Mmux_mux_varindex0001393,
      ADR4 => sinus0_Mmux_mux_varindex0001248,
      ADR5 => sinus0_Mmux_mux_varindex0001120,
      O => N137
    );
  sinus0_mux_mux0001_5_30_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y95",
      INIT => X"FFFF0F0FFFFFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => sinus0_signe_dtmf1_5579,
      ADR4 => sinus0_I1(6),
      ADR1 => sinus0_I1(7),
      ADR5 => sinus0_N441,
      O => N409
    );
  sinus0_C6_dtmf12 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y97",
      INIT => X"FFFFFFFFAAAAA800"
    )
    port map (
      ADR5 => sinus0_I1(8),
      ADR0 => sinus0_I1(7),
      ADR1 => sinus0_N264,
      ADR3 => sinus0_I1(6),
      ADR2 => N48,
      ADR4 => sinus0_N441,
      O => sinus0_C6_dtmf1
    );
  sinus0_mux_mux0001_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X66Y93",
      INIT => X"470047CC473347FF"
    )
    port map (
      ADR1 => sinus0_I1(6),
      ADR2 => N77,
      ADR0 => N78,
      ADR4 => N76,
      ADR5 => N75,
      ADR3 => sinus0_N54,
      O => sinus0_mux_mux0001(4)
    );
  sinus0_mux_mux0001_4_21 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y93",
      INIT => X"0808085DFFFFFFFF"
    )
    port map (
      ADR3 => sinus0_Mmux_mux_varindex00011211079_5755,
      ADR0 => sinus0_I1(6),
      ADR4 => sinus0_Mmux_mux_varindex00011211632_5756,
      ADR2 => sinus0_Mmux_mux_varindex0001121254_5757,
      ADR1 => N301,
      ADR5 => sinus0_Mmux_mux_varindex0001248,
      O => sinus0_N54
    );
  sinus0_Mmux_mux_varindex00012491279_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y94",
      INIT => X"FFCCFF3FFD22FDFF"
    )
    port map (
      ADR0 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(2),
      ADR3 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(1),
      ADR4 => sinus0_I1(2),
      ADR2 => sinus0_I1(0),
      O => N209
    );
  sinus0_Mmux_mux_varindex00012491279 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y94",
      INIT => X"0000CC003300FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => sinus0_I1(7),
      ADR3 => sinus0_I1(4),
      ADR4 => N210,
      ADR5 => N209,
      O => sinus0_Mmux_mux_varindex00012491279_5911
    );
  sinus0_Mmux_mux_varindex00011211329_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y94",
      INIT => X"FCD4ABFC5F5FA5F4"
    )
    port map (
      ADR1 => sinus0_I1(4),
      ADR0 => sinus0_I1(2),
      ADR2 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(3),
      ADR3 => sinus0_I1(0),
      O => N207
    );
  sinus0_Mmux_mux_varindex00011211329 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y94",
      INIT => X"0000003300000033"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I1(7),
      ADR1 => ctrlr0_freq(3),
      ADR4 => N207,
      O => sinus0_Mmux_mux_varindex00011211329_5842
    );
  sinus0_Mmux_mux_varindex00012491522 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y95",
      INIT => X"FFFFFFFBFFFFFFFA"
    )
    port map (
      ADR1 => sinus0_I1(2),
      ADR0 => sinus0_Mmux_mux_varindex00012491177_5907,
      ADR5 => sinus0_Mmux_mux_varindex00012491491_0,
      ADR4 => sinus0_Mmux_mux_varindex00012491167_0,
      ADR2 => sinus0_Mmux_mux_varindex00012491361_5910,
      ADR3 => sinus0_Mmux_mux_varindex00012491279_5911,
      O => sinus0_Mmux_mux_varindex00012491522_6035
    );
  sinus0_Mmux_mux_varindex00012491582 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y95",
      INIT => X"FFF5BBB1EEE4AAA0"
    )
    port map (
      ADR0 => sinus0_I1(6),
      ADR1 => sinus0_I1(5),
      ADR2 => sinus0_Mmux_mux_varindex0001249624_5908,
      ADR3 => sinus0_Mmux_mux_varindex0001249238_5789,
      ADR4 => sinus0_Mmux_mux_varindex00012491099_5909,
      ADR5 => sinus0_Mmux_mux_varindex00012491522_6035,
      O => sinus0_Mmux_mux_varindex0001248
    );
  sinus0_Mmux_mux_varindex0001290490 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y95",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => sinus0_Mmux_mux_varindex0001290314_5717,
      ADR5 => sinus0_Mmux_mux_varindex000129051_5718,
      ADR2 => sinus0_Mmux_mux_varindex0001290478_5719,
      ADR4 => sinus0_Mmux_mux_varindex0001290211_5720,
      O => sinus0_Mmux_mux_varindex0001289
    );
  sinus0_mux_mux0001_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y95",
      INIT => X"FFCFCCFCCFCFFCFC"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_signe_dtmf1_5579,
      ADR1 => sinus0_I1(8),
      ADR4 => sinus0_Mmux_mux_varindex0001381,
      ADR5 => sinus0_Mmux_mux_varindex0001342,
      ADR3 => sinus0_Mmux_mux_varindex0001289,
      O => N75
    );
  sinus0_Mmux_mux_varindex00012491177 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y99",
      INIT => X"C300000082000000"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR2 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(2),
      ADR0 => sinus0_I1(0),
      O => sinus0_Mmux_mux_varindex00012491177_5907
    );
  sinus0_Mmux_mux_varindex000129071 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y99",
      INIT => X"FFFFFFFFFFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_freq(3),
      ADR4 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(4),
      O => sinus0_N238
    );
  sinus0_Mmux_mux_varindex000131137 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y99",
      INIT => X"0000001000010001"
    )
    port map (
      ADR4 => sinus0_I1(3),
      ADR3 => sinus0_I1(2),
      ADR2 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(5),
      ADR5 => sinus0_I1(4),
      ADR0 => ctrlr0_freq(2),
      O => sinus0_Mmux_mux_varindex000131137_5867
    );
  sinus0_mux_mux0001_5_221_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y99",
      INIT => X"CCCCCCCCCCCCCCCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I1(6),
      ADR2 => sinus0_Mmux_mux_varindex0001290314_5717,
      ADR3 => sinus0_Mmux_mux_varindex000129051_5718,
      ADR5 => sinus0_Mmux_mux_varindex0001290478_5719,
      ADR4 => sinus0_Mmux_mux_varindex0001290211_5720,
      O => N293
    );
  sinus0_Mmux_mux_varindex0001382170_SW0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y97",
      INIT => X"FFCFFFFFFF1FFFFF"
    )
    port map (
      ADR1 => sinus0_I1(1),
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(3),
      ADR3 => sinus0_I1(5),
      ADR0 => sinus0_I1(0),
      ADR2 => ctrlr0_freq(3),
      O => N400
    );
  sinus0_Mmux_mux_varindex0001290100 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y97",
      INIT => X"00A0000A00200000"
    )
    port map (
      ADR4 => sinus0_I1(3),
      ADR0 => sinus0_I1(5),
      ADR2 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(1),
      ADR5 => sinus0_I1(4),
      O => sinus0_Mmux_mux_varindex0001290100_5949
    );
  sinus0_Mmux_mux_varindex0001290490_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y97",
      INIT => X"AAAAFFFFFFAAFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR0 => sinus0_I1(6),
      ADR4 => sinus0_I1(7),
      ADR5 => sinus0_Mmux_mux_varindex0001290314_5717,
      O => N306
    );
  sinus0_mux_mux0001_5_221_SW0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y97",
      INIT => X"FAFAFAFAFAFBFAF8"
    )
    port map (
      ADR0 => N307,
      ADR1 => sinus0_Mmux_mux_varindex000129051_5718,
      ADR2 => sinus0_N441,
      ADR3 => sinus0_Mmux_mux_varindex0001290478_5719,
      ADR5 => sinus0_Mmux_mux_varindex0001290211_5720,
      ADR4 => N306,
      O => N248
    );
  sinus0_Mmux_mux_varindex0001290166 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => X"1500554000000000"
    )
    port map (
      ADR5 => sinus0_I1(4),
      ADR3 => sinus0_I1(3),
      ADR2 => sinus0_I1(0),
      ADR0 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(1),
      ADR4 => ctrlr0_freq(2),
      O => sinus0_Mmux_mux_varindex0001290166_6038
    );
  sinus0_Mmux_mux_varindex0001382170_SW0_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => X"FFAA0000C0A80000"
    )
    port map (
      ADR4 => sinus0_I1(3),
      ADR5 => sinus0_I1(2),
      ADR3 => sinus0_I1(5),
      ADR0 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(1),
      ADR2 => sinus0_I1(0),
      O => N401
    );
  sinus0_Mmux_mux_varindex0001290211 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => X"5555555555555554"
    )
    port map (
      ADR0 => sinus0_I1(2),
      ADR1 => sinus0_Mmux_mux_varindex000129071_5952,
      ADR3 => sinus0_Mmux_mux_varindex000129063_5876,
      ADR2 => sinus0_Mmux_mux_varindex0001290100_5949,
      ADR4 => sinus0_Mmux_mux_varindex0001290137_0,
      ADR5 => sinus0_Mmux_mux_varindex0001290186_6037,
      O => sinus0_Mmux_mux_varindex0001290211_5720
    );
  sinus0_Mmux_mux_varindex0001290186 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => X"FFFF000020330000"
    )
    port map (
      ADR2 => sinus0_I1(0),
      ADR3 => sinus0_I1(4),
      ADR1 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(2),
      ADR4 => sinus0_N579,
      ADR5 => sinus0_Mmux_mux_varindex0001290166_6038,
      O => sinus0_Mmux_mux_varindex0001290186_6037
    );
  sinus0_Mmux_mux_varindex0001311324_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y96",
      INIT => X"B9EC91CC11885788"
    )
    port map (
      ADR3 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(5),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      ADR2 => sinus0_I1(0),
      O => N333
    );
  sinus0_Mmux_mux_varindex0001311324 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y96",
      INIT => X"0000000000000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1(3),
      ADR2 => sinus0_I1(4),
      ADR5 => N333,
      O => sinus0_Mmux_mux_varindex0001311324_5828
    );
  sinus0_Mmux_mux_varindex0001290314_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y96",
      INIT => X"FFC03FFFFC00FFCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => sinus0_I1(2),
      ADR2 => sinus0_I1(1),
      ADR1 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(4),
      O => N351
    );
  sinus0_Mmux_mux_varindex0001290314 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y96",
      INIT => X"C0C8C0C0C088C080"
    )
    port map (
      ADR1 => sinus0_I1(5),
      ADR2 => sinus0_I1(7),
      ADR3 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(3),
      ADR5 => N352,
      ADR4 => N351,
      O => sinus0_Mmux_mux_varindex0001290314_5717
    );
  sinus0_Mmux_mux_varindex0001290314_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y100",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      ADR2 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(2),
      O => N352
    );
  ctrlr0_current_state_FSM_FFd2_ctrlr0_current_state_FSM_FFd2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_current_state_cmp_eq0001,
      O => ctrlr0_current_state_cmp_eq0001_0
    );
  ctrlr0_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ctrlr0_current_state_FSM_FFd2_CLK,
      I => ctrlr0_current_state_FSM_FFd2_In,
      O => ctrlr0_current_state_FSM_FFd2_5292,
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_current_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => X"B0C0B000B0C0B000"
    )
    port map (
      ADR2 => m_a_IBUF_5289,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR4 => ctrlr0_dtmf_done_5291,
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => rts_IBUF_5293,
      ADR5 => '1',
      O => ctrlr0_current_state_FSM_FFd2_In
    );
  ctrlr0_current_state_FSM_Out31 : X_LUT5
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => '1',
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR4 => '1',
      O => ctrlr0_current_state_cmp_eq0001
    );
  ctrlr0_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ctrlr0_current_state_FSM_FFd1_CLK,
      I => ctrlr0_current_state_FSM_FFd1_In,
      O => ctrlr0_current_state_FSM_FFd1_5290,
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_current_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => X"A0A0A0A000C0F0C0"
    )
    port map (
      ADR2 => m_a_IBUF_5289,
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR1 => dtr_IBUF_6152,
      ADR3 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR4 => ctrlr0_dtmf_done_5291,
      ADR0 => rts_IBUF_5293,
      O => ctrlr0_current_state_FSM_FFd1_In
    );
  ctrlr0_freq_mux0002_1_ctrlr0_freq_mux0002_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002(1),
      O => ctrlr0_freq_mux0002_1_0
    );
  ctrlr0_freq_mux0002_1_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y88"
    )
    port map (
      IA => ctrlr0_freq_mux0002_1_2_3920,
      IB => ctrlr0_freq_mux0002_1_1_3933,
      O => ctrlr0_freq_mux0002(1),
      SEL => ctrlr0_dtmf_count(1)
    );
  ctrlr0_freq_mux0002_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y88",
      INIT => X"00AA000000A000A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR5 => ctrlr0_dtmf_count(0),
      ADR4 => no_9_IBUF_6197,
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => no_13_IBUF_6229,
      O => ctrlr0_freq_mux0002_1_2_3920
    );
  ctrlr0_freq_mux0002_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y88",
      INIT => X"00AA000000A000A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR5 => ctrlr0_dtmf_count(0),
      ADR4 => no_1_IBUF_6173,
      ADR0 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => no_5_IBUF_6185,
      O => ctrlr0_freq_mux0002_1_1_3933
    );
  ctrlr0_freq_mux0002_0_ctrlr0_freq_mux0002_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002(0),
      O => ctrlr0_freq_mux0002_0_0
    );
  ctrlr0_freq_mux0002_0_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y90"
    )
    port map (
      IA => ctrlr0_freq_mux0002_0_2_3935,
      IB => ctrlr0_freq_mux0002_0_1_3942,
      O => ctrlr0_freq_mux0002(0),
      SEL => ctrlr0_dtmf_count(1)
    );
  ctrlr0_freq_mux0002_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y90",
      INIT => X"3120000031200000"
    )
    port map (
      ADR5 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => ctrlr0_dtmf_count(0),
      ADR2 => no_8_IBUF_6194,
      ADR4 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR3 => no_12_IBUF_6226,
      O => ctrlr0_freq_mux0002_0_2_3935
    );
  ctrlr0_freq_mux0002_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y90",
      INIT => X"3311000022000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => ctrlr0_dtmf_count(0),
      ADR3 => no_0_IBUF_6170,
      ADR4 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR5 => no_4_IBUF_6182,
      O => ctrlr0_freq_mux0002_0_1_3942
    );
  sinus0_mux_mux0001_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y92",
      INIT => X"00000F0F0F00000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR2 => sinus0_I1(8),
      ADR4 => sinus0_Mmux_mux_varindex0001248,
      ADR5 => sinus0_Mmux_mux_varindex0001120,
      O => sinus0_mux_mux0001(1)
    );
  sinus0_mux_mux0001_3_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y92",
      INIT => X"CF3FC030C030CF3F"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I1(6),
      ADR3 => sinus0_Mmux_mux_varindex0001310,
      ADR1 => sinus0_Mmux_mux_varindex0001358,
      ADR4 => sinus0_Mmux_mux_varindex0001342,
      ADR5 => sinus0_Mmux_mux_varindex0001289,
      O => N251
    );
  sinus0_mux_mux0001_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X67Y92",
      INIT => X"0411541144114411"
    )
    port map (
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR0 => sinus0_I1(8),
      ADR1 => N250_0,
      ADR5 => sinus0_Mmux_mux_varindex0001248,
      ADR2 => sinus0_Mmux_mux_varindex0001120,
      ADR4 => N251,
      O => sinus0_mux_mux0001(3)
    );
  sinus0_Mmux_mux_varindex0001418_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y93",
      INIT => X"FFFFFFFEFEFEFEF4"
    )
    port map (
      ADR2 => sinus0_I1(5),
      ADR1 => sinus0_I1(7),
      ADR0 => sinus0_I1(4),
      ADR5 => ctrlr0_freq(3),
      ADR4 => ctrlr0_freq(2),
      ADR3 => sinus0_N2,
      O => N55
    );
  sinus0_Mmux_mux_varindex00011211641 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y93",
      INIT => X"CC00CC0000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => sinus0_I1(2),
      ADR1 => sinus0_I1(0),
      ADR3 => sinus0_I1(1),
      O => sinus0_N555
    );
  sinus0_mux_mux0001_5_221 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y93",
      INIT => X"00C0008000000000"
    )
    port map (
      ADR1 => sinus0_Mmux_mux_varindex0001381,
      ADR0 => sinus0_Mmux_mux_varindex00011211079_5755,
      ADR2 => sinus0_Mmux_mux_varindex0001342,
      ADR4 => sinus0_Mmux_mux_varindex00011211632_5756,
      ADR3 => N293,
      ADR5 => sinus0_Mmux_mux_varindex0001248,
      O => sinus0_N572
    );
  sinus0_mux_mux0001_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y93",
      INIT => X"0105030F0000030F"
    )
    port map (
      ADR2 => sinus0_I1(8),
      ADR5 => sinus0_I1(7),
      ADR0 => sinus0_N441,
      ADR1 => sinus0_Mmux_mux_varindex0001120,
      ADR4 => sinus0_N572,
      ADR3 => N299,
      O => sinus0_mux_mux0001_9_mand
    );
  sinus0_mux_mux0001_5_51 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y94",
      INIT => X"078F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => sinus0_Mmux_mux_varindex0001381,
      ADR2 => N247,
      ADR1 => sinus0_Mmux_mux_varindex0001342,
      ADR3 => N248,
      ADR4 => sinus0_Mmux_mux_varindex0001248,
      ADR5 => sinus0_Mmux_mux_varindex0001120,
      O => sinus0_mux_mux0001_5_51_5764
    );
  sinus0_mux_mux0001_4_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y94",
      INIT => X"CCFFCCFFFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR1 => sinus0_I1(8),
      ADR5 => sinus0_Mmux_mux_varindex0001381,
      O => N77
    );
  sinus0_Mmux_mux_varindex0001394_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y94",
      INIT => X"8101810591119115"
    )
    port map (
      ADR0 => sinus0_I1(5),
      ADR1 => sinus0_I1(4),
      ADR2 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_N2,
      ADR5 => sinus0_N115,
      O => N59
    );
  sinus0_Mmux_mux_varindex0001394 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y94",
      INIT => X"A8FFA0A0A8FFFFFF"
    )
    port map (
      ADR0 => sinus0_I1(7),
      ADR4 => sinus0_I1(3),
      ADR2 => sinus0_N238,
      ADR1 => sinus0_N555,
      ADR5 => N58,
      ADR3 => N59,
      O => sinus0_Mmux_mux_varindex0001393
    );
  sinus0_Mmux_mux_varindex00011211632 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y95",
      INIT => X"3333333333333330"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I1(5),
      ADR5 => sinus0_Mmux_mux_varindex00011211329_5842,
      ADR4 => sinus0_Mmux_mux_varindex00011211592_5862,
      ADR2 => sinus0_Mmux_mux_varindex00011211474_5853,
      ADR3 => sinus0_Mmux_mux_varindex00011211208_5899,
      O => sinus0_Mmux_mux_varindex00011211632_5756
    );
  sinus0_Mmux_mux_varindex00011211675 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y95",
      INIT => X"FFFF7575FFAA7520"
    )
    port map (
      ADR0 => sinus0_I1(6),
      ADR1 => sinus0_I1(5),
      ADR2 => sinus0_Mmux_mux_varindex0001121656_5900,
      ADR4 => sinus0_Mmux_mux_varindex0001121254_5757,
      ADR3 => sinus0_Mmux_mux_varindex00011211079_5755,
      ADR5 => sinus0_Mmux_mux_varindex00011211632_5756,
      O => sinus0_Mmux_mux_varindex0001120
    );
  sinus0_mux_mux0001_5_30_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y95",
      INIT => X"FFFFFF73FF73FF73"
    )
    port map (
      ADR1 => sinus0_signe_dtmf1_5579,
      ADR3 => sinus0_I1(6),
      ADR2 => sinus0_I1(7),
      ADR0 => sinus0_N441,
      ADR5 => sinus0_Mmux_mux_varindex0001381,
      ADR4 => sinus0_Mmux_mux_varindex0001342,
      O => N410
    );
  sinus0_mux_mux0001_5_30 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y95",
      INIT => X"010FEF0F0F0F0F0F"
    )
    port map (
      ADR1 => sinus0_Mmux_mux_varindex00011211079_5755,
      ADR2 => N409,
      ADR0 => sinus0_Mmux_mux_varindex00011211632_5756,
      ADR3 => sinus0_Mmux_mux_varindex0001289,
      ADR5 => sinus0_Mmux_mux_varindex0001248,
      ADR4 => N410,
      O => sinus0_mux_mux0001_5_30_5805
    );
  sinus0_Mmux_mux_varindex0001418_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y96",
      INIT => X"FFFFFAFAFFFFEAE8"
    )
    port map (
      ADR4 => sinus0_I1(5),
      ADR3 => sinus0_I1(7),
      ADR2 => sinus0_I1(4),
      ADR0 => ctrlr0_freq(3),
      ADR5 => ctrlr0_freq(2),
      ADR1 => sinus0_N2,
      O => N56
    );
  sinus0_Mmux_mux_varindex0001418 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y96",
      INIT => X"F0F3F4F7F8FBFCFF"
    )
    port map (
      ADR1 => sinus0_I1(3),
      ADR0 => sinus0_N555,
      ADR2 => sinus0_N530,
      ADR3 => N54,
      ADR4 => N55,
      ADR5 => N56,
      O => sinus0_Mmux_mux_varindex0001417
    );
  sinus0_mux_mux0001_4_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y96",
      INIT => X"FCFCCFFCCFFCCFFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_signe_dtmf1_5579,
      ADR1 => sinus0_I1(8),
      ADR4 => sinus0_Mmux_mux_varindex0001358,
      ADR2 => sinus0_Mmux_mux_varindex0001393,
      ADR5 => sinus0_Mmux_mux_varindex0001310,
      O => N76
    );
  sinus0_Mmux_mux_varindex0001311335 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y96",
      INIT => X"FFFFFFFFFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_Mmux_mux_varindex00013118,
      ADR4 => sinus0_Mmux_mux_varindex000131137_5867,
      ADR5 => sinus0_Mmux_mux_varindex000131186_5946,
      ADR1 => sinus0_Mmux_mux_varindex0001311324_5828,
      ADR3 => sinus0_Mmux_mux_varindex0001311220_5826,
      O => sinus0_Mmux_mux_varindex0001310
    );
  sinus0_Mmux_mux_varindex0001382170 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y97",
      INIT => X"FFFFFFFFFFFFFFFA"
    )
    port map (
      ADR1 => '1',
      ADR5 => sinus0_Mmux_mux_varindex000138259_5864,
      ADR0 => sinus0_Mmux_mux_varindex000138219_5912,
      ADR3 => sinus0_Mmux_mux_varindex000138240_5879,
      ADR2 => N379,
      ADR4 => N339,
      O => sinus0_Mmux_mux_varindex0001381
    );
  sinus0_Mmux_mux_varindex0001382170_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y97",
      INIT => X"8D0FAF0F050F270F"
    )
    port map (
      ADR0 => sinus0_I1(4),
      ADR2 => N399,
      ADR3 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(7),
      ADR4 => N400,
      ADR5 => N401,
      O => N339
    );
  sinus0_Mmux_mux_varindex0001290478 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y97",
      INIT => X"F0F0F0F0C0C0C000"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I1(2),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_Mmux_mux_varindex0001290425_5951,
      ADR3 => sinus0_Mmux_mux_varindex0001290390_6045,
      ADR5 => sinus0_Mmux_mux_varindex0001290364_0,
      O => sinus0_Mmux_mux_varindex0001290478_5719
    );
  sinus0_Mmux_mux_varindex0001290390 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y97",
      INIT => X"FCCCCCCCFCCCDCCC"
    )
    port map (
      ADR1 => sinus0_I1(7),
      ADR0 => sinus0_I1(4),
      ADR2 => sinus0_I1(3),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_N578,
      ADR5 => sinus0_N69,
      O => sinus0_Mmux_mux_varindex0001290390_6045
    );
  sinus0_Mmux_mux_varindex000131181 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y98",
      INIT => X"FF00FF08FF00FF00"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR5 => sinus0_I1(2),
      ADR1 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(5),
      ADR2 => sinus0_I1(4),
      ADR4 => ctrlr0_freq(2),
      O => sinus0_Mmux_mux_varindex00013118
    );
  sinus0_Mmux_mux_varindex0001311220_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y98",
      INIT => X"CCFB333313333337"
    )
    port map (
      ADR1 => sinus0_I1(4),
      ADR4 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(2),
      ADR2 => sinus0_I1(1),
      ADR3 => sinus0_I1(5),
      ADR0 => sinus0_I1(0),
      O => N355
    );
  sinus0_Mmux_mux_varindex0001311220 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y98",
      INIT => X"00000C0C03030F0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => sinus0_I1(3),
      ADR2 => ctrlr0_freq(3),
      ADR5 => N354,
      ADR4 => N355,
      O => sinus0_Mmux_mux_varindex0001311220_5826
    );
  sinus0_Mmux_mux_varindex0001290490_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y98",
      INIT => X"FFFFFFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1(7),
      ADR5 => sinus0_I1(6),
      O => N307
    );
  sinus0_Mmux_mux_varindex000129063_sinus0_Mmux_mux_varindex000129063_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001290137_4117,
      O => sinus0_Mmux_mux_varindex0001290137_0
    );
  sinus0_Mmux_mux_varindex0001290137 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y99"
    )
    port map (
      IA => N562,
      IB => N563,
      O => sinus0_Mmux_mux_varindex0001290137_4117,
      SEL => sinus0_I1(7)
    );
  sinus0_Mmux_mux_varindex000129063 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y99",
      INIT => X"00000E0000000000"
    )
    port map (
      ADR2 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(5),
      ADR1 => sinus0_I1(1),
      ADR0 => sinus0_I1(0),
      O => sinus0_Mmux_mux_varindex000129063_5876
    );
  sinus0_Mmux_mux_varindex0001290137_F : X_LUT6
    generic map(
      LOC => "SLICE_X67Y99",
      INIT => X"0000004000000000"
    )
    port map (
      ADR0 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(4),
      ADR5 => sinus0_I1(1),
      ADR2 => sinus0_I1(3),
      ADR1 => sinus0_I1(5),
      O => N562
    );
  sinus0_Mmux_mux_varindex0001290137_G : X_LUT6
    generic map(
      LOC => "SLICE_X67Y99",
      INIT => X"0000004000000050"
    )
    port map (
      ADR0 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(3),
      ADR4 => sinus0_I1(4),
      ADR1 => sinus0_I1(5),
      ADR5 => sinus0_I1(1),
      O => N563
    );
  sinus0_Mmux_mux_varindex0001382170_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y100",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_freq(3),
      ADR4 => sinus0_I1_5_1_5432,
      O => N399
    );
  sinus0_Mmux_mux_varindex00012491491_sinus0_Mmux_mux_varindex00012491491_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex00012491491_4143,
      O => sinus0_Mmux_mux_varindex00012491491_0
    );
  sinus0_Mmux_mux_varindex00012491491 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y101"
    )
    port map (
      IA => N538,
      IB => N539,
      O => sinus0_Mmux_mux_varindex00012491491_4143,
      SEL => sinus0_I1(3)
    );
  sinus0_Mmux_mux_varindex00012491491_F : X_LUT6
    generic map(
      LOC => "SLICE_X67Y101",
      INIT => X"0F3FC1F30E2CD1F3"
    )
    port map (
      ADR1 => sinus0_I1(7),
      ADR4 => sinus0_I1(4),
      ADR0 => sinus0_I1(0),
      ADR5 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(1),
      ADR2 => ctrlr0_freq(2),
      O => N538
    );
  sinus0_Mmux_mux_varindex00012491491_G : X_LUT6
    generic map(
      LOC => "SLICE_X67Y101",
      INIT => X"0555015500005555"
    )
    port map (
      ADR0 => sinus0_I1(7),
      ADR5 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(4),
      ADR3 => sinus0_I1(1),
      ADR2 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(0),
      O => N539
    );
  ctrlr0_dtmf_count_cmp_ge0000210 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y112",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => ctrlr0_dtmf_count_add0000_9_0,
      ADR3 => ctrlr0_dtmf_count_add0000_8_0,
      ADR4 => ctrlr0_dtmf_count_add0000_7_0,
      ADR2 => ctrlr0_dtmf_count_add0000_6_0,
      ADR0 => ctrlr0_dtmf_count_add0000_5_0,
      ADR1 => ctrlr0_dtmf_count_add0000_4_0,
      O => ctrlr0_dtmf_count_cmp_ge0000210_5398
    );
  ctrlr0_dtmf_done : X_FF
    generic map(
      LOC => "SLICE_X67Y112",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_dtmf_done_and0000_0,
      CLK => NlwBufferSignal_ctrlr0_dtmf_done_CLK,
      I => ctrlr0_dtmf_done_mux0001,
      O => ctrlr0_dtmf_done_5291,
      SET => GND,
      RST => GND
    );
  ctrlr0_dtmf_done_mux00011 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y112",
      INIT => X"0F0F0F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      ADR5 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR2 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      O => ctrlr0_dtmf_done_mux0001
    );
  ctrlr0_counter1_11 : X_FF
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_11_CLK,
      I => ctrlr0_counter1_mux0002(3),
      O => ctrlr0_counter1(11),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => X"0B0B00000B0B0000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_synchronised_add0000_11_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(3)
    );
  ctrlr0_counter1_10 : X_FF
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_10_CLK,
      I => ctrlr0_counter1_mux0002(4),
      O => ctrlr0_counter1(10),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => X"0B0B00000B0B0000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_synchronised_add0000_10_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(4)
    );
  ctrlr0_counter1_9 : X_FF
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_9_CLK,
      I => ctrlr0_counter1_mux0002(5),
      O => ctrlr0_counter1(9),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => X"0000F0F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_9_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(5)
    );
  ctrlr0_counter1_8 : X_FF
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_8_CLK,
      I => ctrlr0_counter1_mux0002(6),
      O => ctrlr0_counter1(8),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y61",
      INIT => X"0000AAAA000000AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => ctrlr0_synchronised_add0000_8_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(6)
    );
  ctrlr0_synchronised : X_FF
    generic map(
      LOC => "SLICE_X68Y63",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_synchronised_and0000_5695,
      CLK => NlwBufferSignal_ctrlr0_synchronised_CLK,
      I => ctrlr0_synchronised_and0002,
      O => ctrlr0_synchronised_5462,
      SET => GND,
      RST => GND
    );
  ctrlr0_synchronised_and00021 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y63",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ctrlr0_synchronised_5462,
      ADR4 => '1',
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      O => ctrlr0_synchronised_and0002
    );
  ctrlr0_ask_count_and0000_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y64",
      INIT => X"4444F4F44444F4F4"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_synchronised_5462,
      O => ctrlr0_ask_count_and0000_inv
    );
  ctrlr0_ask_count_14_ctrlr0_ask_count_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_synchronised_cmp_lt0000144_4213,
      O => ctrlr0_synchronised_cmp_lt0000144_0
    );
  ctrlr0_synchronised_cmp_lt0000144 : X_LUT5
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"00000055"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ctrlr0_synchronised_add0001_9_0,
      ADR4 => ctrlr0_synchronised_add0001_8_0,
      ADR0 => ctrlr0_synchronised_add0001_10_0,
      O => ctrlr0_synchronised_cmp_lt0000144_4213
    );
  ctrlr0_ask_count_14 : X_FF
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_14_CLK,
      I => ctrlr0_Mcount_ask_count14,
      O => ctrlr0_ask_count(14),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X68Y68"
    )
    port map (
      CI => ctrlr0_Mcount_ask_count_cy_11_Q_5477,
      CYINIT => '0',
      CO(3) => NLW_ctrlr0_Mcount_ask_count_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_ctrlr0_Mcount_ask_count_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_ctrlr0_Mcount_ask_count_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_ctrlr0_Mcount_ask_count_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_ctrlr0_Mcount_ask_count_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_ctrlr0_Mcount_ask_count_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ctrlr0_Mcount_ask_count_xor_14_O_3_UNCONNECTED,
      O(2) => ctrlr0_Mcount_ask_count14,
      O(1) => ctrlr0_Mcount_ask_count13,
      O(0) => ctrlr0_Mcount_ask_count12,
      S(3) => NLW_ctrlr0_Mcount_ask_count_xor_14_S_3_UNCONNECTED,
      S(2) => ctrlr0_Mcount_ask_count_lut(14),
      S(1) => ctrlr0_Mcount_ask_count_lut(13),
      S(0) => ctrlr0_Mcount_ask_count_lut(12)
    );
  ctrlr0_Mcount_ask_count_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"5500DD000000CC00"
    )
    port map (
      ADR2 => '1',
      ADR5 => ctrlr0_synchronised_cmp_lt00002,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_ask_count(14),
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_synchronised_5462,
      O => ctrlr0_Mcount_ask_count_lut(14)
    );
  ctrlr0_ask_count_13 : X_FF
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_13_CLK,
      I => ctrlr0_Mcount_ask_count13,
      O => ctrlr0_ask_count(13),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"0A008A880A008A88"
    )
    port map (
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR4 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR0 => ctrlr0_ask_count(13),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(13)
    );
  N0_88_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_88_SLICEL_B5LUT_O_UNCONNECTED
    );
  ctrlr0_ask_count_12 : X_FF
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_ask_count_and0001,
      CLK => NlwBufferSignal_ctrlr0_ask_count_12_CLK,
      I => ctrlr0_Mcount_ask_count12,
      O => ctrlr0_ask_count(12),
      SET => GND,
      RST => GND
    );
  ctrlr0_Mcount_ask_count_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"0C008C880C008C88"
    )
    port map (
      ADR0 => ctrlr0_synchronised_cmp_lt00002,
      ADR4 => ctrlr0_synchronised_add0001_14_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR1 => ctrlr0_ask_count(12),
      ADR2 => ctrlr0_synchronised_5462,
      ADR5 => '1',
      O => ctrlr0_Mcount_ask_count_lut(12)
    );
  N0_89_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_89_SLICEL_A5LUT_O_UNCONNECTED
    );
  ctrlr0_synchronised_cmp_lt0000124 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y69",
      INIT => X"0001000500010005"
    )
    port map (
      ADR5 => '1',
      ADR4 => ctrlr0_synchronised_add0001_3_0,
      ADR0 => ctrlr0_synchronised_add0001_4_0,
      ADR3 => ctrlr0_synchronised_add0001_5_0,
      ADR2 => ctrlr0_synchronised_add0001_6_0,
      ADR1 => ctrlr0_synchronised_add0001_2_0,
      O => ctrlr0_synchronised_cmp_lt0000124_6048
    );
  ctrlr0_synchronised_cmp_lt0000179 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y69",
      INIT => X"0000000000100000"
    )
    port map (
      ADR3 => ctrlr0_synchronised_add0001_7_0,
      ADR1 => ctrlr0_synchronised_add0001_12_0,
      ADR2 => ctrlr0_synchronised_cmp_lt0000144_0,
      ADR0 => ctrlr0_synchronised_add0001_13_0,
      ADR4 => ctrlr0_synchronised_cmp_lt0000124_6048,
      ADR5 => ctrlr0_synchronised_add0001_11_0,
      O => ctrlr0_synchronised_cmp_lt00002
    );
  ctrlr0_ask_en : X_FF
    generic map(
      LOC => "SLICE_X68Y73",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_ask_en_CLK,
      I => ctrlr0_ask_en_mux0003,
      O => ctrlr0_ask_en_5715,
      SET => GND,
      RST => GND
    );
  ctrlr0_ask_en_mux00031 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y73",
      INIT => X"C0C0C0C000008080"
    )
    port map (
      ADR3 => '1',
      ADR0 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_synchronised_5462,
      ADR1 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR2 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR5 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      O => ctrlr0_ask_en_mux0003
    );
  ctrlr0_amp : X_FF
    generic map(
      LOC => "SLICE_X68Y85",
      INIT => '1'
    )
    port map (
      CE => ctrlr0_ask_en_5715,
      CLK => NlwBufferSignal_ctrlr0_amp_CLK,
      I => NlwBufferSignal_ctrlr0_amp_IN,
      O => ctrlr0_amp_5353,
      RST => GND,
      SET => rst_IBUF_5295
    );
  sinus0_Mmux_mux_varindex000134373 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y93",
      INIT => X"FAFAFAFAFAF0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => sinus0_I1(2),
      ADR0 => ctrlr0_freq(3),
      ADR5 => sinus0_Mmux_mux_varindex000134314_5871,
      ADR4 => sinus0_Mmux_mux_varindex000134329_5874,
      ADR2 => sinus0_Mmux_mux_varindex000134369_5875,
      O => sinus0_Mmux_mux_varindex000134373_5667
    );
  sinus0_Mmux_mux_varindex0001343310 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y93",
      INIT => X"FFFFFFFFFFFFA8AA"
    )
    port map (
      ADR0 => sinus0_I1(5),
      ADR1 => sinus0_Mmux_mux_varindex0001343232_5666,
      ADR2 => N151,
      ADR3 => N337_0,
      ADR4 => sinus0_Mmux_mux_varindex0001343145_5665,
      ADR5 => sinus0_Mmux_mux_varindex000134373_5667,
      O => sinus0_Mmux_mux_varindex0001342
    );
  sinus0_Mmux_mux_varindex0001343145_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y93",
      INIT => X"FFFFFFFCFFFFFFC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      ADR1 => sinus0_I1(0),
      ADR2 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(3),
      O => N360
    );
  sinus0_Mmux_mux_varindex0001343145 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y93",
      INIT => X"0000000500150015"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR5 => sinus0_I1(4),
      ADR0 => sinus0_I1(5),
      ADR1 => ctrlr0_freq(2),
      ADR2 => ctrlr0_freq(3),
      ADR4 => N360,
      O => sinus0_Mmux_mux_varindex0001343145_5665
    );
  sinus0_Mmux_mux_varindex000134329 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y94",
      INIT => X"FF08FF00FF55FFFF"
    )
    port map (
      ADR5 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR0 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(5),
      ADR3 => sinus0_I1(7),
      O => sinus0_Mmux_mux_varindex000134329_5874
    );
  sinus0_Mmux_mux_varindex0001359199_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y94",
      INIT => X"C0C00313C0C01313"
    )
    port map (
      ADR4 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(3),
      ADR2 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      ADR3 => sinus0_I1(0),
      O => N363
    );
  sinus0_Mmux_mux_varindex00011211675_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y94",
      INIT => X"F0F0F0F0F0F0F5F4"
    )
    port map (
      ADR2 => sinus0_I1(5),
      ADR0 => sinus0_I1(7),
      ADR1 => sinus0_I1(3),
      ADR3 => N233,
      ADR5 => sinus0_Mmux_mux_varindex0001121372_5870,
      ADR4 => N263,
      O => N301
    );
  sinus0_Mmux_mux_varindex0001121811_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y94",
      INIT => X"FFFCFFFCFFCCFCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(2),
      ADR5 => sinus0_I1(4),
      O => N231
    );
  sinus0_Mmux_mux_varindex0001359199_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y94",
      INIT => X"FFFCCCCCFFCCCCC8"
    )
    port map (
      ADR2 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      ADR4 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      O => N362
    );
  sinus0_Mmux_mux_varindex0001201131 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y99",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(2),
      O => sinus0_N296
    );
  sinus0_Mmux_mux_varindex000138219 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y99",
      INIT => X"0055005500150055"
    )
    port map (
      ADR0 => sinus0_I1(5),
      ADR3 => sinus0_I1(7),
      ADR1 => sinus0_I1(4),
      ADR2 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR5 => sinus0_N296,
      O => sinus0_Mmux_mux_varindex000138219_5912
    );
  sinus0_Mmux_mux_varindex0001121171 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y99",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      O => sinus0_N285
    );
  sinus0_mux_mux0001_5_221_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y97",
      INIT => X"FFFFFFDDFFFFFFDD"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => sinus0_signe_dtmf1_5579,
      ADR3 => sinus0_I1(6),
      ADR0 => sinus0_I1(7),
      ADR4 => sinus0_N441,
      O => N247
    );
  sinus0_C6_dtmf1231 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y97",
      INIT => X"FDF5F5D5A8A0A080"
    )
    port map (
      ADR0 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(5),
      ADR3 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(2),
      ADR4 => N416,
      ADR5 => N50,
      O => sinus0_N441
    );
  sinus0_Mmux_mux_varindex000129051 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y97",
      INIT => X"FFFF8080FFFF80FF"
    )
    port map (
      ADR3 => sinus0_I1(5),
      ADR2 => sinus0_I1(7),
      ADR0 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(3),
      ADR4 => sinus0_Mmux_mux_varindex000129013_5878,
      ADR5 => N218,
      O => sinus0_Mmux_mux_varindex000129051_5718
    );
  sinus0_Mmux_mux_varindex000129051_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y97",
      INIT => X"FFFDFFECFFFFFFEE"
    )
    port map (
      ADR2 => sinus0_I1(7),
      ADR0 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR3 => ctrlr0_freq(2),
      ADR5 => sinus0_N285,
      O => N218
    );
  sinus0_I1_5 : X_FF
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_5_CLK,
      I => sinus0_Mcount_I17_0,
      O => sinus0_I1(5),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux_varindex0001290711 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => X"0000FF0000004000"
    )
    port map (
      ADR1 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR0 => sinus0_I1_5_1_5432,
      ADR3 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(3),
      O => sinus0_Mmux_mux_varindex000129071_5952
    );
  sinus0_I1_0 : X_FF
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_0_CLK,
      I => NlwBufferSignal_sinus0_I1_0_IN,
      O => sinus0_I1(0),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux_varindex0001290425 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => X"454505055D5D0555"
    )
    port map (
      ADR0 => sinus0_I1(3),
      ADR2 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(0),
      ADR4 => sinus0_I1(5),
      ADR1 => sinus0_I1(4),
      O => sinus0_Mmux_mux_varindex0001290425_5951
    );
  sinus0_Mmux_mux_varindex000120161 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1(4),
      ADR5 => sinus0_I1(3),
      O => sinus0_N253
    );
  sinus0_Mmux_mux_varindex000138259 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y98",
      INIT => X"0000000011510050"
    )
    port map (
      ADR0 => sinus0_I1_5_1_5432,
      ADR5 => sinus0_I1(2),
      ADR3 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(2),
      ADR2 => sinus0_N551,
      ADR4 => sinus0_N253,
      O => sinus0_Mmux_mux_varindex000138259_5864
    );
  sinus0_Mmux_mux_varindex0001311132 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y96",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(1),
      ADR4 => sinus0_I1_5_1_5432,
      O => sinus0_N578
    );
  sinus0_eqmax_dtmf192_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y107",
      INIT => X"FF7FFFFFBFFFF7FF"
    )
    port map (
      ADR5 => sinus0_I1(1),
      ADR0 => sinus0_I1(5),
      ADR2 => ctrlr0_freq(2),
      ADR3 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(4),
      ADR1 => sinus0_I1(7),
      O => N38
    );
  ctrlr0_counter1_3 : X_FF
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_3_CLK,
      I => ctrlr0_counter1_mux0002(11),
      O => ctrlr0_counter1(3),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => X"0C0C0C0C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_3_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(11)
    );
  ctrlr0_counter1_2 : X_FF
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_2_CLK,
      I => ctrlr0_counter1_mux0002(12),
      O => ctrlr0_counter1(2),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => X"0C0C0C0C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_2_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(12)
    );
  ctrlr0_counter1_1 : X_FF
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_1_CLK,
      I => ctrlr0_counter1_mux0002(13),
      O => ctrlr0_counter1(1),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => X"0000A2A20000A2A2"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => ctrlr0_synchronised_add0000_1_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR2 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(13)
    );
  ctrlr0_counter1_0 : X_FF
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_0_CLK,
      I => ctrlr0_counter1_mux0002(14),
      O => ctrlr0_counter1(0),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_14_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y57",
      INIT => X"0000B0B00000B0B0"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_synchronised_add0000_0_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(14)
    );
  ctrlr0_counter1_7 : X_FF
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_7_CLK,
      I => ctrlr0_counter1_mux0002(7),
      O => ctrlr0_counter1(7),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => X"0A0A0A0A000A000A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ctrlr0_synchronised_add0000_7_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(7)
    );
  ctrlr0_counter1_6 : X_FF
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_6_CLK,
      I => ctrlr0_counter1_mux0002(8),
      O => ctrlr0_counter1(6),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => X"0C0C0C0C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_6_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR5 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(8)
    );
  ctrlr0_counter1_5 : X_FF
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_5_CLK,
      I => ctrlr0_counter1_mux0002(9),
      O => ctrlr0_counter1(5),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => X"0000A2A20000A2A2"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => ctrlr0_synchronised_add0000_5_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR2 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(9)
    );
  ctrlr0_counter1_4 : X_FF
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_4_CLK,
      I => ctrlr0_counter1_mux0002(10),
      O => ctrlr0_counter1(4),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y58",
      INIT => X"0000B0B00000B0B0"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_synchronised_add0000_4_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(10)
    );
  ctrlr0_synchronised_and0000_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y64",
      INIT => X"BBBBBBBB00000000"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ctrlr0_synchronised_cmp_lt00002,
      ADR5 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_add0001_14_0,
      O => N456
    );
  ctrlr0_synchronised_and0000 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y64",
      INIT => X"4444004000000000"
    )
    port map (
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR3 => ctrlr0_synchronised_5462,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR0 => rst_IBUF_5295,
      ADR4 => N456,
      O => ctrlr0_synchronised_and0000_5695
    );
  ctrlr0_ask_count_and00011 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y65",
      INIT => X"00CC000000080000"
    )
    port map (
      ADR0 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_synchronised_5462,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR4 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => rst_IBUF_5295,
      ADR5 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      O => ctrlr0_ask_count_and0001
    );
  N250_N250_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N250,
      O => N250_0
    );
  N250_N250_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N151_pack_8,
      O => N151
    );
  sinus0_mux_mux0001_3_SW4 : X_MUX2
    generic map(
      LOC => "SLICE_X69Y93"
    )
    port map (
      IA => N564,
      IB => N565,
      O => N250,
      SEL => sinus0_I1(6)
    );
  sinus0_Mmux_mux_varindex0001343200_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X69Y93"
    )
    port map (
      IA => N530,
      IB => N531,
      O => N151_pack_8,
      SEL => sinus0_I1(2)
    );
  sinus0_mux_mux0001_3_SW4_F : X_LUT6
    generic map(
      LOC => "SLICE_X69Y93",
      INIT => X"FFFFFFFFFFFFA8AA"
    )
    port map (
      ADR4 => sinus0_Mmux_mux_varindex0001343145_5665,
      ADR2 => N151,
      ADR0 => sinus0_I1(5),
      ADR1 => sinus0_Mmux_mux_varindex0001343232_5666,
      ADR3 => N337_0,
      ADR5 => sinus0_Mmux_mux_varindex000134373_5667,
      O => N564
    );
  sinus0_mux_mux0001_3_SW4_G : X_LUT6
    generic map(
      LOC => "SLICE_X69Y93",
      INIT => X"FDFDF5FFF8F8F0FA"
    )
    port map (
      ADR5 => sinus0_Mmux_mux_varindex000135950_5660,
      ADR0 => sinus0_I1(5),
      ADR4 => sinus0_I1(3),
      ADR3 => N362,
      ADR1 => N363,
      ADR2 => sinus0_I1(7),
      O => N565
    );
  sinus0_Mmux_mux_varindex0001343200_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X69Y93",
      INIT => X"FF00FF00FF00FE00"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR5 => ctrlr0_freq(3),
      ADR1 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      ADR2 => sinus0_I1(1),
      ADR4 => sinus0_I1(3),
      O => N530
    );
  sinus0_Mmux_mux_varindex0001343200_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X69Y93",
      INIT => X"FF00FF00FF3FFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(7),
      O => N531
    );
  sinus0_Mmux_mux_varindex000135950_sinus0_Mmux_mux_varindex000135950_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N337,
      O => N337_0
    );
  sinus0_Mmux_mux_varindex0001343310_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X68Y95"
    )
    port map (
      IA => N546,
      IB => N547,
      O => N337,
      SEL => sinus0_I1(2)
    );
  sinus0_Mmux_mux_varindex0001343310_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X68Y95",
      INIT => X"CD81CD81CD81CFB3"
    )
    port map (
      ADR2 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(4),
      ADR4 => sinus0_I1(0),
      ADR5 => sinus0_I1(1),
      ADR3 => ctrlr0_freq(2),
      O => N546
    );
  sinus0_Mmux_mux_varindex0001343310_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X68Y95",
      INIT => X"FFF0FF33FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(0),
      ADR2 => sinus0_I1(3),
      ADR1 => sinus0_I1(1),
      ADR3 => sinus0_I1(4),
      O => N547
    );
  sinus0_Mmux_mux_varindex000135950 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y95",
      INIT => X"7E7C7E7CF0F00000"
    )
    port map (
      ADR5 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(3),
      ADR2 => ctrlr0_freq(3),
      ADR3 => sinus0_N2,
      ADR4 => sinus0_N115,
      O => sinus0_Mmux_mux_varindex000135950_5660
    );
  sinus0_Mmux_mux_varindex0001359212 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y95",
      INIT => X"FBFFF8FCF3F7F0F4"
    )
    port map (
      ADR1 => sinus0_I1(5),
      ADR2 => sinus0_I1(7),
      ADR0 => sinus0_I1(3),
      ADR3 => N362,
      ADR5 => N363,
      ADR4 => sinus0_Mmux_mux_varindex000135950_5660,
      O => sinus0_Mmux_mux_varindex0001358
    );
  sinus0_Mmux_mux_varindex0001121372_sinus0_Mmux_mux_varindex0001121372_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N263_pack_13,
      O => N263
    );
  sinus0_Mmux_mux_varindex0001121656_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X69Y95"
    )
    port map (
      IA => N528,
      IB => N529,
      O => N263_pack_13,
      SEL => sinus0_I1(4)
    );
  sinus0_Mmux_mux_varindex0001121372 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y95",
      INIT => X"000000007A571EA0"
    )
    port map (
      ADR1 => sinus0_I1(0),
      ADR4 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(2),
      ADR5 => N205,
      O => sinus0_Mmux_mux_varindex0001121372_5870
    );
  sinus0_Mmux_mux_varindex0001121656 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y95",
      INIT => X"FFFFFFAAFFFFFFAF"
    )
    port map (
      ADR1 => '1',
      ADR0 => sinus0_I1(7),
      ADR2 => sinus0_I1(3),
      ADR5 => N233,
      ADR3 => sinus0_Mmux_mux_varindex0001121372_5870,
      ADR4 => N263,
      O => sinus0_Mmux_mux_varindex0001121656_5900
    );
  sinus0_Mmux_mux_varindex0001121656_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X69Y95",
      INIT => X"71031005A75E4005"
    )
    port map (
      ADR2 => ctrlr0_freq(3),
      ADR1 => sinus0_I1_0_1_5420,
      ADR3 => sinus0_I1(3),
      ADR4 => sinus0_I1(2),
      ADR0 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      O => N528
    );
  sinus0_Mmux_mux_varindex0001121656_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X69Y95",
      INIT => X"8C6B8862084248C6"
    )
    port map (
      ADR5 => sinus0_I1(3),
      ADR1 => sinus0_I1(2),
      ADR3 => sinus0_I1(1),
      ADR0 => ctrlr0_freq(2),
      ADR2 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(0),
      O => N529
    );
  sinus0_Mmux_mux_varindex0001121811_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y96",
      INIT => X"2AFAE7FFAAFAE6FF"
    )
    port map (
      ADR0 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(4),
      ADR5 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(0),
      ADR3 => sinus0_I1(2),
      O => N229
    );
  sinus0_Mmux_mux_varindex000138240 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y96",
      INIT => X"000000F000000010"
    )
    port map (
      ADR4 => sinus0_I1(7),
      ADR0 => sinus0_I1(1),
      ADR1 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(3),
      ADR5 => sinus0_N296,
      ADR2 => sinus0_N253,
      O => sinus0_Mmux_mux_varindex000138240_5879
    );
  sinus0_Mmux_mux_varindex0001121811 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y96",
      INIT => X"FF03CC0333030003"
    )
    port map (
      ADR0 => '1',
      ADR3 => sinus0_I1(7),
      ADR1 => sinus0_I1(1),
      ADR5 => N231,
      ADR4 => N230,
      ADR2 => N229,
      O => sinus0_Mmux_mux_varindex0001121811_6052
    );
  sinus0_Mmux_mux_varindex00011211079 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y96",
      INIT => X"F0F080A0F0F0D0F0"
    )
    port map (
      ADR2 => sinus0_I1(5),
      ADR0 => sinus0_I1(1),
      ADR5 => N303_0,
      ADR1 => N108_0,
      ADR3 => N304,
      ADR4 => sinus0_Mmux_mux_varindex0001121811_6052,
      O => sinus0_Mmux_mux_varindex00011211079_5755
    );
  sinus0_Mmux_mux_varindex0001382170_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y97",
      INIT => X"888880030000003F"
    )
    port map (
      ADR0 => sinus0_I1(5),
      ADR1 => sinus0_I1(7),
      ADR2 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(3),
      ADR4 => sinus0_N264,
      ADR3 => sinus0_N2,
      O => N379
    );
  sinus0_C6_dtmf1231_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y97",
      INIT => X"F0F0F0F0F0A0F0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => sinus0_I1(3),
      ADR5 => sinus0_I1(2),
      ADR0 => sinus0_I1(1),
      ADR3 => sinus0_I1(0),
      O => N416
    );
  sinus0_Mmux_mux_varindex000131186_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y97",
      INIT => X"00FFFFFF00FFFFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => sinus0_I1(5),
      ADR5 => sinus0_I1(1),
      ADR3 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(0),
      O => N335
    );
  sinus0_Mmux_mux_varindex000131186 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y97",
      INIT => X"B050A04000000000"
    )
    port map (
      ADR5 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(3),
      ADR0 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(2),
      ADR4 => N335,
      O => sinus0_Mmux_mux_varindex000131186_5946
    );
  sinus0_Mmux_mux_varindex000131145 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y98",
      INIT => X"F0F0000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1_0_1_5420,
      ADR2 => sinus0_I1_5_1_5432,
      ADR5 => sinus0_I1(1),
      O => sinus0_N232
    );
  sinus0_C6_dtmf1231_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y98",
      INIT => X"F000000080000000"
    )
    port map (
      ADR0 => sinus0_I1(2),
      ADR1 => sinus0_I1(5),
      ADR2 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(3),
      ADR5 => sinus0_N232,
      O => N50
    );
  sinus0_Mmux_mux_varindex0001311220_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y98",
      INIT => X"333377FF3333FFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => sinus0_I1(4),
      ADR4 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(5),
      ADR5 => sinus0_I1(2),
      ADR0 => sinus0_I1(1),
      O => N354
    );
  sinus0_Mmux_mux_varindex000129091 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y99",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => ctrlr0_freq(3),
      ADR3 => sinus0_I1_5_1_5432,
      O => sinus0_N294
    );
  sinus0_Mmux_mux_varindex000129013 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y99",
      INIT => X"C0008C0CC0008000"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR0 => sinus0_I1(2),
      ADR1 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR2 => ctrlr0_freq(2),
      ADR5 => sinus0_N294,
      O => sinus0_Mmux_mux_varindex000129013_5878
    );
  sinus0_Mmux_mux_varindex00012491521 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y99",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(3),
      ADR4 => ctrlr0_freq(3),
      O => sinus0_N551
    );
  sinus0_Mmux_mux_varindex000138291 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y99",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1(5),
      ADR5 => sinus0_I1(7),
      O => sinus0_N579
    );
  sinus0_I1_not0001_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y104",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR5 => '1',
      ADR2 => sinus0_I1(4),
      ADR1 => sinus0_I1(3),
      ADR3 => sinus0_I1(7),
      ADR4 => sinus0_I1(5),
      ADR0 => sinus0_I1(6),
      O => N36
    );
  sinus0_eqmax_dtmf192_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y110",
      INIT => X"FFFFFFFFFFFFFFBF"
    )
    port map (
      ADR3 => ctrlr0_freq(2),
      ADR4 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(1),
      ADR0 => sinus0_I1(4),
      ADR5 => sinus0_I1(5),
      ADR2 => sinus0_I1(7),
      O => N452
    );
  sinus0_Mmux_mux_varindex00011211474_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y95",
      INIT => X"FFFFFCFCCBC3C0C0"
    )
    port map (
      ADR2 => sinus0_I1(3),
      ADR4 => sinus0_I1(2),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(4),
      ADR0 => sinus0_I1(1),
      ADR3 => sinus0_I1(0),
      O => N258
    );
  sinus0_Mmux_mux_varindex00011211474 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y95",
      INIT => X"FF00F0000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(7),
      ADR4 => N257,
      ADR5 => N258,
      O => sinus0_Mmux_mux_varindex00011211474_5853
    );
  sinus0_Mmux_mux_varindex00011211474_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y95",
      INIT => X"CD30CF00CC13CC03"
    )
    port map (
      ADR2 => sinus0_I1(4),
      ADR4 => sinus0_I1(2),
      ADR3 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(0),
      ADR0 => sinus0_I1(3),
      O => N257
    );
  sinus0_Mmux_mux_varindex00011211592_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y95",
      INIT => X"80A0FFFF88B9FFFF"
    )
    port map (
      ADR1 => sinus0_I1_0_1_5420,
      ADR0 => sinus0_I1(1),
      ADR2 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(2),
      O => N268
    );
  sinus0_Mcount_I11 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y96",
      INIT => X"00000000AAFAAAFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => sinus0_C6_dtmf1,
      ADR3 => sinus0_I1(8),
      ADR2 => sinus0_N408,
      ADR0 => sinus0_sens_dtmf1_5421,
      O => sinus0_Mcount_I11_5425
    );
  sinus0_Mmux_mux_varindex000124811 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y96",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_I1_0_1_5420,
      ADR4 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      O => sinus0_N2
    );
  sinus0_Mmux_mux_varindex0001343232 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y96",
      INIT => X"1500550005005500"
    )
    port map (
      ADR3 => sinus0_I1(4),
      ADR0 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_N69,
      ADR2 => sinus0_N2,
      O => sinus0_Mmux_mux_varindex0001343232_5666
    );
  sinus0_Mmux_mux_varindex000124831 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y96",
      INIT => X"00FF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => sinus0_I1(0),
      ADR3 => sinus0_I1(1),
      O => sinus0_N69
    );
  sinus0_Mmux_mux_varindex000124821 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y99",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1_0_1_5420,
      ADR4 => sinus0_I1(1),
      O => sinus0_N38
    );
  sinus0_Mcount_I1_xor_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X70Y99"
    )
    port map (
      CI => sinus0_Mcount_I1_cy_7_Q_5435,
      CYINIT => '0',
      CO(3) => NLW_sinus0_Mcount_I1_xor_8_CO_3_UNCONNECTED,
      CO(2) => NLW_sinus0_Mcount_I1_xor_8_CO_2_UNCONNECTED,
      CO(1) => NLW_sinus0_Mcount_I1_xor_8_CO_1_UNCONNECTED,
      CO(0) => NLW_sinus0_Mcount_I1_xor_8_CO_0_UNCONNECTED,
      DI(3) => NLW_sinus0_Mcount_I1_xor_8_DI_3_UNCONNECTED,
      DI(2) => NLW_sinus0_Mcount_I1_xor_8_DI_2_UNCONNECTED,
      DI(1) => NLW_sinus0_Mcount_I1_xor_8_DI_1_UNCONNECTED,
      DI(0) => NLW_sinus0_Mcount_I1_xor_8_DI_0_UNCONNECTED,
      O(3) => NLW_sinus0_Mcount_I1_xor_8_O_3_UNCONNECTED,
      O(2) => NLW_sinus0_Mcount_I1_xor_8_O_2_UNCONNECTED,
      O(1) => NLW_sinus0_Mcount_I1_xor_8_O_1_UNCONNECTED,
      O(0) => sinus0_Mcount_I110,
      S(3) => NLW_sinus0_Mcount_I1_xor_8_S_3_UNCONNECTED,
      S(2) => NLW_sinus0_Mcount_I1_xor_8_S_2_UNCONNECTED,
      S(1) => NLW_sinus0_Mcount_I1_xor_8_S_1_UNCONNECTED,
      S(0) => sinus0_Mcount_I1_lut(8)
    );
  sinus0_Mmux_mux_varindex000134314 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y99",
      INIT => X"F000FF0FF000FC0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(2),
      ADR3 => sinus0_I1(7),
      ADR5 => sinus0_I1(3),
      O => sinus0_Mmux_mux_varindex000134314_5871
    );
  sinus0_Mmux_mux_varindex0001249692 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y99",
      INIT => X"0000060000000E00"
    )
    port map (
      ADR1 => sinus0_I1(7),
      ADR0 => sinus0_I1(2),
      ADR3 => sinus0_I1(4),
      ADR2 => sinus0_I1(3),
      ADR4 => ctrlr0_freq(2),
      ADR5 => sinus0_N38,
      O => sinus0_Mmux_mux_varindex0001249692_5873
    );
  sinus0_I1_8 : X_FF
    generic map(
      LOC => "SLICE_X70Y99",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_8_CLK,
      I => sinus0_Mcount_I110,
      O => sinus0_I1(8),
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mcount_I1_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X70Y99",
      INIT => X"33EE33EE00000000"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => sinus0_C6_dtmf1_inv,
      ADR3 => sinus0_I1(8),
      ADR1 => sinus0_sens_dtmf1_5421,
      ADR0 => sinus0_N408,
      O => sinus0_Mcount_I1_lut(8)
    );
  ctrlr0_Mrom_transmission_count8_ctrlr0_Mrom_transmission_count8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_Mrom_transmission_count13,
      O => ctrlr0_Mrom_transmission_count13_0
    );
  ctrlr0_Mrom_transmission_count8_ctrlr0_Mrom_transmission_count8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_Mrom_transmission_count7,
      O => ctrlr0_Mrom_transmission_count7_0
    );
  ctrlr0_Mrom_transmission_count81 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y59",
      INIT => X"5F5F5F5F5F5F5F5F"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => tb_0_IBUF_5346,
      ADR2 => tb_1_IBUF_5298,
      ADR5 => '1',
      O => ctrlr0_Mrom_transmission_count8
    );
  ctrlr0_Mrom_transmission_count131 : X_LUT5
    generic map(
      LOC => "SLICE_X71Y59",
      INIT => X"05050505"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => tb_0_IBUF_5346,
      ADR2 => tb_1_IBUF_5298,
      O => ctrlr0_Mrom_transmission_count13
    );
  ctrlr0_Mrom_transmission_count121 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y59",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => tb_0_IBUF_5346,
      ADR2 => tb_1_IBUF_5298,
      ADR5 => '1',
      O => ctrlr0_Mrom_transmission_count12
    );
  ctrlr0_Mrom_transmission_count71 : X_LUT5
    generic map(
      LOC => "SLICE_X71Y59",
      INIT => X"FAFAFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => tb_0_IBUF_5346,
      ADR2 => tb_1_IBUF_5298,
      O => ctrlr0_Mrom_transmission_count7
    );
  ctrlr0_counter1_14 : X_FF
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_14_CLK,
      I => ctrlr0_counter1_mux0002(0),
      O => ctrlr0_counter1(14),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => X"0A0A02020A0A0202"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => ctrlr0_synchronised_add0000_14_0,
      ADR1 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR2 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR4 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(0)
    );
  ctrlr0_counter1_13 : X_FF
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_13_CLK,
      I => ctrlr0_counter1_mux0002(1),
      O => ctrlr0_counter1(13),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => X"00000000C0CCC0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrlr0_synchronised_add0000_13_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR5 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR2 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(1)
    );
  ctrlr0_counter1_12 : X_FF
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_current_state_cmp_eq0001_0,
      CLK => NlwBufferSignal_ctrlr0_counter1_12_CLK,
      I => ctrlr0_counter1_mux0002(2),
      O => ctrlr0_counter1(12),
      SET => GND,
      RST => rst_IBUF_5295
    );
  ctrlr0_counter1_mux0002_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y60",
      INIT => X"0000A0F00000A0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => ctrlr0_synchronised_add0000_12_0,
      ADR3 => ctrlr0_Mcompar_synchronised_cmp_lt0002_cy_6_0,
      ADR4 => ctrlr0_Mcompar_synchronised_cmp_lt0001_cy_6_0,
      ADR0 => ctrlr0_synchronised_5462,
      O => ctrlr0_counter1_mux0002(2)
    );
  ctrlr0_Mrom_transmission_count10_ctrlr0_Mrom_transmission_count10_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_Mrom_transmission_count11_4776,
      O => ctrlr0_Mrom_transmission_count11_0
    );
  ctrlr0_Mrom_transmission_count101 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y61",
      INIT => X"F00FF00FF00FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => tb_1_IBUF_5298,
      ADR3 => tb_0_IBUF_5346,
      ADR5 => '1',
      O => ctrlr0_Mrom_transmission_count10
    );
  ctrlr0_Mrom_transmission_count111 : X_LUT5
    generic map(
      LOC => "SLICE_X71Y61",
      INIT => X"00F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => tb_1_IBUF_5298,
      ADR3 => tb_0_IBUF_5346,
      O => ctrlr0_Mrom_transmission_count11_4776
    );
  sinus0_Mmux_mux_varindex000134369 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y93",
      INIT => X"AAA8000000000000"
    )
    port map (
      ADR2 => sinus0_I1(3),
      ADR4 => sinus0_I1(4),
      ADR0 => sinus0_I1(7),
      ADR5 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(2),
      ADR3 => sinus0_I1(1),
      O => sinus0_Mmux_mux_varindex000134369_5875
    );
  sinus0_Mmux_mux_varindex00011211592_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y94",
      INIT => X"3FFAFEFF3FFFFFFF"
    )
    port map (
      ADR4 => sinus0_I1_0_1_5420,
      ADR3 => sinus0_I1(1),
      ADR2 => sinus0_I1(4),
      ADR0 => ctrlr0_freq(3),
      ADR1 => ctrlr0_freq(2),
      ADR5 => sinus0_I1(3),
      O => N267
    );
  sinus0_Mmux_mux_varindex00011211592 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y94",
      INIT => X"000F0000000F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => sinus0_I1(2),
      ADR4 => sinus0_I1(7),
      ADR3 => N268,
      ADR5 => N267,
      O => sinus0_Mmux_mux_varindex00011211592_5862
    );
  sinus0_Mmux_mux_varindex0001394_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y94",
      INIT => X"0011111100115555"
    )
    port map (
      ADR2 => '1',
      ADR0 => sinus0_I1(5),
      ADR4 => sinus0_I1(4),
      ADR1 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      ADR5 => sinus0_N115,
      O => N58
    );
  sinus0_Mmux_mux_varindex000135921 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y94",
      INIT => X"FFF0FCF0FFF0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I1(3),
      ADR1 => sinus0_I1(1),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(2),
      ADR5 => sinus0_I1(0),
      O => sinus0_N115
    );
  sinus0_Mmux_mux_varindex000112188_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y95",
      INIT => X"3B22BBE22B66BA66"
    )
    port map (
      ADR4 => sinus0_I1(4),
      ADR2 => sinus0_I1(3),
      ADR3 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(0),
      ADR0 => ctrlr0_freq(2),
      O => N255
    );
  sinus0_Mmux_mux_varindex0001121254 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y95",
      INIT => X"AAAAAAAA88A88AAA"
    )
    port map (
      ADR0 => sinus0_I1(5),
      ADR1 => sinus0_I1(7),
      ADR2 => sinus0_I1(2),
      ADR3 => N331,
      ADR4 => N255,
      ADR5 => sinus0_Mmux_mux_varindex0001121133_0,
      O => sinus0_Mmux_mux_varindex0001121254_5757
    );
  sinus0_Mmux_mux_varindex00011211054_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y95",
      INIT => X"8EBE8EBCFFFFFFFC"
    )
    port map (
      ADR1 => sinus0_I1_0_1_5420,
      ADR4 => sinus0_I1(7),
      ADR2 => sinus0_I1(2),
      ADR5 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(3),
      ADR0 => ctrlr0_freq(2),
      O => N214
    );
  sinus0_Mmux_mux_varindex00011211079_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y95",
      INIT => X"F0FF000FFFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => sinus0_I1(7),
      ADR5 => sinus0_I1(2),
      ADR2 => sinus0_I1(3),
      ADR4 => N214,
      O => N304
    );
  sinus0_I1_0_1_sinus0_I1_0_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N108,
      O => N108_0
    );
  sinus0_Mmux_mux_varindex00011211054_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y96"
    )
    port map (
      IA => N526,
      IB => N527,
      O => N108,
      SEL => sinus0_I1(3)
    );
  sinus0_I1_0_1 : X_FF
    generic map(
      LOC => "SLICE_X71Y96",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_0_1_CLK,
      I => NlwBufferSignal_sinus0_I1_0_1_IN,
      O => sinus0_I1_0_1_5420,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux_varindex00011211054_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X71Y96",
      INIT => X"05F705F400F300F2"
    )
    port map (
      ADR0 => sinus0_I1_0_1_5420,
      ADR5 => sinus0_I1(2),
      ADR3 => sinus0_I1(4),
      ADR2 => ctrlr0_freq(3),
      ADR1 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(7),
      O => N526
    );
  sinus0_Mmux_mux_varindex00011211054_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X71Y96",
      INIT => X"0AA80AAB0AA80AA8"
    )
    port map (
      ADR1 => ctrlr0_freq(2),
      ADR0 => sinus0_I1_0_1_5420,
      ADR2 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(4),
      ADR4 => sinus0_I1(7),
      ADR5 => sinus0_I1(2),
      O => N527
    );
  N303_N303_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N303,
      O => N303_0
    );
  N303_N303_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex00011211103_4876,
      O => sinus0_Mmux_mux_varindex00011211103_0
    );
  sinus0_Mmux_mux_varindex00011211079_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y97"
    )
    port map (
      IA => N534,
      IB => N535,
      O => N303,
      SEL => sinus0_I1(0)
    );
  sinus0_Mmux_mux_varindex00011211103 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y97"
    )
    port map (
      IA => '0',
      IB => N555,
      O => sinus0_Mmux_mux_varindex00011211103_4876,
      SEL => sinus0_I1(4)
    );
  sinus0_Mmux_mux_varindex00011211079_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X71Y97",
      INIT => X"FFFFFFFF050FFAFF"
    )
    port map (
      ADR1 => '1',
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(7),
      ADR3 => ctrlr0_freq(2),
      O => N534
    );
  sinus0_Mmux_mux_varindex00011211079_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X71Y97",
      INIT => X"FFFFFFFF0306FA45"
    )
    port map (
      ADR5 => sinus0_I1(2),
      ADR0 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(3),
      ADR1 => sinus0_I1(4),
      ADR2 => sinus0_I1(7),
      O => N535
    );
  N0_107_SLICEL_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X71Y97",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_107_SLICEL_B6LUT_O_UNCONNECTED
    );
  sinus0_Mmux_mux_varindex00011211103_G : X_LUT6
    generic map(
      LOC => "SLICE_X71Y97",
      INIT => X"0A1A00110A1A0010"
    )
    port map (
      ADR2 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(1),
      ADR0 => sinus0_I1(2),
      ADR4 => sinus0_I1(7),
      ADR5 => ctrlr0_freq(3),
      O => N555
    );
  ctrlr0_freq_mux0002_3_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y98"
    )
    port map (
      IA => ctrlr0_freq_mux0002_3_2_4887,
      IB => ctrlr0_freq_mux0002_3_1_4889,
      O => ctrlr0_freq_mux0002(3),
      SEL => ctrlr0_dtmf_count(1)
    );
  sinus0_C6_dtmf1_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y98",
      INIT => X"0505055505051555"
    )
    port map (
      ADR0 => sinus0_I1(8),
      ADR3 => sinus0_I1(6),
      ADR4 => sinus0_N441,
      ADR1 => sinus0_N264,
      ADR5 => N48,
      ADR2 => sinus0_I1(7),
      O => sinus0_C6_dtmf1_inv
    );
  sinus0_Mmux_mux_varindex0001249662 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y98",
      INIT => X"CC00C800C800C800"
    )
    port map (
      ADR2 => sinus0_I1(4),
      ADR3 => sinus0_I1(7),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR5 => sinus0_I1(0),
      ADR0 => ctrlr0_freq(2),
      O => sinus0_Mmux_mux_varindex0001249662_5953
    );
  ctrlr0_freq_mux0002_3_2 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y98",
      INIT => X"00000000CC880088"
    )
    port map (
      ADR2 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => ctrlr0_dtmf_count(0),
      ADR4 => no_11_IBUF_6223,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => no_15_IBUF_6235,
      O => ctrlr0_freq_mux0002_3_2_4887
    );
  ctrlr0_freq_3 : X_FF
    generic map(
      LOC => "SLICE_X71Y98",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_3_CLK,
      I => ctrlr0_freq_mux0002(3),
      O => ctrlr0_freq(3),
      SET => GND,
      RST => GND
    );
  ctrlr0_freq_mux0002_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y98",
      INIT => X"00000000C088C088"
    )
    port map (
      ADR4 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => ctrlr0_dtmf_count(0),
      ADR2 => no_3_IBUF_6179,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => no_7_IBUF_6191,
      O => ctrlr0_freq_mux0002_3_1_4889
    );
  ctrlr0_freq_2_ctrlr0_freq_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001290364_4916,
      O => sinus0_Mmux_mux_varindex0001290364_0
    );
  sinus0_Mmux_mux_varindex0001290364 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y99"
    )
    port map (
      IA => N548,
      IB => N549,
      O => sinus0_Mmux_mux_varindex0001290364_4916,
      SEL => sinus0_I1(5)
    );
  ctrlr0_freq_mux0002_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y99"
    )
    port map (
      IA => ctrlr0_freq_mux0002_2_2_4929,
      IB => ctrlr0_freq_mux0002_2_1_4934,
      O => ctrlr0_freq_mux0002(2),
      SEL => ctrlr0_dtmf_count(1)
    );
  sinus0_Mmux_mux_varindex0001290364_F : X_LUT6
    generic map(
      LOC => "SLICE_X71Y99",
      INIT => X"0000000000000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(3),
      ADR2 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(7),
      O => N548
    );
  sinus0_Mmux_mux_varindex0001290364_G : X_LUT6
    generic map(
      LOC => "SLICE_X71Y99",
      INIT => X"0000040000000C08"
    )
    port map (
      ADR0 => sinus0_I1(0),
      ADR1 => ctrlr0_freq(2),
      ADR2 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(4),
      ADR5 => sinus0_I1(3),
      ADR3 => sinus0_I1(1),
      O => N549
    );
  ctrlr0_freq_mux0002_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y99",
      INIT => X"00000000CC880088"
    )
    port map (
      ADR2 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => ctrlr0_dtmf_count(0),
      ADR4 => no_10_IBUF_6220,
      ADR1 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR0 => no_14_IBUF_6232,
      O => ctrlr0_freq_mux0002_2_2_4929
    );
  ctrlr0_freq_2 : X_FF
    generic map(
      LOC => "SLICE_X71Y99",
      INIT => '0'
    )
    port map (
      CE => ctrlr0_rst_inv,
      CLK => NlwBufferSignal_ctrlr0_freq_2_CLK,
      I => ctrlr0_freq_mux0002(2),
      O => ctrlr0_freq(2),
      SET => GND,
      RST => GND
    );
  ctrlr0_freq_mux0002_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y99",
      INIT => X"00000000AACC0000"
    )
    port map (
      ADR2 => '1',
      ADR5 => ctrlr0_current_state_FSM_FFd2_5292,
      ADR3 => ctrlr0_dtmf_count(0),
      ADR0 => no_2_IBUF_6176,
      ADR4 => ctrlr0_current_state_FSM_FFd1_5290,
      ADR1 => no_6_IBUF_6188,
      O => ctrlr0_freq_mux0002_2_1_4934
    );
  sinus0_I1_not0001 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y102",
      INIT => X"FFFFFFAFFFFFFF8D"
    )
    port map (
      ADR4 => sinus0_C6_dtmf1,
      ADR1 => sinus0_N2,
      ADR0 => sinus0_sens_dtmf1_5421,
      ADR5 => N36,
      ADR2 => sinus0_N408,
      ADR3 => sinus0_I1(8),
      O => sinus0_I1_not0001_5428
    );
  sinus0_eqmax_dtmf192 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y102",
      INIT => X"0000000400C00004"
    )
    port map (
      ADR3 => sinus0_I1(0),
      ADR2 => sinus0_I1(2),
      ADR1 => sinus0_I1(3),
      ADR4 => sinus0_I1(6),
      ADR5 => N452,
      ADR0 => N38,
      O => sinus0_N408
    );
  ctrlr0_dtmf_count_cmp_ge0000211 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y109",
      INIT => X"FAFAFAFAFAFAFAFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count_add0000_3_0,
      ADR0 => ctrlr0_dtmf_count_add0000_2_0,
      O => ctrlr0_dtmf_count_cmp_ge0000211_5782
    );
  sinus0_Mmux_mux_varindex0001121254_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y95",
      INIT => X"A508F188AF77FF77"
    )
    port map (
      ADR0 => sinus0_I1(1),
      ADR3 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(4),
      ADR5 => ctrlr0_freq(2),
      ADR1 => sinus0_I1(0),
      ADR4 => sinus0_I1(3),
      O => N331
    );
  N341_N341_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N341,
      O => N341_0
    );
  sinus0_Mmux_mux_varindex00012491099_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X72Y96"
    )
    port map (
      IA => N524,
      IB => N525,
      O => N341,
      SEL => sinus0_I1(4)
    );
  sinus0_Mmux_mux_varindex00012491099_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X72Y96",
      INIT => X"9C4000CC8C0008E0"
    )
    port map (
      ADR4 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      ADR3 => sinus0_I1(2),
      ADR2 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(3),
      O => N524
    );
  sinus0_Mmux_mux_varindex00012491099_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X72Y96",
      INIT => X"32CC40DC62CCC0BC"
    )
    port map (
      ADR1 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(1),
      ADR2 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(2),
      ADR0 => sinus0_I1(0),
      O => N525
    );
  sinus0_Mmux_mux_varindex00011211208 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y97",
      INIT => X"FFFFFFFFFFFFDC50"
    )
    port map (
      ADR1 => sinus0_I1(1),
      ADR0 => sinus0_N264,
      ADR2 => sinus0_Mmux_mux_varindex00011211122_5896,
      ADR3 => sinus0_Mmux_mux_varindex00011211171_5898,
      ADR4 => sinus0_Mmux_mux_varindex00011211188_6064,
      ADR5 => sinus0_Mmux_mux_varindex00011211103_0,
      O => sinus0_Mmux_mux_varindex00011211208_5899
    );
  sinus0_Mmux_mux_varindex00011211188 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y97",
      INIT => X"0000010100001515"
    )
    port map (
      ADR3 => '1',
      ADR2 => sinus0_I1(7),
      ADR0 => sinus0_I1(4),
      ADR5 => ctrlr0_freq(3),
      ADR1 => sinus0_I1(3),
      ADR4 => sinus0_N2,
      O => sinus0_Mmux_mux_varindex00011211188_6064
    );
  sinus0_Mmux_mux_varindex0001249850 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y97",
      INIT => X"0000000300000C0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => sinus0_I1(7),
      ADR2 => sinus0_I1(4),
      ADR4 => ctrlr0_freq(2),
      ADR5 => N224,
      ADR3 => N223,
      O => sinus0_Mmux_mux_varindex0001249850_6063
    );
  sinus0_Mmux_mux_varindex00012491099 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y97",
      INIT => X"FFFFFFFEFFFFFDFC"
    )
    port map (
      ADR0 => sinus0_I1(7),
      ADR2 => sinus0_Mmux_mux_varindex0001249662_5953,
      ADR1 => sinus0_Mmux_mux_varindex0001249692_5873,
      ADR3 => N341_0,
      ADR5 => N342_0,
      ADR4 => sinus0_Mmux_mux_varindex0001249850_6063,
      O => sinus0_Mmux_mux_varindex00012491099_5909
    );
  sinus0_I1_5_1_sinus0_I1_5_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001249581_pack_8,
      O => sinus0_Mmux_mux_varindex0001249581_6066
    );
  sinus0_Mmux_mux_varindex0001249581 : X_MUX2
    generic map(
      LOC => "SLICE_X72Y98"
    )
    port map (
      IA => '0',
      IB => N541,
      O => sinus0_Mmux_mux_varindex0001249581_pack_8,
      SEL => sinus0_I1(4)
    );
  N0_105_SLICEL_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X72Y98",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_105_SLICEL_D6LUT_O_UNCONNECTED
    );
  sinus0_Mmux_mux_varindex0001249581_G : X_LUT6
    generic map(
      LOC => "SLICE_X72Y98",
      INIT => X"998D020B99CC024B"
    )
    port map (
      ADR4 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(5),
      ADR3 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(0),
      O => N541
    );
  sinus0_Mmux_mux_varindex0001249624 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y98",
      INIT => X"FDFD7575FDA87520"
    )
    port map (
      ADR0 => sinus0_I1(2),
      ADR1 => sinus0_I1(3),
      ADR2 => sinus0_Mmux_mux_varindex0001249373_5950,
      ADR5 => sinus0_Mmux_mux_varindex0001249470_6065,
      ADR4 => sinus0_Mmux_mux_varindex0001249310_0,
      ADR3 => sinus0_Mmux_mux_varindex0001249581_6066,
      O => sinus0_Mmux_mux_varindex0001249624_5908
    );
  sinus0_I1_5_1 : X_FF
    generic map(
      LOC => "SLICE_X72Y98",
      INIT => '0'
    )
    port map (
      CE => sinus0_I1_not0001_5428,
      CLK => NlwBufferSignal_sinus0_I1_5_1_CLK,
      I => NlwBufferSignal_sinus0_I1_5_1_IN,
      O => sinus0_I1_5_1_5432,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_Mmux_mux_varindex0001249470 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y98",
      INIT => X"C0740000C03C0000"
    )
    port map (
      ADR0 => sinus0_I1(4),
      ADR3 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(3),
      ADR4 => sinus0_I1_5_1_5432,
      ADR1 => ctrlr0_freq(2),
      ADR5 => N212,
      O => sinus0_Mmux_mux_varindex0001249470_6065
    );
  sinus0_C4_dtmf1_sinus0_C4_dtmf1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => N342,
      O => N342_0
    );
  sinus0_Mmux_mux_varindex00012491099_SW2 : X_MUX2
    generic map(
      LOC => "SLICE_X73Y99"
    )
    port map (
      IA => N532,
      IB => N533,
      O => N342,
      SEL => sinus0_I1(4)
    );
  sinus0_Mmux_mux_varindex00012491099_SW2_F : X_LUT6
    generic map(
      LOC => "SLICE_X73Y99",
      INIT => X"004000000888BBAA"
    )
    port map (
      ADR0 => ctrlr0_freq(2),
      ADR1 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(0),
      ADR5 => sinus0_I1(2),
      ADR2 => sinus0_I1(1),
      ADR4 => sinus0_I1(3),
      O => N532
    );
  sinus0_Mmux_mux_varindex00012491099_SW2_G : X_LUT6
    generic map(
      LOC => "SLICE_X73Y99",
      INIT => X"AAEA0000A8880808"
    )
    port map (
      ADR0 => ctrlr0_freq(2),
      ADR1 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      ADR2 => sinus0_I1(1),
      ADR3 => sinus0_I1(0),
      ADR5 => sinus0_I1(2),
      O => N533
    );
  sinus0_C4_dtmf11 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y99",
      INIT => X"0000040000000000"
    )
    port map (
      ADR4 => sinus0_I1(6),
      ADR2 => sinus0_I1(8),
      ADR0 => sinus0_N2,
      ADR5 => sinus0_N253,
      ADR1 => sinus0_sens_dtmf1_5421,
      ADR3 => sinus0_N579,
      O => sinus0_C4_dtmf1
    );
  sinus0_C3_dtmf11 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y99",
      INIT => X"FFFF0505FFFF0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => sinus0_sens_dtmf1_5421,
      ADR2 => sinus0_I1(8),
      ADR5 => sinus0_N408,
      ADR4 => sinus0_C4_dtmf1,
      O => sinus0_C3_dtmf1
    );
  ctrlr0_dtmf_count_cmp_ge0000223 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y111",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR3 => ctrlr0_dtmf_count_add0000_14_0,
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000211_5782,
      ADR1 => ctrlr0_dtmf_count_add0000_13_0,
      ADR0 => ctrlr0_dtmf_count_add0000_12_0,
      ADR5 => ctrlr0_dtmf_count_add0000_11_0,
      ADR4 => ctrlr0_dtmf_count_add0000_10_0,
      O => ctrlr0_dtmf_count_cmp_ge0000223_5400
    );
  ctrlr0_dtmf_count_cmp_ge0000_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y111",
      INIT => X"00000F0F00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => ctrlr0_dtmf_count_cmp_ge0000210_5398,
      ADR4 => ctrlr0_dtmf_count_cmp_ge0000223_5400,
      O => ctrlr0_dtmf_count_cmp_ge0000_inv
    );
  sinus0_Mmux_mux_varindex00012491279_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y94",
      INIT => X"AAFFABFFAAFFAFFF"
    )
    port map (
      ADR3 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(3),
      ADR2 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      ADR1 => sinus0_I1(0),
      ADR0 => ctrlr0_freq(3),
      O => N210
    );
  sinus0_Mmux_mux_varindex00012491361_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y95",
      INIT => X"A0A0EC00A0A3EC03"
    )
    port map (
      ADR4 => sinus0_I1(7),
      ADR3 => sinus0_I1(2),
      ADR1 => ctrlr0_freq(3),
      ADR2 => sinus0_I1(3),
      ADR5 => sinus0_I1(0),
      ADR0 => sinus0_I1(4),
      O => N133
    );
  sinus0_Mmux_mux_varindex00012491361 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y95",
      INIT => X"88888A8800000200"
    )
    port map (
      ADR3 => sinus0_I1(7),
      ADR1 => sinus0_I1(1),
      ADR4 => sinus0_I1(4),
      ADR2 => sinus0_I1(3),
      ADR0 => ctrlr0_freq(2),
      ADR5 => N133,
      O => sinus0_Mmux_mux_varindex00012491361_5910
    );
  N233_N233_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001121133_5098,
      O => sinus0_Mmux_mux_varindex0001121133_0
    );
  sinus0_Mmux_mux_varindex0001121133 : X_MUX2
    generic map(
      LOC => "SLICE_X73Y96"
    )
    port map (
      IA => N556,
      IB => N557,
      O => sinus0_Mmux_mux_varindex0001121133_5098,
      SEL => sinus0_I1(4)
    );
  sinus0_Mmux_mux_varindex0001121133_F : X_LUT6
    generic map(
      LOC => "SLICE_X73Y96",
      INIT => X"04080000040000CC"
    )
    port map (
      ADR1 => sinus0_I1(3),
      ADR3 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      ADR2 => ctrlr0_freq(3),
      O => N556
    );
  sinus0_Mmux_mux_varindex0001121133_G : X_LUT6
    generic map(
      LOC => "SLICE_X73Y96",
      INIT => X"0102000001000033"
    )
    port map (
      ADR1 => sinus0_I1(3),
      ADR3 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      ADR2 => ctrlr0_freq(3),
      O => N557
    );
  sinus0_Mmux_mux_varindex0001121307_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y96",
      INIT => X"FFFAFFFF5FFAF5F5"
    )
    port map (
      ADR1 => '1',
      ADR5 => sinus0_I1(4),
      ADR0 => sinus0_I1(0),
      ADR2 => sinus0_I1(1),
      ADR4 => ctrlr0_freq(3),
      ADR3 => ctrlr0_freq(2),
      O => N233
    );
  sinus0_Mmux_mux_varindex0001121811_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y96",
      INIT => X"FFFFFFFCFFFFF80C"
    )
    port map (
      ADR0 => sinus0_I1_0_1_5420,
      ADR1 => sinus0_I1(2),
      ADR3 => sinus0_I1(4),
      ADR4 => ctrlr0_freq(3),
      ADR5 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(3),
      O => N230
    );
  sinus0_Mmux_mux_varindex0001249373 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y97",
      INIT => X"0E1CCE100E1C8810"
    )
    port map (
      ADR0 => sinus0_I1(1),
      ADR1 => ctrlr0_freq(3),
      ADR2 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(5),
      ADR4 => sinus0_I1(4),
      ADR5 => sinus0_I1(0),
      O => sinus0_Mmux_mux_varindex0001249373_5950
    );
  sinus0_Mmux_mux_varindex00011211171 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y97",
      INIT => X"0000FAAA02020000"
    )
    port map (
      ADR0 => sinus0_I1(4),
      ADR4 => sinus0_I1(3),
      ADR5 => ctrlr0_freq(2),
      ADR2 => sinus0_I1(7),
      ADR3 => sinus0_I1(2),
      ADR1 => sinus0_I1(0),
      O => sinus0_Mmux_mux_varindex00011211171_5898
    );
  sinus0_Mmux_mux_varindex00011211122 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y97",
      INIT => X"0033000000E20000"
    )
    port map (
      ADR4 => sinus0_I1(7),
      ADR1 => sinus0_I1(2),
      ADR5 => sinus0_I1(1),
      ADR3 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(0),
      ADR2 => sinus0_I1(3),
      O => sinus0_Mmux_mux_varindex00011211122_5896
    );
  sinus0_Mmux_mux_varindex0001249850_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y97",
      INIT => X"5757111157570101"
    )
    port map (
      ADR3 => '1',
      ADR1 => sinus0_I1(2),
      ADR2 => sinus0_I1(1),
      ADR4 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(3),
      ADR5 => sinus0_I1(0),
      O => N224
    );
  sinus0_N264_sinus0_N264_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001249310_5154,
      O => sinus0_Mmux_mux_varindex0001249310_0
    );
  sinus0_Mmux_mux_varindex0001249310 : X_MUX2
    generic map(
      LOC => "SLICE_X73Y98"
    )
    port map (
      IA => N522,
      IB => N523,
      O => sinus0_Mmux_mux_varindex0001249310_5154,
      SEL => ctrlr0_freq(3)
    );
  sinus0_Mmux_mux_varindex000138261 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y98",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(4),
      O => sinus0_N264
    );
  sinus0_Mmux_mux_varindex0001249310_F : X_LUT6
    generic map(
      LOC => "SLICE_X73Y98",
      INIT => X"FFEE55EFCCCC01CD"
    )
    port map (
      ADR1 => sinus0_I1_5_1_5432,
      ADR3 => sinus0_I1(1),
      ADR4 => ctrlr0_freq(2),
      ADR0 => sinus0_I1(0),
      ADR5 => sinus0_I1(4),
      ADR2 => sinus0_I1(7),
      O => N522
    );
  sinus0_Mmux_mux_varindex0001249310_G : X_LUT6
    generic map(
      LOC => "SLICE_X73Y98",
      INIT => X"F0FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(1),
      ADR2 => sinus0_I1_5_1_5432,
      ADR5 => sinus0_I1(4),
      O => N523
    );
  sinus0_Mmux_mux_varindex0001249470_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y99",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1_0_1_5420,
      ADR4 => sinus0_I1(1),
      O => N212
    );
  sinus0_Mmux_mux_varindex0001249850_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X72Y99",
      INIT => X"FFFF000F300CF3F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => sinus0_I1(3),
      ADR5 => sinus0_I1(2),
      ADR4 => sinus0_I1(1),
      ADR1 => sinus0_I1(0),
      ADR3 => ctrlr0_freq(3),
      O => N223
    );
  sinus0_sens_dtmf1 : X_FF
    generic map(
      LOC => "SLICE_X73Y100",
      INIT => '0'
    )
    port map (
      CE => sinus0_C3_dtmf1,
      CLK => NlwBufferSignal_sinus0_sens_dtmf1_CLK,
      I => sinus0_sens_dtmf1_not0001,
      O => sinus0_sens_dtmf1_5421,
      SET => GND,
      RST => rst_IBUF_5295
    );
  sinus0_sens_dtmf1_not00011_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X73Y100",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => sinus0_sens_dtmf1_5421,
      ADR4 => '1',
      ADR5 => '1',
      O => sinus0_sens_dtmf1_not0001
    );
  sinus0_Mmux_mux_varindex0001248131 : X_LUT6
    generic map(
      LOC => "SLICE_X74Y96",
      INIT => X"FFFF0000FFFC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => sinus0_I1(7),
      ADR1 => ctrlr0_freq(3),
      ADR5 => ctrlr0_freq(2),
      ADR3 => sinus0_I1(4),
      ADR2 => sinus0_I1(5),
      O => sinus0_N530
    );
  N54_N54_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex0001249198_5192,
      O => sinus0_Mmux_mux_varindex0001249198_0
    );
  sinus0_Mmux_mux_varindex0001249198 : X_MUX2
    generic map(
      LOC => "SLICE_X75Y97"
    )
    port map (
      IA => N542,
      IB => N543,
      O => sinus0_Mmux_mux_varindex0001249198_5192,
      SEL => ctrlr0_freq(2)
    );
  sinus0_Mmux_mux_varindex0001418_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X75Y97",
      INIT => X"FFFBFFFBFFE8FFC8"
    )
    port map (
      ADR3 => sinus0_I1(5),
      ADR5 => sinus0_I1(7),
      ADR1 => sinus0_I1(4),
      ADR2 => ctrlr0_freq(3),
      ADR0 => ctrlr0_freq(2),
      ADR4 => sinus0_N292,
      O => N54
    );
  sinus0_Mmux_mux_varindex0001201101 : X_LUT6
    generic map(
      LOC => "SLICE_X75Y97",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => sinus0_I1(1),
      ADR5 => sinus0_I1(2),
      O => sinus0_N292
    );
  sinus0_Mmux_mux_varindex0001249198_F : X_LUT6
    generic map(
      LOC => "SLICE_X75Y97",
      INIT => X"0000000000000002"
    )
    port map (
      ADR2 => sinus0_I1(7),
      ADR0 => sinus0_I1(2),
      ADR1 => sinus0_I1_0_1_5420,
      ADR3 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(3),
      ADR4 => sinus0_I1(3),
      O => N542
    );
  sinus0_Mmux_mux_varindex0001249198_G : X_LUT6
    generic map(
      LOC => "SLICE_X75Y97",
      INIT => X"00005AAA0000FAAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => sinus0_I1(3),
      ADR0 => sinus0_I1(2),
      ADR3 => ctrlr0_freq(3),
      ADR5 => sinus0_I1(0),
      ADR2 => sinus0_I1(1),
      O => N543
    );
  sinus0_Mmux_mux_varindex0001121372_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X75Y96",
      INIT => X"FFFF0000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(1),
      ADR4 => sinus0_I1(2),
      O => N205
    );
  sinus0_Mmux_mux_varindex0001249238 : X_LUT6
    generic map(
      LOC => "SLICE_X74Y97",
      INIT => X"FFFFFFFF00330032"
    )
    port map (
      ADR3 => sinus0_I1(5),
      ADR1 => sinus0_I1(4),
      ADR0 => sinus0_Mmux_mux_varindex0001249123_6069,
      ADR2 => sinus0_Mmux_mux_varindex0001249198_0,
      ADR4 => sinus0_Mmux_mux_varindex000124969_0,
      ADR5 => sinus0_Mmux_mux_varindex00012499_6071,
      O => sinus0_Mmux_mux_varindex0001249238_5789
    );
  sinus0_Mmux_mux_varindex00012499 : X_LUT6
    generic map(
      LOC => "SLICE_X74Y97",
      INIT => X"FFFFFFFF04000000"
    )
    port map (
      ADR3 => sinus0_I1(5),
      ADR2 => sinus0_I1(3),
      ADR1 => ctrlr0_freq(3),
      ADR0 => ctrlr0_freq(2),
      ADR4 => sinus0_N2,
      ADR5 => sinus0_N530,
      O => sinus0_Mmux_mux_varindex00012499_6071
    );
  sinus0_Mmux_mux_varindex0001249123_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X74Y97",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sinus0_I1(2),
      ADR4 => ctrlr0_freq(2),
      O => N270
    );
  sinus0_Mmux_mux_varindex0001249123 : X_LUT6
    generic map(
      LOC => "SLICE_X74Y97",
      INIT => X"0000BB8D00000505"
    )
    port map (
      ADR2 => sinus0_I1(7),
      ADR1 => sinus0_I1_0_1_5420,
      ADR3 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(3),
      ADR0 => sinus0_I1(3),
      ADR4 => N270,
      O => sinus0_Mmux_mux_varindex0001249123_6069
    );
  sinus0_Mmux_mux_varindex000124969_sinus0_Mmux_mux_varindex000124969_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mmux_mux_varindex000124969_5244,
      O => sinus0_Mmux_mux_varindex000124969_0
    );
  sinus0_Mmux_mux_varindex000124969 : X_MUX2
    generic map(
      LOC => "SLICE_X75Y98"
    )
    port map (
      IA => '0',
      IB => N537,
      O => sinus0_Mmux_mux_varindex000124969_5244,
      SEL => sinus0_I1(3)
    );
  N0_104_SLICEL_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X75Y98",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_104_SLICEL_B6LUT_O_UNCONNECTED
    );
  sinus0_Mmux_mux_varindex000124969_G : X_LUT6
    generic map(
      LOC => "SLICE_X75Y98",
      INIT => X"F005F00508005D00"
    )
    port map (
      ADR2 => ctrlr0_freq(3),
      ADR3 => sinus0_I1(2),
      ADR0 => sinus0_I1(1),
      ADR5 => ctrlr0_freq(2),
      ADR4 => sinus0_I1(7),
      ADR1 => sinus0_I1(0),
      O => N537
    );
  h_BUFGP_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 396 ps
    )
    port map (
      I => h_IBUF,
      O => h_BUFGP
    );
  diviseur0_hd_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 396 ps
    )
    port map (
      I => NlwBufferSignal_diviseur0_hd_BUFG_BUF_IN,
      O => diviseur0_hd_5288
    );
  NlwBufferBlock_ctrlr0_counter2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_3_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_2_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_1_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_0_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_7_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_6_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_5_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_4_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_11_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_10_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_9_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_8_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_14_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_13_CLK
    );
  NlwBufferBlock_ctrlr0_counter2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter2_12_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_3_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_2_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_1_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_0_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_7_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_6_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_5_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_4_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_11_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_10_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_9_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_8_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_14_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_13_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_count_12_CLK
    );
  NlwBufferBlock_sinus0_I1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_3_CLK
    );
  NlwBufferBlock_sinus0_I1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_2_CLK
    );
  NlwBufferBlock_sinus0_I1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_1_CLK
    );
  NlwBufferBlock_sinus0_I1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_7_CLK
    );
  NlwBufferBlock_sinus0_I1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_6_CLK
    );
  NlwBufferBlock_sinus0_I1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_4_CLK
    );
  NlwBufferBlock_sinus0_I2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_6_CLK
    );
  NlwBufferBlock_sinus0_I2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_8_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_3_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_2_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_1_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_0_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_7_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_6_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_5_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_4_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_11_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_10_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_9_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_8_CLK
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(1),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_1_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(2),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_2_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(3),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_3_DI_3_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(4),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_0_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(5),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_1_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(6),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_2_Q
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(6),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_cy_7_DI_3_Q
    );
  NlwBufferBlock_sinus0_I_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_3_CLK
    );
  NlwBufferBlock_sinus0_I_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_2_CLK
    );
  NlwBufferBlock_sinus0_I_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_1_CLK
    );
  NlwBufferBlock_sinus0_I_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_0_CLK
    );
  NlwBufferBlock_sinus0_I_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_7_CLK
    );
  NlwBufferBlock_sinus0_I_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_6_CLK
    );
  NlwBufferBlock_sinus0_I_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_5_CLK
    );
  NlwBufferBlock_sinus0_I_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_4_CLK
    );
  NlwBufferBlock_sinus0_I_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I_8_CLK
    );
  NlwBufferBlock_vs_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_0_OBUF_5599,
      O => NlwBufferSignal_vs_0_OBUF_I
    );
  NlwBufferBlock_vs_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_1_OBUF_5600,
      O => NlwBufferSignal_vs_1_OBUF_I
    );
  NlwBufferBlock_vs_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_2_OBUF_5601,
      O => NlwBufferSignal_vs_2_OBUF_I
    );
  NlwBufferBlock_vs_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_3_OBUF_5602,
      O => NlwBufferSignal_vs_3_OBUF_I
    );
  NlwBufferBlock_vs_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_4_OBUF_5603,
      O => NlwBufferSignal_vs_4_OBUF_I
    );
  NlwBufferBlock_vs_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_5_OBUF_5604,
      O => NlwBufferSignal_vs_5_OBUF_I
    );
  NlwBufferBlock_vs_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_6_OBUF_5605,
      O => NlwBufferSignal_vs_6_OBUF_I
    );
  NlwBufferBlock_vs_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_7_OBUF_5606,
      O => NlwBufferSignal_vs_7_OBUF_I
    );
  NlwBufferBlock_vs_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_8_OBUF_5607,
      O => NlwBufferSignal_vs_8_OBUF_I
    );
  NlwBufferBlock_vs_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => vs_9_OBUF_5608,
      O => NlwBufferSignal_vs_9_OBUF_I
    );
  NlwBufferBlock_sinus0_I2_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_4_1_CLK
    );
  NlwBufferBlock_sinus0_I2_4_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I26_0,
      O => NlwBufferSignal_sinus0_I2_4_1_IN
    );
  NlwBufferBlock_sinus0_I2_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_1_1_CLK
    );
  NlwBufferBlock_sinus0_I2_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I23_0,
      O => NlwBufferSignal_sinus0_I2_1_1_IN
    );
  NlwBufferBlock_sinus0_I2_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_3_1_CLK
    );
  NlwBufferBlock_sinus0_I2_3_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I25_0,
      O => NlwBufferSignal_sinus0_I2_3_1_IN
    );
  NlwBufferBlock_sinus0_I2_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_2_1_CLK
    );
  NlwBufferBlock_sinus0_I2_2_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I24_0,
      O => NlwBufferSignal_sinus0_I2_2_1_IN
    );
  NlwBufferBlock_sinus0_I2_5_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_5_1_CLK
    );
  NlwBufferBlock_sinus0_I2_5_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I27_0,
      O => NlwBufferSignal_sinus0_I2_5_1_IN
    );
  NlwBufferBlock_ctrlr0_freq_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_0_1_CLK
    );
  NlwBufferBlock_ctrlr0_freq_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002_0_0,
      O => NlwBufferSignal_ctrlr0_freq_0_1_IN
    );
  NlwBufferBlock_sinus0_I2_7_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_7_2_CLK
    );
  NlwBufferBlock_sinus0_I2_7_2_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I29_0,
      O => NlwBufferSignal_sinus0_I2_7_2_IN
    );
  NlwBufferBlock_sinus0_I2_7_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_7_1_CLK
    );
  NlwBufferBlock_sinus0_I2_7_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I29_0,
      O => NlwBufferSignal_sinus0_I2_7_1_IN
    );
  NlwBufferBlock_sinus0_I2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_7_CLK
    );
  NlwBufferBlock_sinus0_I2_7_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I29_0,
      O => NlwBufferSignal_sinus0_I2_7_IN
    );
  NlwBufferBlock_sinus0_I2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_5_CLK
    );
  NlwBufferBlock_sinus0_I2_5_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I27_0,
      O => NlwBufferSignal_sinus0_I2_5_IN
    );
  NlwBufferBlock_sinus0_I2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_4_CLK
    );
  NlwBufferBlock_sinus0_I2_4_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I26_0,
      O => NlwBufferSignal_sinus0_I2_4_IN
    );
  NlwBufferBlock_ctrlr0_freq_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_1_CLK
    );
  NlwBufferBlock_ctrlr0_freq_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002_1_0,
      O => NlwBufferSignal_ctrlr0_freq_1_IN
    );
  NlwBufferBlock_ctrlr0_freq_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_0_CLK
    );
  NlwBufferBlock_ctrlr0_freq_0_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002_0_0,
      O => NlwBufferSignal_ctrlr0_freq_0_IN
    );
  NlwBufferBlock_sinus0_I2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_3_CLK
    );
  NlwBufferBlock_sinus0_I2_3_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I25_0,
      O => NlwBufferSignal_sinus0_I2_3_IN
    );
  NlwBufferBlock_sinus0_I2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_2_CLK
    );
  NlwBufferBlock_sinus0_I2_2_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I24_0,
      O => NlwBufferSignal_sinus0_I2_2_IN
    );
  NlwBufferBlock_sinus0_I2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_1_CLK
    );
  NlwBufferBlock_sinus0_I2_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I23_0,
      O => NlwBufferSignal_sinus0_I2_1_IN
    );
  NlwBufferBlock_sinus0_I2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_0_CLK
    );
  NlwBufferBlock_sinus0_I2_0_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I22_0,
      O => NlwBufferSignal_sinus0_I2_0_IN
    );
  NlwBufferBlock_sinus0_I2_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I2_0_1_CLK
    );
  NlwBufferBlock_sinus0_I2_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I22_0,
      O => NlwBufferSignal_sinus0_I2_0_1_IN
    );
  NlwBufferBlock_ctrlr0_freq_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_1_1_CLK
    );
  NlwBufferBlock_ctrlr0_freq_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => ctrlr0_freq_mux0002_1_0,
      O => NlwBufferSignal_ctrlr0_freq_1_1_IN
    );
  NlwBufferBlock_sinus0_sens_dtmf2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_sens_dtmf2_CLK
    );
  NlwBufferBlock_diviseur0_count_100_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_5_CLK
    );
  NlwBufferBlock_diviseur0_count_100_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_3_CLK
    );
  NlwBufferBlock_diviseur0_count_100_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_6_CLK
    );
  NlwBufferBlock_diviseur0_hd_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_hd_CLK
    );
  NlwBufferBlock_diviseur0_count_100_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_1_CLK
    );
  NlwBufferBlock_diviseur0_count_100_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => Result(1),
      O => NlwBufferSignal_diviseur0_count_100_1_IN
    );
  NlwBufferBlock_diviseur0_count_100_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_4_CLK
    );
  NlwBufferBlock_diviseur0_count_100_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_2_CLK
    );
  NlwBufferBlock_diviseur0_count_100_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => h_BUFGP,
      O => NlwBufferSignal_diviseur0_count_100_0_CLK
    );
  NlwBufferBlock_sinus0_sens_ask_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_sens_ask_CLK
    );
  NlwBufferBlock_sinus0_signe_dtmf2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_signe_dtmf2_CLK
    );
  NlwBufferBlock_sinus0_signe_ask_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_signe_ask_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_6_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_5_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_0_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_1_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_9_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_9_CLK
    );
  NlwBufferBlock_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_mux_mux0001(6),
      O => NlwBufferSignal_sinus0_Madd_tmp_vs_addsub0000_xor_9_DI_0_Q
    );
  NlwBufferBlock_sinus0_tmp_vs_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_4_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_3_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_2_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_8_CLK
    );
  NlwBufferBlock_sinus0_tmp_vs_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_tmp_vs_7_CLK
    );
  NlwBufferBlock_sinus0_signe_dtmf1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_signe_dtmf1_CLK
    );
  NlwBufferBlock_ctrlr0_current_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_current_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_ctrlr0_current_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_current_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_ctrlr0_dtmf_done_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_dtmf_done_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_11_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_10_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_9_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_8_CLK
    );
  NlwBufferBlock_ctrlr0_synchronised_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_synchronised_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_14_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_13_CLK
    );
  NlwBufferBlock_ctrlr0_ask_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_count_12_CLK
    );
  NlwBufferBlock_ctrlr0_ask_en_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_ask_en_CLK
    );
  NlwBufferBlock_ctrlr0_amp_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_amp_CLK
    );
  NlwBufferBlock_ctrlr0_amp_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => txd_IBUF_6161,
      O => NlwBufferSignal_ctrlr0_amp_IN
    );
  NlwBufferBlock_sinus0_I1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_5_CLK
    );
  NlwBufferBlock_sinus0_I1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_0_CLK
    );
  NlwBufferBlock_sinus0_I1_0_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I12_0,
      O => NlwBufferSignal_sinus0_I1_0_IN
    );
  NlwBufferBlock_ctrlr0_counter1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_3_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_2_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_1_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_0_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_7_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_6_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_5_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_4_CLK
    );
  NlwBufferBlock_sinus0_I1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_8_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_14_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_13_CLK
    );
  NlwBufferBlock_ctrlr0_counter1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_counter1_12_CLK
    );
  NlwBufferBlock_sinus0_I1_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_0_1_CLK
    );
  NlwBufferBlock_sinus0_I1_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I12_0,
      O => NlwBufferSignal_sinus0_I1_0_1_IN
    );
  NlwBufferBlock_ctrlr0_freq_3_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_3_CLK
    );
  NlwBufferBlock_ctrlr0_freq_2_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_ctrlr0_freq_2_CLK
    );
  NlwBufferBlock_sinus0_I1_5_1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_I1_5_1_CLK
    );
  NlwBufferBlock_sinus0_I1_5_1_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => sinus0_Mcount_I17_0,
      O => NlwBufferSignal_sinus0_I1_5_1_IN
    );
  NlwBufferBlock_sinus0_sens_dtmf1_CLK : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd_5288,
      O => NlwBufferSignal_sinus0_sens_dtmf1_CLK
    );
  NlwBufferBlock_diviseur0_hd_BUFG_BUF_IN : X_BUF
    generic map(
      PATHPULSE => 396 ps
    )
    port map (
      I => diviseur0_hd1,
      O => NlwBufferSignal_diviseur0_hd_BUFG_BUF_IN
    );
  NlwBlock_modem_controller_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_modem_controller_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

