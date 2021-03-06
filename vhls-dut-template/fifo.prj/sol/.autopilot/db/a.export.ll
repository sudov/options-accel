; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vhls-dut-template/fifo.prj/sol/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.hls::stream<int>" = type { i32 }

@p_str3 = private constant [13 x i8] c"ap_ctrl_none\00", align 1 ; <[13 x i8]*> [#uses=1]
@p_str4 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=1]
@cnt = internal global i32 0                      ; <i32*> [#uses=2]
@str = internal constant [8 x i8] c"ap_fifo\00"   ; <[8 x i8]*> [#uses=2]
@str1 = internal constant [8 x i8] c"ap_fifo\00"  ; <[8 x i8]*> [#uses=2]

define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i32* %out_fifo_V, [8 x i8]* @str1, [8 x i8]* @str1) ; <i32> [#uses=0]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %in_fifo_V, [8 x i8]* @str, [8 x i8]* @str) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecWire(i32 0, [13 x i8]* @p_str3, [1 x i8]* @p_str4) nounwind
  %tmp_0 = call i32 @_ssdm_op_FifoRead.volatile.i32P(i32* %in_fifo_V) ; <i32> [#uses=0]
  %cnt_load = load i32* @cnt, align 4             ; <i32> [#uses=1]
  %tmp = add nsw i32 %cnt_load, -1                ; <i32> [#uses=2]
  store i32 %tmp, i32* @cnt, align 4
  call void @_ssdm_op_FifoWrite.volatile.i32P(i32* %out_fifo_V, i32 %tmp)
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @_ssdm_op_SpecFifo(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_FifoRead.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; <i32> [#uses=1]
  ret i32 %empty
}

define weak void @_ssdm_op_FifoWrite.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; <i32> [#uses=0]
  ret void
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"cnt", metadata !"cnt", metadata !"", metadata !3, i32 6, metadata !12, i1 true, i1 true, i32* @cnt} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458798, i32 0, metadata !2, metadata !"dut", metadata !"dut", metadata !"_Z3dutRN3hls6streamIiEES2_", metadata !3, i32 3, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"fifo.pragma.2.cpp", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vhls-dut-template/fifo.prj/sol/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458769, i32 0, i32 4, metadata !"fifo.cpp", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vhls-dut-template/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!4 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !6}
!6 = metadata !{i32 458768, metadata !2, metadata !"stream<int>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_reference_type ]
!7 = metadata !{i32 458771, metadata !8, metadata !"stream<int>", metadata !9, i32 34, i64 32, i64 32, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_structure_type ]
!8 = metadata !{i32 458809, metadata !2, metadata !"hls", metadata !9, i32 23} ; [ DW_TAG_namespace ]
!9 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_stream.h", metadata !"/opt/xilinx/Vivado_HLS/2012.3/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!10 = metadata !{metadata !11, metadata !13, metadata !17, metadata !23, metadata !28, metadata !32, metadata !36, metadata !41, metadata !46, metadata !47, metadata !48, metadata !51, metadata !54, metadata !55}
!11 = metadata !{i32 458765, metadata !7, metadata !"V", metadata !9, i32 111, i64 32, i64 32, i64 0, i32 1, metadata !12} ; [ DW_TAG_member ]
!12 = metadata !{i32 458788, metadata !2, metadata !"int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 458798, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 37, metadata !14, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !7} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 458798, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 40, metadata !18, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !16, metadata !20}
!20 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!22 = metadata !{i32 458788, metadata !2, metadata !"char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 458798, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 45, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !16, metadata !26}
!26 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_reference_type ]
!27 = metadata !{i32 458790, metadata !8, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_const_type ]
!28 = metadata !{i32 458798, i32 0, metadata !7, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !9, i32 48, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{metadata !31, metadata !16, metadata !26}
!31 = metadata !{i32 458768, metadata !2, metadata !"hlsstream<int>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 458798, i32 0, metadata !7, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !9, i32 55, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !16, metadata !35}
!35 = metadata !{i32 458768, metadata !2, metadata !"int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_reference_type ]
!36 = metadata !{i32 458798, i32 0, metadata !7, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !9, i32 59, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !16, metadata !39}
!39 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!41 = metadata !{i32 458798, i32 0, metadata !7, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !9, i32 66, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, null} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{metadata !44, metadata !45}
!44 = metadata !{i32 458788, metadata !2, metadata !"bool", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !27} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 458798, i32 0, metadata !7, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !9, i32 71, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 458798, i32 0, metadata !7, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !9, i32 77, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 458798, i32 0, metadata !7, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !9, i32 83, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{metadata !12, metadata !16}
!51 = metadata !{i32 458798, i32 0, metadata !7, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !9, i32 90, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !44, metadata !16, metadata !35}
!54 = metadata !{i32 458798, i32 0, metadata !7, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !9, i32 98, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 458798, i32 0, metadata !7, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !9, i32 104, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, null} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !44, metadata !16, metadata !39}
