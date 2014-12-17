; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2
@kk_p1 = global i16 1, align 2
@kk_pm = global i16 397, align 2
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str25 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941]
@str = internal constant [4 x i8] c"dut\00"
@str531 = internal constant [8 x i8] c"ap_fifo\00"
@str532 = internal constant [1 x i8] zeroinitializer

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %kk_load = load i16* @kk, align 2
  %tmp = zext i16 %kk_load to i64
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp
  %mt_kk_load = load i64* %mt_kk_addr, align 8
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31)
  %kk_p1_load = load i16* @kk_p1, align 2
  %tmp_5 = zext i16 %kk_p1_load to i64
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_5
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8
  %tmp_3 = trunc i64 %mt_kkp1_load to i1
  %mag01_cast_cast = select i1 %tmp_3, i64 2567483615, i64 0
  %kk_pm_load = load i16* @kk_pm, align 2
  %tmp_9 = zext i16 %kk_pm_load to i64
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_9
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30)
  %tmp_s = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_1, i30 %tmp_2)
  %tmp_cast = zext i31 %tmp_s to i64
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load
  %mt_kk_new = xor i64 %tmp1, %tmp_cast
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8
  %a_assign = add i16 %kk_load, 1
  %tmp_i = icmp ugt i16 %a_assign, 623
  %tmp_1_i = add i16 %kk_load, -623
  %a_assign_1 = select i1 %tmp_i, i16 %tmp_1_i, i16 %a_assign
  store i16 %a_assign_1, i16* @kk, align 2
  %a_assign_2 = add i16 %kk_p1_load, 1
  %tmp_i1 = icmp ugt i16 %a_assign_2, 623
  %tmp_2_i = add i16 %kk_p1_load, -623
  %a_assign_3 = select i1 %tmp_i1, i16 %tmp_2_i, i16 %a_assign_2
  store i16 %a_assign_3, i16* @kk_p1, align 2
  %a_assign_4 = add i16 %kk_pm_load, 1
  %tmp_i3 = icmp ugt i16 %a_assign_4, 623
  %tmp_3_i = add i16 %kk_pm_load, -623
  %a_assign_5 = select i1 %tmp_i3, i16 %tmp_3_i, i16 %a_assign_4
  store i16 %a_assign_5, i16* @kk_pm, align 2
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define internal fastcc void @BlackScholes() nounwind uwtable {
._crit_edge:
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call fastcc void @rand_uint32()
  ret void
}

define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo_V), !map !33
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo_V, [8 x i8]* @str531, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str532, [1 x i8]* @str532, [8 x i8]* @str531)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind
  %tmp_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_1_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_2_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_3_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_4_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_5_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_6_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_7_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_8_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_9_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i17 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i17 %i, -31072
  %i_1 = add i17 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100000, i64 100000, i64 100000)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str25) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str25)
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str14) nounwind
  call fastcc void @BlackScholes()
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str25, i32 %tmp_s)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare void @_GLOBAL__I_a1941() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_9 = zext i30 %1 to i31
  %empty_10 = trunc i31 %empty to i1
  %empty_11 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_9, i32 30)
  %empty_12 = or i1 %empty_10, %empty_11
  %empty_13 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_9, i1 %empty_12, i32 30, i32 30)
  ret i31 %empty_13
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_14 = trunc i64 %empty to i30
  ret i30 %empty_14
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_15 = shl i64 1, %empty
  %empty_16 = and i64 %0, %empty_15
  %empty_17 = icmp ne i64 %empty_16, 0
  ret i1 %empty_17
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i1(i31 %0, i1 %1, i32 %2, i32 %3)
  ret i31 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i31.i32(i31, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i31
  %empty_18 = shl i31 1, %empty
  %empty_19 = and i31 %0, %empty_18
  %empty_20 = icmp ne i31 %empty_19, 0
  ret i1 %empty_20
}

declare i31 @llvm.part.set.i31.i1(i31, i1, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7, !12, !17, !22}

!0 = metadata !{metadata !1, i16* @kk}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 15, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"kk", metadata !5, metadata !"unsigned short"}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, i16* @kk_p1}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 15, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"kk_p1", metadata !5, metadata !"unsigned short"}
!12 = metadata !{metadata !13, i16* @kk_pm}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"kk_pm", metadata !5, metadata !"unsigned short"}
!17 = metadata !{metadata !18, null}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"__dso_handle", metadata !5, metadata !""}
!22 = metadata !{metadata !23, [2 x i32]* @llvm_global_ctors_0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"llvm.global_ctors.0", metadata !27, metadata !""}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 1}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"in_fifo.V", metadata !5, metadata !"int"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"out_fifo.V", metadata !5, metadata !"int"}
