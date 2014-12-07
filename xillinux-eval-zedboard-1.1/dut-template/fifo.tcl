open_project fifo.prj -reset
add_files fifo.c
set_top dut

open_solution sol 

set_part xc7z020clg484-1
config_rtl -reset state
csynth_design

exit
