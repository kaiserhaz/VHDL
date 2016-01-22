# TCL script for sinus.vhd
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

vcom -2008 -check_synthesis sinus.vhd
vcom -2008 -check_synthesis test_sinus.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test(bench)

# Include signals in Wave window along with internal signals

add wave -r /*

# 1 µs simulation time

run 100 us