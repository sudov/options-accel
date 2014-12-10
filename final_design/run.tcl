############################################################
open_project hls.prj -reset
set_top BlackScholes

add_files BlackScholes.c
add_files CND.c
add_files mt19937ar.c

open_solution "solution1"
set_part {xc7z020clg484-1}

create_clock -period 10

# Config DSP usage for FPUs
promote_core DAddSub_nodsp
promote_core DMul_meddsp
promote_core DExp_meddsp
promote_core DLog_meddsp

# Disable inlining for CND function (for debugging)
#set_directive_inline CND -off

# Config overall design throughput
set_directive_pipeline -II 8 BlackScholes
 
#source "./directives.tcl"
csynth_design

#cosim_design
