#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vhls-dut-template/fifo.prj/sol/.autopilot/db/a.g.bc ${1+"$@"}
