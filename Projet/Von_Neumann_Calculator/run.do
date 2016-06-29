# Quit simulation
quit -sim

# Check if library exists. If so, delete it then recreate it
if [file exists work] {
    vdel -all
}

vlib work

# Remap work to the library
vmap work [pwd]/work

# Compile the VHDL source files
vcom -2008 source/vncPackage.vhd
vcom -2008 source/module/vhdl/controlUnit.vhd
vcom -2008 source/module/vhdl/datapath.vhd
vcom -2008 source/module/vhdl/cpu.vhd
vcom -2008 source/module/vhdl/memory.vhd
vcom -2008 source/testbench/cpuTestbench.vhd

# Copy stimulus file (can't seem to get Modelsim to open
#  from it's original location)
if [file exists boot.txt] {
    file delete boot.txt
}
file copy [pwd]/source/stimulus/boot.txt [pwd]/boot.txt

if [file exists preload.txt] {
    file delete preload.txt
}
file copy [pwd]/source/stimulus/preload.txt [pwd]/preload.txt

# For memory logging: get the list of mem indices to plot
set fp [open "boot.txt" r]
set fd [read $fp]
set data [split $fd "\n"]
set memindex {}
foreach line $data {
    if [string compare [string index $line 0] "-"] {
        lappend memindex [lindex [split [string trimleft $line]] 0]
    }
}
close $fp

# Start mixed simulation
vsim work.cpuTestbench

# Display Wave
#add wave -r /*

add wave /cputestbench/sysClk
add wave /cputestbench/cpuClk
add wave /cputestbench/rst
add wave /cputestbench/mw
add wave /cputestbench/din
add wave /cputestbench/dout
add wave /cputestbench/addr

add wave /cputestbench/UUT0/nTrans
add wave /cputestbench/UUT0/zTrans
add wave /cputestbench/UUT0/ctrlwordTrans
add wave /cputestbench/UUT0/opcodeTrans

add wave /cputestbench/UUT0/controlU/currentstate
add wave /cputestbench/UUT0/controlU/nextstate

add wave /cputestbench/UUT0/datapathU/rwIn
add wave /cputestbench/UUT0/datapathU/bancregs

add wave /cputestbench/UUT0/datapathU/busA
add wave /cputestbench/UUT0/datapathU/busB
add wave /cputestbench/UUT0/datapathU/busD

add wave /cputestbench/UUT0/datapathU/ilIn
add wave /cputestbench/UUT0/datapathU/opOut
add wave /cputestbench/UUT0/datapathU/saIn
add wave /cputestbench/UUT0/datapathU/sbIn
add wave /cputestbench/UUT0/datapathU/drIn

add wave /cputestbench/UUT0/datapathU/aextOut

add wave /cputestbench/UUT0/datapathU/psIn
add wave /cputestbench/UUT0/datapathU/pcOut

add wave /cputestbench/UUT0/datapathU/mmIn

add wave /cputestbench/UUT0/datapathU/axIn
add wave /cputestbench/UUT0/datapathU/bxIn
add wave /cputestbench/UUT0/datapathU/dxIn
add wave /cputestbench/UUT0/datapathU/ralaOut
add wave /cputestbench/UUT0/datapathU/ralbOut
add wave /cputestbench/UUT0/datapathU/raldOut

add wave /cputestbench/UUT0/datapathU/zfOut

add wave /cputestbench/UUT0/datapathU/databOut
add wave /cputestbench/UUT0/datapathU/mbIn

add wave /cputestbench/UUT0/datapathU/fsIn
add wave /cputestbench/UUT0/datapathU/ufOut
add wave /cputestbench/UUT0/datapathU/mdIn

# Comment out for loop to view all memory entries, else
#  leave it just to look at certain entries as defined in
#  the boot script
for { set ii 0 }  { $ii < [llength $memindex] }  { incr ii } {
      puts [lindex $memindex $ii]
      add wave /cputestbench/MEM0/memoires([lindex $memindex $ii])
}

# Run simulation
run 500 ns
