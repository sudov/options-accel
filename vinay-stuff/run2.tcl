############################################################
open_project hls.prj
set_top black_scholes2_loop

add_files black_scholes2.c
add_files black_scholes2_loop.c
add_files current_var.c
add_files gaussian.c
add_files mt19937ar.c

open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10

#source "./directives.tcl"
csynth_design

#cosim_design