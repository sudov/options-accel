############################################################
open_project hls.prj -reset
# set_top dut 
set_top BlackScholesWrapper

add_files BlackScholesWrapper.cpp
add_files BlackScholes.cpp
add_files CND.cpp
add_files mt19937ar.cpp
add_files BlackScholes_dut.cpp
# add_files BlackScholes.c
# add_files CND.c
# add_files mt19937ar.c

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
set_directive_pipeline -II 1 BlackScholesWrapper/loop
set_directive_pipeline -II 1 BlackScholes
config_rtl -reset state
 
#source "./directives.tcl"
csynth_design

# export_design -format pcore -version 1.04.a
#cosim_design
