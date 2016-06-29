# TCL script for synchronous_fifo.vhd
# Written by
# Muhammad Haziq Bin Kamarul Azman
# @ KaiserHaz

# Quit simulation if still in it

quit -sim

# Check to see if there are any existing directory

if [file exist work] {
	vdel -all
}

# Create the library if not yet done

vlib work

# Source file compilation directives

vcom -2008 -check_synthesis component_synchronous_fifo.vhd
vcom -2008 -check_synthesis counter.vhd
vcom -2008 -check_synthesis reg.vhd
vcom -2008 -check_synthesis synchronous_fifo.vhd
vcom -2008 -check_synthesis testfifo1.vhd
vcom -2008 -check_synthesis testfifo2.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test1(bench1)
#vsim -t 1ns work.test2(bench2)

# Include signals in Wave window along with internal signals

add wave *

# Waves for test1

add wave /test1/UUT/REG_OUT
add wave /test1/UUT/SEL_MUX
add wave /test1/UUT/SEL
add wave /test1/UUT/MUX_OUT
add wave /test1/UUT/REG_LD
add wave /test1/UUT/COUNT_UD
add wave /test1/UUT/reg1(0)/REG0/reg0/B
add wave /test1/UUT/reg1(1)/REGI/regI/B
add wave /test1/UUT/reg1(2)/REGI/regI/B
add wave /test1/UUT/reg1(3)/REGI/regI/B
add wave /test1/UUT/counter1/Qdeep
add wave /test1/UUT/counter1/QN 

# Waves for test2

#add wave /test2/UUT/REG_OUT
#add wave /test2/UUT/SEL_MUX
#add wave /test2/UUT/SEL#add wave /test2/UUT/MUX_OUT
#add wave /test2/UUT/REG_LD
#add wave /test2/UUT/COUNT_UD
#add wave /test2/UUT/reg1(0)/REG0/reg0/B
#add wave /test2/UUT/reg1(1)/REGI/regI/B
#add wave /test2/UUT/reg1(2)/REGI/regI/B
#add wave /test2/UUT/reg1(3)/REGI/regI/B
#add wave /test2/UUT/counter1/Qdeep
#add wave /test2/UUT/counter1/QN 

# 1 µs simulation time

run 200 ns