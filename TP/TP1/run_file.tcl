# TCL script for regdouble.vhd
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

vcom -2008 -check_synthesis composants.vhd
vcom -2008 -check_synthesis regdouble.vhd
vcom -2008 -check_synthesis test_regdouble.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test(bench)

# Include signals in Wave window along with internal signals

add wave  *
add wave /test/UUT1/A
add wave /test/UUT1/B
add wave /test/UUT1/R
add wave /test/UUT2/A
add wave /test/UUT2/B
add wave /test/UUT2/R
add wave /test/UUT2/V
add wave /test/UUT2/C1/Sel
add wave /test/UUT2/C1/A
add wave /test/UUT2/C1/B
add wave /test/UUT2/C1/V1
add wave /test/UUT2/C2/V2
add wave /test/UUT2/C2/R 

# 1 µs simulation time

run 30 ns