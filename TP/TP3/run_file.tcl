# TCL script for 7segmentdisp.vhd
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

vcom -2008 -check_synthesis 7segmentdisp.vhd
vcom -2008 -check_synthesis test_7segmentdisp.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test(bench)

# Include signals in Wave window along with internal signals

add wave *
add wave /test/UUT/q
add wave /test/UUT/r
add wave /test/UUT/R1
add wave /test/UUT/s
add wave /test/UUT/z
add wave /test/UUT/ldr
add wave /test/UUT/ld0
add wave /test/UUT/ld1
add wave /test/UUT/ld2
add wave /test/UUT/ld3
add wave /test/UUT/E
add wave /test/UUT/N_E
add wave /test/UUT/Maff
add wave /test/UUT/datain/guard
add wave /test/UUT/datain/Mmux
add wave /test/UUT/affichage/guard 

# 1 µs simulation time

run 1 us