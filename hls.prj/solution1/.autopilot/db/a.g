#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/cw444/Fall2014/ece5775/options-accel/hls.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
