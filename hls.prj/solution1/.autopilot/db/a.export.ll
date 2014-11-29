; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"black_scholes2\00"
@str210 = internal constant [8 x i8] c"ap_fifo\00"
@str213 = internal constant [8 x i8] c"ap_fifo\00"
@str216 = internal constant [8 x i8] c"ap_fifo\00"
@str221 = internal constant [8 x i8] c"ap_fifo\00"
@str224 = internal constant [8 x i8] c"ap_fifo\00"
@str227 = internal constant [8 x i8] c"ap_fifo\00"
@str231 = internal constant [22 x i8] c"sigma.channel.channel\00"
@str232 = internal constant [1 x i8] zeroinitializer
@str233 = internal constant [8 x i8] c"ap_fifo\00"
@str234 = internal constant [18 x i8] c"r.channel.channel\00"
@str235 = internal constant [1 x i8] zeroinitializer
@str236 = internal constant [8 x i8] c"ap_fifo\00"
@str237 = internal constant [18 x i8] c"T.channel.channel\00"
@str238 = internal constant [1 x i8] zeroinitializer
@str239 = internal constant [8 x i8] c"ap_fifo\00"
@str240 = internal constant [20 x i8] c"T.channel31.channel\00"
@str241 = internal constant [1 x i8] zeroinitializer
@str242 = internal constant [8 x i8] c"ap_fifo\00"
@str245 = internal constant [8 x i8] c"ap_fifo\00"
@str249 = internal constant [8 x i8] c"ap_fifo\00"
@str252 = internal constant [8 x i8] c"ap_fifo\00"
@str254 = internal constant [8 x i8] c"ap_fifo\00"
@str257 = internal constant [8 x i8] c"ap_fifo\00"
@str258 = internal constant [8 x i8] c"ap_fifo\00"
@str265 = internal constant [8 x i8] c"ap_fifo\00"
@str266 = internal constant [8 x i8] c"ap_fifo\00"

define double @black_scholes2(double %S, double %E, double %r, double %sigma, double %T, double %gaussian_random_number) nounwind uwtable readonly {
._crit_edge:
  %gaussian_random_number_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussian_random_number) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %p_channel42 = alloca double, align 8
  %p_channel41 = alloca double, align 8
  %p_channel40 = alloca double, align 8
  %p_channel39 = alloca double, align 8
  %T_channel31_channel = alloca double, align 8
  %p_channel38 = alloca double, align 8
  %p_channel37 = alloca double, align 8
  %T_channel_channel = alloca double, align 8
  %p_channel36 = alloca double, align 8
  %r_channel_channel = alloca double, align 8
  %tmp_1_channel = alloca double, align 8
  %sigma_channel_channel = alloca double, align 8
  %p_channel35 = alloca double, align 8
  %p_channel32 = alloca double, align 8
  %p_channel = alloca double, align 8
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(double %E) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussian_random_number) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  call fastcc void @black_scholes2_mult2_11(double* %p_channel35, double %sigma_read, double %sigma_read, double* %sigma_channel_channel) nounwind
  call fastcc void @black_scholes2_div_1(double* %tmp_1_channel, double* %p_channel35) nounwind
  %tmp_2_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge14_proc(double %r_read, double* %tmp_1_channel, double* %r_channel_channel) nounwind
  call fastcc void @black_scholes2_mult2_12(double* %p_channel36, double %tmp_2_loc_channel, double %T_read, double* %T_channel_channel) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str231, i32 1, [1 x i8]* @str232, [1 x i8]* @str232, i32 0, i32 0, double* %sigma_channel_channel, double* %sigma_channel_channel) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(double* %sigma_channel_channel, [8 x i8]* @str233, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str233, [8 x i8]* @str233, [8 x i8]* @str233) nounwind
  call fastcc void @black_scholes2_mult2_11.1(double* %p_channel37, double* %sigma_channel_channel, double %gaussian_random_number_read) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str237, i32 1, [1 x i8]* @str238, [1 x i8]* @str238, i32 0, i32 0, double* %T_channel_channel, double* %T_channel_channel) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecInterface(double* %T_channel_channel, [8 x i8]* @str239, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str239, [8 x i8]* @str239, [8 x i8]* @str239) nounwind
  call fastcc void @black_scholes2_sqrt1(double* %p_channel38, double* %T_channel_channel, double* %T_channel31_channel) nounwind
  call fastcc void @black_scholes2_mult2_11.2(double* %p_channel39, double* %p_channel37, double* %p_channel38, double* %p_channel) nounwind
  %tmp3_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge111_proc(double* %p_channel36, double* %p_channel39) nounwind
  call fastcc void @black_scholes2_expo11(double* %p_channel40, double %tmp3_loc_channel) nounwind
  call fastcc void @black_scholes2_mult2_11.3(double* %p_channel41, double* %p_channel40, double %S_read, double* %p_channel32) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str234, i32 1, [1 x i8]* @str235, [1 x i8]* @str235, i32 0, i32 0, double* %r_channel_channel, double* %r_channel_channel) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_channel_channel, [8 x i8]* @str236, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str236, [8 x i8]* @str236, [8 x i8]* @str236) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str240, i32 1, [1 x i8]* @str241, [1 x i8]* @str241, i32 0, i32 0, double* %T_channel31_channel, double* %T_channel31_channel) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(double* %T_channel31_channel, [8 x i8]* @str242, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str242, [8 x i8]* @str242, [8 x i8]* @str242) nounwind
  %call_ret = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge115_proc(double* %r_channel_channel, double* %T_channel31_channel) nounwind
  call fastcc void @black_scholes2_expo12(double* %p_channel42, double %call_ret) nounwind
  %tmp4_1_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge117_proc(double* %p_channel41, double %E_read, double* %p_channel42) nounwind
  %tmp = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge_proc(double %tmp4_1_loc_channel) nounwind
  ret double %tmp
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define internal fastcc void @black_scholes2_mult2_11(double* nocapture %return_r, double %a, double %b, double* %a_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str245, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str245, [8 x i8]* @str245, [8 x i8]* @str245)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str210, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str210, [8 x i8]* @str210, [8 x i8]* @str210)
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b)
  %a_read = call double @_ssdm_op_Read.ap_auto.double(double %a)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  %tmp_i = fmul double %a_read, %b_read
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc void @black_scholes2_div_1(double* nocapture %a_2, double* nocapture %a) {
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a)
  %a_1_assign = fmul double %a_read, 5.000000e-01
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %a_2, double %a_1_assign)
  ret void
}

define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge14_proc(double %r, double* nocapture %tmp_1, double* %r_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_out, [8 x i8]* @str249, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str249, [8 x i8]* @str249, [8 x i8]* @str249)
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r)
  %tmp_1_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp_1)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_out, [8 x i8]* @str213, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str213, [8 x i8]* @str213, [8 x i8]* @str213)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %r_out, double %r_read)
  %tmp_2_out = fsub double %r_read, %tmp_1_read
  ret double %tmp_2_out
}

define internal fastcc void @black_scholes2_mult2_12(double* nocapture %return_r, double %p_read, double %b, double* %b_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %b_out, [8 x i8]* @str252, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str252, [8 x i8]* @str252, [8 x i8]* @str252)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecInterface(double* %b_out, [8 x i8]* @str216, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str216, [8 x i8]* @str216, [8 x i8]* @str216)
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b)
  %p_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %b_out, double %b_read)
  %tmp_i = fmul double %p_read_1, %b_read
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc void @black_scholes2_mult2_11.1(double* nocapture %return_r, double* %a, double %b) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a, [8 x i8]* @str254, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str254, [8 x i8]* @str254, [8 x i8]* @str254)
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b)
  %a_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %a)
  %tmp_i = fmul double %a_read, %b_read
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc void @black_scholes2_sqrt1(double* nocapture %return_r, double* %a, double* %a_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str258, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str258, [8 x i8]* @str258, [8 x i8]* @str258)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a, [8 x i8]* @str257, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str257, [8 x i8]* @str257, [8 x i8]* @str257)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str221, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str221, [8 x i8]* @str221, [8 x i8]* @str221)
  %a_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %a)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  %tmp_i = call double @llvm.sqrt.f64(double %a_read) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc void @black_scholes2_mult2_11.2(double* nocapture %return_r, double* nocapture %a, double* nocapture %b, double* %a_out) {
entry:
  %b_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %b)
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a)
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str224, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str224, [8 x i8]* @str224, [8 x i8]* @str224)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  %tmp_i = fmul double %a_read, %b_read
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge111_proc(double* nocapture %tmp_3, double* nocapture %tmp2_1) {
newFuncRoot:
  %tmp2_1_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp2_1)
  %tmp_3_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp_3)
  %tmp3 = fadd double %tmp_3_read, %tmp2_1_read
  ret double %tmp3
}

define internal fastcc void @black_scholes2_expo11(double* nocapture %return_r, double %p_read) {
  %p_read_2 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  %tmp = call double @llvm.exp.f64(double %p_read_2)
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp)
  ret void
}

define internal fastcc void @black_scholes2_mult2_11.3(double* nocapture %return_r, double* nocapture %a, double %b, double* %a_out) {
entry:
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b)
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a)
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str227, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str227, [8 x i8]* @str227, [8 x i8]* @str227)
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  %tmp_i = fmul double %a_read, %b_read
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp_i)
  ret void
}

define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge115_proc(double* %r, double* %T) readonly {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %T, [8 x i8]* @str266, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str266, [8 x i8]* @str266, [8 x i8]* @str266)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r, [8 x i8]* @str265, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str265, [8 x i8]* @str265, [8 x i8]* @str265)
  %T_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %T)
  %r_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %r)
  %tmp_9_to_int_i = bitcast double %r_read to i64
  %tmp_9_neg_i = xor i64 %tmp_9_to_int_i, -9223372036854775808
  %tmp_9_i = bitcast i64 %tmp_9_neg_i to double
  %tmp_out = fmul double %tmp_9_i, %T_read
  ret double %tmp_out
}

define internal fastcc void @black_scholes2_expo12(double* nocapture %return_r, double %p_read) {
  %p_read_3 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  %tmp = call double @llvm.exp.f64(double %p_read_3)
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return_r, double %tmp)
  ret void
}

define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge117_proc(double* nocapture %tmp3_2, double %E, double* nocapture %tmp4) {
newFuncRoot:
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E)
  %tmp4_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp4)
  %tmp3_2_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp3_2)
  %tmp_4 = fsub double %tmp3_2_read, %E_read
  %tmp_6 = fcmp olt double %tmp_4, 0.000000e+00
  %tmp_7 = select i1 %tmp_6, double 0.000000e+00, double %tmp_4
  %tmp4_1 = fmul double %tmp_7, %tmp4_read
  ret double %tmp4_1
}

define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge_proc(double %p_read) readnone {
entry:
  %p_read_4 = call double @_ssdm_op_Read.ap_auto.double(double %p_read)
  ret double %p_read_4
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak double @_ssdm_op_Read.ap_auto.volatile.doubleP(double*) {
entry:
  %empty = load double* %0
  ret double %empty
}

define weak void @_ssdm_op_Write.ap_auto.volatile.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

define weak double @_ssdm_op_Read.ap_fifo.doubleP(double*) {
entry:
  %empty = call double @_autotb_FifoRead_double(double* %0)
  ret double %empty
}

define weak void @_ssdm_op_Write.ap_fifo.doubleP(double*, double) {
entry:
  %empty = call double @_autotb_FifoWrite_double(double* %0, double %1)
  ret void
}

declare double @_autotb_FifoRead_double(double*)

declare double @_autotb_FifoWrite_double(double*, double)

!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, null}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"__dso_handle", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 63, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"S", metadata !16, metadata !"double"}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 63, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"E", metadata !16, metadata !"double"}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 63, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"r", metadata !16, metadata !"double"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 63, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"sigma", metadata !16, metadata !"double"}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"T", metadata !16, metadata !"double"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"gaussian_random_number", metadata !16, metadata !"double"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 63, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"return", metadata !42, metadata !""}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 1, i32 0}
