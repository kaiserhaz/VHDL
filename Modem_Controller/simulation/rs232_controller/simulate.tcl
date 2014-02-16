# Quitte la simulation si celle-ci est en cours
quit -sim

# IP CORE Files
vcom -novopt ../../sources/rs232_controller/core/rs232_controller.vhd

# IP Bench File
vcom -novopt ../../sources/rs232_controller/bench/test_rs232_controller.vhd

# Load Design (resolution = 1ps pour pouvoir faire la comparaison
# en post-simulation avec la même résolution)
vsim -novopt -t 1ps -wlf waveform_rs232_ctrlr.wlf work.test_rs232_controller(beh)

# Wave Creation
do wave.tcl

# Run simulation
run 400 ms