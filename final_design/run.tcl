############################################################
open_project hls.prj
set_top BlackScholes

add_files BlackScholes.c
add_files CND.c

open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10
 
#source "./directives.tcl"
csynth_design

#cosim_design
