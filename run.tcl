############################################################
open_project hls.prj
set_top black_scholes

add_files black_scholes.c
add_files gaussian.c
add_files mt19937ar.c

#-cflags "-DBIT_ACCURATE"
#add_files -tb cordic_test.cpp -cflags "-DBIT_ACCURATE"

open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10

#source "./directives.tcl"
csynth_design

#cosim_design
