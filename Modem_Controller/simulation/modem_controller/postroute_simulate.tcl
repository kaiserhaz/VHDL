# Quitte la simulation si celle-ci est en cours
quit -sim

# map library
set XILINX_LIB_DIR "C:/Xilinx/14.6/lib"

vmap secureip $XILINX_LIB_DIR/secureip/
vmap simprim $XILINX_LIB_DIR/simprim/
vmap simprims_ver $XILINX_LIB_DIR/simprims_ver/
vmap unimacro $XILINX_LIB_DIR/unimacro/
vmap unimacro_ver $XILINX_LIB_DIR/unimacro_ver/
vmap unisim $XILINX_LIB_DIR/unisim/
vmap unisims_ver $XILINX_LIB_DIR/unisims_ver/
vmap xilinxcorelib $XILINX_LIB_DIR/xilinxcorelib/
vmap xilinxcorelib_ver $XILINX_LIB_DIR/xilinxcorelib_ver/

# Synth. IP CORE File
vcom -novopt ../../ise/modem_controller/netgen/par/modem_controller_timesim.vhd

# IP Bench File
vcom -novopt ../../sources/modem_controller/bench/test_modem_controller.vhd

# Load Design (resolution = 1ps pour pouvoir faire la comparaison
# en post-simulation avec la même résolution)
vsim -novopt -t 1ps -wlf waveform_modem_ctrlr_pr.wlf work.test_modem_controller(behaviour)

# Wave Creation
do wave.tcl

# Run simulation
run 400 ms