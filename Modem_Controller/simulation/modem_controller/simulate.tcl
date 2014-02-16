# Quitte la simulation si celle-ci est en cours
quit -sim

# IP CORE Files
vcom -novopt ../../sources/modem_controller/core/rs232_controller.vhd
vcom -novopt ../../sources/modem_controller/core/count_800.vhd
vcom -novopt ../../sources/modem_controller/core/sinus.vhd
vcom -novopt ../../sources/modem_controller/core/modem_package.vhd
vcom -novopt ../../sources/modem_controller/core/modem_controller.vhd

# IP Bench File
vcom -novopt ../../sources/modem_controller/bench/test_modem_controller.vhd

# Load Design (resolution = 1ps pour pouvoir faire la comparaison
# en post-simulation avec la même résolution)
vsim -novopt -t 1ps -wlf waveform_modem_ctrlr.wlf work.test_modem_controller(behaviour)

# Wave Creation
do wave.tcl

# Run simulation
run 400 ms