# Quitte la simulation si celle-ci est en cours
quit -sim

# IP CORE Files
vcom -novopt ../../sources/diviseur/core/count_800.vhd

# IP Bench File
vcom -novopt ../../sources/diviseur/bench/test_count.vhd

# Load Design (resolution = 1ps pour pouvoir faire la comparaison
# en post-simulation avec la même résolution)
vsim -novopt -t 1ps -wlf waveform_divider.wlf work.test(beh)

# Wave Creation
do wave.tcl

# Run simulation
run 50 ms
