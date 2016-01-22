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

vcom -2008 -check_synthesis components.vhd
vcom -2008 -check_synthesis accumulator.vhd
vcom -2008 -check_synthesis test_accumulator.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test(bench)

# Include signals in Wave window along with internal signals

add wave *
add wave /test/UUT1/B
add wave /test/UUT1/A
add wave /test/UUT2/B
add wave /test/UUT2/A
add wave /test/UUT2/V
add wave /test/UUT2/Aint
add wave /test/UUT2/c1/E1
add wave /test/UUT2/c1/E2
add wave /test/UUT2/c1/S
add wave /test/UUT2/c2/RST
add wave /test/UUT2/c2/LD
add wave /test/UUT2/c2/E
add wave /test/UUT2/c2/S 

# 1 µs simulation time

run 1 us