############################################################
open_project hls.prj
set_top black_scholes3

add_files black_scholes2.c
add_files gaussian.c
add_files mt19937ar.c

set_directive_dataflow black_scholes2
# set_directive_dataflow current_var

open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10

#source "./directives.tcl"
csynth_design

#cosim_design
