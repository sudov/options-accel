##
## Core Generator Run Script, generator for Project Navigator checkversion command
##

proc findRtfPath { relativePath } {
   set xilenv ""
   if { [info exists ::env(XILINX) ] } {
      if { [info exists ::env(MYXILINX)] } {
         set xilenv [join [list $::env(MYXILINX) $::env(XILINX)] $::xilinx::path_sep ]
      } else {
         set xilenv $::env(XILINX)
      }
   }
   foreach path [ split $xilenv $::xilinx::path_sep ] {
      set fullPath [ file join $path $relativePath ]
      if { [ file exists $fullPath ] } {
         return $fullPath
      }
   }
   return ""
}

source [ findRtfPath "data/projnav/scripts/dpm_cgUtils.tcl" ]

set result [ run_cg_vcheck {/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/xillinux-eval-zedboard-1.1/runonce/fifo_32x512.xco /home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/xillinux-eval-zedboard-1.1/runonce/fifo_8x2048.xco /home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/xillinux-eval-zedboard-1.1/runonce/fifo_std_32x512.xco /home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/xillinux-eval-zedboard-1.1/runonce/vga_fifo.xco} xc7z020-1clg484 ]

if { $result == 0 } {
   puts "Core Generator checkversion command completed successfully."
} elseif { $result == 1 } {
   puts "Core Generator checkversion command failed."
} elseif { $result == 3 || $result == 4 } {
   # convert 'version check' result to real return range, bypassing any messages.
   set result [ expr $result - 3 ]
} else {
   puts "Core Generator checkversion cancelled."
}
exit $result
