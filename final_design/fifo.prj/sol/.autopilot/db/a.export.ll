; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/fifo.prj/sol/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = internal constant [4 x i8] c"dut\00"
@str4 = internal constant [8 x i8] c"ap_fifo\00"
@str5 = internal constant [1 x i8] zeroinitializer
@str6 = internal constant [8 x i8] c"ap_fifo\00"
@str7 = internal constant [1 x i8] zeroinitializer

define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo_V), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo_V), !map !6
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_fifo_V, [8 x i8]* @str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str7, [1 x i8]* @str7, [8 x i8]* @str6)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo_V, [8 x i8]* @str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str5, [1 x i8]* @str5, [8 x i8]* @str4)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_6 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_3, i32 0)
  %tmp_5 = sext i32 %tmp_6 to i64
  %full = add nsw i64 %tmp_4, %tmp_5
  %r = bitcast i64 %full to double
  %tmp_7 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_9 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_7, i32 0)
  %tmp_8 = sext i32 %tmp_9 to i64
  %full_1 = add nsw i64 %tmp_s, %tmp_8
  %b = bitcast i64 %full_1 to double
  %result = fmul double %r, %b
  %ret = bitcast double %result to i64
  %data1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret, i32 32, i32 63)
  %data2 = trunc i64 %ret to i16
  %tmp_2 = zext i16 %data2 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %data1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %tmp_2)
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_8 = trunc i64 %empty to i32
  ret i32 %empty_8
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_9 = zext i32 %1 to i64
  %empty_10 = trunc i64 %empty to i32
  %empty_11 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %empty_9, i32 32, i32 63)
  %empty_12 = or i32 %empty_10, %empty_11
  %empty_13 = call i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64 %empty_9, i32 %empty_12, i32 32, i32 63)
  ret i64 %empty_13
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i32(i64 %0, i32 %1, i32 %2, i32 %3)
  ret i64 %empty
}

declare i64 @llvm.part.set.i64.i32(i64, i32, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_fifo.V", metadata !4, metadata !"int"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"out_fifo.V", metadata !4, metadata !"int"}
