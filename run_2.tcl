open_project hls.prj 

set_top dut
add_files interface.cpp 
add_files nearest_neighbor.cpp

add_files -tb testbench.cpp
add_files -tb testing_set.dat

open_solution solution1

set_part xc7z020clg484-1
config_rtl -reset state
csynth_design

# RTL (VERILOG) CO-SIMULATION
#cosim_design -rtl verilog -trace_level all
exit
