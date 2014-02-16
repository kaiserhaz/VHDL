#
# README!
#
# IP INTERCONNECTION GUIDELINES
#

# 
# For this project, we decided to use 8 user-accessible registers
#
# From the developers' perspective, this will not cause harm, since we only really need much fewer than that,
#
# But in any case, we will need to prepare for additional features
#

#
# For this project, the registers will be used as follows :
#
# REG0 : STATUS REGISTER [READ ONLY]
# 
#  This register will contain status bits that the user can read from in order to obtain information regarding the IP functionnality
#  Currently, this is not used as of yet, but it should house the following bits :
#
#  r0(31 downto 4) | r0(3) | r0(2) | r0(1) | r0(0)
#  UNUSED          | RI    | CTS   | DSR   | CD
#
# REG1 : COMMAND REGISTER [WRITE ONLY]
#
#  This register will contain bits that allow us to trigger the modem IP. In this case, the concerned bits are :
#
#  r1(31 downto 3)         | r1(2) | r1(1) | r1(0)
#  UNUSED                  | RTS   | DTR   | M_A
#
# REG2 : MODEM PARAMETER REGISTER [WRITE ONLY]
#
#  This register will contain the modem parameters that will determine the modem's characteristics
#  We shall find here the following items :
#
#  r2(31 downto 18) | r2(17 downto 16) | r2(15 downto 0)
#  UNUSED           | Tb (inver. order)| No (inver. order)
#
# REG3 : INPUT REGISTER [WRITE ONLY]
#
#  This register will contain the input for the modem. Writing to this register will allow it to send the corresponding data
#  This register might be unnecessary as the functional model dictates that the received value via RS232C should be directly
#   routed to the modem's Txd input. This needs to be clarified, but for the time being, this is where all infos to be sent
#   are put
#
# REG4 : OUTPUT REGISTER [READ ONLY]
#
#  This register will contain the output of the modem. Reading from this register allows us to obtain the received value via
#   the Rxd port of the modem. This is not implemented in version 1.0
#
# REG5 : ANALOG OUTPUT REGISTER [READ ONLY]
#
#  This register will contain the "analog" output of the modem. In reality, it is the logic vector of size 10 described in the modem IP
#  The corresponding output is Vs in inverse order
#
# REG6 : NULL
#
# REG7 : NULL
#