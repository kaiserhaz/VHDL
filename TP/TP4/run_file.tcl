# TCL script for sequenceur.vhd
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

vcom -2008 -check_synthesis compteur.vhd
vcom -2008 -check_synthesis mux.vhd
vcom -2008 -check_synthesis rom.vhd
vcom -2008 -check_synthesis packcomp.vhd
vcom -2008 -check_synthesis sequenceur.vhd
vcom -2008 -check_synthesis testchariot.vhd

# Simulation with 1 ns resolution

vsim -t 1ns work.test(bench2)

# Include signals in Wave window along with internal signals

add wave *
add wave /test/UUT/OU1
add wave /test/UUT/OU2
add wave /test/UUT/mux1/A
add wave /test/UUT/mux1/B
add wave /test/UUT/mux1/C
add wave /test/UUT/mux1/D
add wave /test/UUT/mux1/SEL
add wave /test/UUT/mux1/MUX
add wave /test/UUT/mux1/V
add wave /test/UUT/cpt1/CLK
add wave /test/UUT/cpt1/RST
add wave /test/UUT/cpt1/LD
add wave /test/UUT/cpt1/D
add wave /test/UUT/cpt1/G
add wave /test/UUT/rom1/ADDR
add wave /test/UUT/rom1/DATA 

# 1 µs simulation time

run 700 ns