# TCL script for correlator.vhd
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

vcom -2008 -check_synthesis controller.vhd
vcom -2008 -check_synthesis test_controller.vhd
vcom -2008 -check_synthesis datapath.vhd
vcom -2008 -check_synthesis package.vhd
vcom -2008 -check_synthesis correlator.vhd
vcom -2008 -check_synthesis test_correlator.vhd

# Simulation with 1 ns resolution

#vsim -t 1ns work.test_controller(bench)
vsim -t 1ns work.test_correlator(bench)

# Include signals in Wave window along with internal signals

add wave *
#add wave /test_correlator/UUT/ctrl_word_t
#add wave /test_correlator/UUT/datapath_comp/ram
#add wave /test_correlator/UUT/datapath_comp/di
#add wave /test_correlator/UUT/datapath_comp/do
#add wave /test_correlator/UUT/datapath_comp/rom_out
#add wave /test_correlator/UUT/datapath_comp/m_mul
#add wave /test_correlator/UUT/datapath_comp/mac
#add wave /test_correlator/UUT/controller_comp/curr_state
#add wave /test_correlator/UUT/controller_comp/next_state

# 4.6 µs simulation time

run 4.6 us