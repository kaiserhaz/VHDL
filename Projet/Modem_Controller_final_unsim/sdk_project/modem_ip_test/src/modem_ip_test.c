/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/*
 *
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
 *
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xbasic_types.h"

// Comment this for a Modem IP test
// Else leave it for a Hello World test
//#define HELLO_TEST

unsigned short no1, no2;
unsigned char c1, c2;
unsigned char tb1, tb2;

void print(char *str);

int main()
{
    init_platform();

	#ifdef HELLO_TEST

    print("Hello World\n\r");

	#else

    no1 = 0xE92A; // 0625
    no2 = 0x609A; // 8165

    c1 = '\n'; // Line Feed, LF
    c2 = '\r'; // Carriage Return, CR

    tb1 = 0x0; // 100 bps?
    tb2 = 0x3; // 800 bps?

    volatile u32 *ptr = (u32 *)0xC0A000000; // Modem IP base address
                                            // R[i] = *ptr + i

    // First step, set the modem up
    // Change Tb and No

    *(ptr + 2) = (no1 | (tb1 << 16));

    // Next step, we set M_A and DTR to true

    *(ptr + 1) = 0x1;
    *(ptr + 1) = 0x3;

    // TODO : Continue this test!

    while(1) {

    	print((char *) *(ptr + 5));

    }

	#endif

    return 0;
}
