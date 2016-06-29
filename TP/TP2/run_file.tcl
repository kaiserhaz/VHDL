# TCL script for accumulator.vhd
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

vcom -2008 -check_synthesis mem_ctrl.vhd
#vcom -2008 -check_synthesis test_mem_ctrl.vhd
vcom -2008 -check_synthesis sequencer.vhd
vcom -2008 -check_synthesis datapath.vhd
vcom -2008 -check_synthesis test_sequencer.vhd

# Simulation with 1 ns resolution

#vsim -t 1ns work.test(bench)
#vsim -t 1ns work.test(bench1)
vsim -t 1ns work.test(bench2)

# Include signals in Wave window along with internal signals

add wave *

# Waves for mem_ctrl

#add wave /test/UUT1/OE
#add wave /test/UUT1/WE
#add wave /test/UUT2/OE
#add wave /test/UUT2/WE
#add wave /test/UUT2/ETAT
#add wave /test/UUT2/N_ETAT

# Waves for sequencer

add wave /test/UUT_seq/ETAT
add wave /test/UUT_seq/N_ETAT
add wave /test/VIP_dp/T
add wave /test/VIP_dp/T_shift 

# 1 µs simulation time

#run 200 ns
#run 2.5 us
run 11 us