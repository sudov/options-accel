#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
