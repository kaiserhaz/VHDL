# Quitte la simulation si celle-ci est en cours
quit -sim

# IP CORE Files
vcom -novopt ../../sources/sinus/core/sinus.vhd

# IP Bench File
vcom -novopt ../../sources/sinus/bench/test_sinus.vhd

# Load Design (resolution = 1ps pour pouvoir faire la comparaison
# en post-simulation avec la même résolution)
vsim -novopt -t 1ps -wlf waveform_sinus.wlf work.test(beh)

# Wave Creation
do wave.tcl

# Run simulation
run 100 ms
