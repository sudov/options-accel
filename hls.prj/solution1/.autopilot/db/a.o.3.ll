; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/hls.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [15 x i8] c"black_scholes2\00" ; [#uses=1 type=[15 x i8]*]
@str210 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str213 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str216 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str221 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str224 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str227 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str231 = internal constant [22 x i8] c"sigma.channel.channel\00" ; [#uses=1 type=[22 x i8]*]
@str232 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str233 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str234 = internal constant [18 x i8] c"r.channel.channel\00" ; [#uses=1 type=[18 x i8]*]
@str235 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str236 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str237 = internal constant [18 x i8] c"T.channel.channel\00" ; [#uses=1 type=[18 x i8]*]
@str238 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str239 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str240 = internal constant [20 x i8] c"T.channel31.channel\00" ; [#uses=1 type=[20 x i8]*]
@str241 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str242 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str245 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str249 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str252 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str254 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str257 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str258 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str265 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str266 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]

; [#uses=0]
define double @black_scholes2(double %S, double %E, double %r, double %sigma, double %T, double %gaussian_random_number) nounwind uwtable readonly {
._crit_edge:
  %gaussian_random_number_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussian_random_number) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number_read}, i64 0, metadata !12), !dbg !21 ; [debug line = 49:23] [debug variable = gaussian_random_number]
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %T_read}, i64 0, metadata !22), !dbg !23 ; [debug line = 48:23] [debug variable = T]
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind ; [#uses=2 type=double]
  call void @llvm.dbg.value(metadata !{double %sigma_read}, i64 0, metadata !24), !dbg !25 ; [debug line = 47:23] [debug variable = sigma]
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %r_read}, i64 0, metadata !26), !dbg !27 ; [debug line = 46:23] [debug variable = r]
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %E_read}, i64 0, metadata !28), !dbg !29 ; [debug line = 45:23] [debug variable = E]
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !30), !dbg !31 ; [debug line = 44:23] [debug variable = S]
  %p_channel42 = alloca double, align 8           ; [#uses=2 type=double*]
  %p_channel41 = alloca double, align 8           ; [#uses=2 type=double*]
  %p_channel40 = alloca double, align 8           ; [#uses=2 type=double*]
  %p_channel39 = alloca double, align 8           ; [#uses=2 type=double*]
  %T_channel31_channel = alloca double, align 8   ; [#uses=5 type=double*]
  %p_channel38 = alloca double, align 8           ; [#uses=2 type=double*]
  %p_channel37 = alloca double, align 8           ; [#uses=2 type=double*]
  %T_channel_channel = alloca double, align 8     ; [#uses=5 type=double*]
  %p_channel36 = alloca double, align 8           ; [#uses=2 type=double*]
  %r_channel_channel = alloca double, align 8     ; [#uses=5 type=double*]
  %tmp_1_channel = alloca double, align 8         ; [#uses=2 type=double*]
  %sigma_channel_channel = alloca double, align 8 ; [#uses=5 type=double*]
  %p_channel35 = alloca double, align 8           ; [#uses=2 type=double*]
  %p_channel32 = alloca double, align 8           ; [#uses=1 type=double*]
  %p_channel = alloca double, align 8             ; [#uses=1 type=double*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !32 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(double %E) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussian_random_number) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !60
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !30), !dbg !31 ; [debug line = 44:23] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !28), !dbg !29 ; [debug line = 45:23] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !26), !dbg !27 ; [debug line = 46:23] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !24), !dbg !25 ; [debug line = 47:23] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !22), !dbg !23 ; [debug line = 48:23] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number}, i64 0, metadata !12), !dbg !21 ; [debug line = 49:23] [debug variable = gaussian_random_number]
  call fastcc void @black_scholes2_mult2_11(double* %p_channel35, double %sigma_read, double %sigma_read, double* %sigma_channel_channel) nounwind, !dbg !66 ; [debug line = 62:11]
  call fastcc void @black_scholes2_div_1(double* %tmp_1_channel, double* %p_channel35) nounwind, !dbg !67 ; [debug line = 63:11]
  %tmp_2_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge14_proc(double %r_read, double* %tmp_1_channel, double* %r_channel_channel) nounwind ; [#uses=1 type=double]
  call fastcc void @black_scholes2_mult2_12(double* %p_channel36, double %tmp_2_loc_channel, double %T_read, double* %T_channel_channel) nounwind, !dbg !68 ; [debug line = 66:11]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str231, i32 1, [1 x i8]* @str232, [1 x i8]* @str232, i32 0, i32 0, double* %sigma_channel_channel, double* %sigma_channel_channel) nounwind ; [#uses=0 type=i32]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(double* %sigma_channel_channel, [8 x i8]* @str233, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str233, [8 x i8]* @str233, [8 x i8]* @str233) nounwind ; [#uses=0 type=i32]
  call fastcc void @black_scholes2_mult2_11.1(double* %p_channel37, double* %sigma_channel_channel, double %gaussian_random_number_read) nounwind, !dbg !69 ; [debug line = 67:12]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str237, i32 1, [1 x i8]* @str238, [1 x i8]* @str238, i32 0, i32 0, double* %T_channel_channel, double* %T_channel_channel) nounwind ; [#uses=0 type=i32]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecInterface(double* %T_channel_channel, [8 x i8]* @str239, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str239, [8 x i8]* @str239, [8 x i8]* @str239) nounwind ; [#uses=0 type=i32]
  call fastcc void @black_scholes2_sqrt1(double* %p_channel38, double* %T_channel_channel, double* %T_channel31_channel) nounwind, !dbg !70 ; [debug line = 68:25]
  call fastcc void @black_scholes2_mult2_11.2(double* %p_channel39, double* %p_channel37, double* %p_channel38, double* %p_channel) nounwind, !dbg !70 ; [debug line = 68:25]
  %tmp3_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge111_proc(double* %p_channel36, double* %p_channel39) nounwind ; [#uses=1 type=double]
  call fastcc void @black_scholes2_expo11(double* %p_channel40, double %tmp3_loc_channel) nounwind, !dbg !71 ; [debug line = 70:12]
  call fastcc void @black_scholes2_mult2_11.3(double* %p_channel41, double* %p_channel40, double %S_read, double* %p_channel32) nounwind, !dbg !72 ; [debug line = 71:12]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str234, i32 1, [1 x i8]* @str235, [1 x i8]* @str235, i32 0, i32 0, double* %r_channel_channel, double* %r_channel_channel) nounwind ; [#uses=0 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_channel_channel, [8 x i8]* @str236, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str236, [8 x i8]* @str236, [8 x i8]* @str236) nounwind ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str240, i32 1, [1 x i8]* @str241, [1 x i8]* @str241, i32 0, i32 0, double* %T_channel31_channel, double* %T_channel31_channel) nounwind ; [#uses=0 type=i32]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(double* %T_channel31_channel, [8 x i8]* @str242, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str242, [8 x i8]* @str242, [8 x i8]* @str242) nounwind ; [#uses=0 type=i32]
  %call_ret = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge115_proc(double* %r_channel_channel, double* %T_channel31_channel) nounwind ; [#uses=1 type=double]
  call fastcc void @black_scholes2_expo12(double* %p_channel42, double %call_ret) nounwind, !dbg !73 ; [debug line = 74:12]
  %tmp4_1_loc_channel = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge117_proc(double* %p_channel41, double %E_read, double* %p_channel42) nounwind ; [#uses=1 type=double]
  %tmp = call fastcc double @black_scholes2_black_scholes2_Block_._crit_edge_proc(double %tmp4_1_loc_channel) nounwind ; [#uses=1 type=double]
  ret double %tmp, !dbg !74                       ; [debug line = 84:5]
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=35]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=4]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=18]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @black_scholes2_mult2_11(double* nocapture %return, double %a, double %b, double* %a_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str245, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str245, [8 x i8]* @str245, [8 x i8]* @str245) ; [#uses=0 type=i32]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str210, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str210, [8 x i8]* @str210, [8 x i8]* @str210) ; [#uses=0 type=i32]
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %b_read}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %a_read = call double @_ssdm_op_Read.ap_auto.double(double %a) ; [#uses=2 type=double]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !80), !dbg !81 ; [debug line = 26:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %tmp_i = fmul double %a_read, %b_read, !dbg !82 ; [#uses=1 type=double] [debug line = 27:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc void @black_scholes2_div_1(double* nocapture %a_2, double* nocapture %a) {
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double* %a_2}, i64 0, metadata !84), !dbg !86 ; [debug line = 29:21] [debug variable = a]
  %a_1_assign = fmul double %a_read, 5.000000e-01, !dbg !87 ; [#uses=1 type=double] [debug line = 30:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %a_2, double %a_1_assign)
  ret void
}

; [#uses=1]
define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge14_proc(double %r, double* nocapture %tmp_1, double* %r_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_out, [8 x i8]* @str249, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str249, [8 x i8]* @str249, [8 x i8]* @str249) ; [#uses=0 type=i32]
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) ; [#uses=2 type=double]
  %tmp_1_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp_1) ; [#uses=1 type=double]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r_out, [8 x i8]* @str213, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str213, [8 x i8]* @str213, [8 x i8]* @str213) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %r_out, double %r_read)
  call void @llvm.dbg.value(metadata !{double* %tmp_1}, i64 0, metadata !89), !dbg !67 ; [debug line = 63:11] [debug variable = tmp]
  %tmp_2_out = fsub double %r_read, %tmp_1_read, !dbg !68 ; [#uses=1 type=double] [debug line = 66:11]
  ret double %tmp_2_out
}

; [#uses=1]
define internal fastcc void @black_scholes2_mult2_12(double* nocapture %return, double %p_read, double %b, double* %b_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %b_out, [8 x i8]* @str252, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str252, [8 x i8]* @str252, [8 x i8]* @str252) ; [#uses=0 type=i32]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecInterface(double* %b_out, [8 x i8]* @str216, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str216, [8 x i8]* @str216, [8 x i8]* @str216) ; [#uses=0 type=i32]
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) ; [#uses=2 type=double]
  call void @llvm.dbg.value(metadata !{double %b_read}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %p_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %b_out, double %b_read)
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !80), !dbg !81 ; [debug line = 26:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %tmp_i = fmul double %p_read_1, %b_read, !dbg !82 ; [#uses=1 type=double] [debug line = 27:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc void @black_scholes2_mult2_11.1(double* nocapture %return, double* %a, double %b) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a, [8 x i8]* @str254, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str254, [8 x i8]* @str254, [8 x i8]* @str254) ; [#uses=0 type=i32]
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %b_read}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %a_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %a) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %a_read}, i64 0, metadata !80), !dbg !81 ; [debug line = 26:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %tmp_i = fmul double %a_read, %b_read, !dbg !82 ; [#uses=1 type=double] [debug line = 27:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc void @black_scholes2_sqrt1(double* nocapture %return, double* %a, double* %a_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str258, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str258, [8 x i8]* @str258, [8 x i8]* @str258) ; [#uses=0 type=i32]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a, [8 x i8]* @str257, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str257, [8 x i8]* @str257, [8 x i8]* @str257) ; [#uses=0 type=i32]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str221, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str221, [8 x i8]* @str221, [8 x i8]* @str221) ; [#uses=0 type=i32]
  %a_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %a) ; [#uses=2 type=double]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  call void @llvm.dbg.value(metadata !{double %a_read}, i64 0, metadata !90) nounwind, !dbg !94 ; [debug line = 37:21] [debug variable = a]
  %tmp_i = call double @llvm.sqrt.f64(double %a_read) nounwind, !dbg !95 ; [#uses=1 type=double] [debug line = 38:10]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc void @black_scholes2_mult2_11.2(double* nocapture %return, double* nocapture %a, double* nocapture %b, double* %a_out) {
entry:
  %b_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %b) ; [#uses=1 type=double]
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a) ; [#uses=2 type=double]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str224, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str224, [8 x i8]* @str224, [8 x i8]* @str224) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !80), !dbg !81 ; [debug line = 26:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %tmp_i = fmul double %a_read, %b_read, !dbg !82 ; [#uses=1 type=double] [debug line = 27:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge111_proc(double* nocapture %tmp_3, double* nocapture %tmp2_1) {
newFuncRoot:
  %tmp2_1_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp2_1) ; [#uses=1 type=double]
  %tmp_3_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp_3) ; [#uses=1 type=double]
  %tmp3 = fadd double %tmp_3_read, %tmp2_1_read, !dbg !97 ; [#uses=1 type=double] [debug line = 69:5]
  call void @llvm.dbg.value(metadata !{double* %tmp2_1}, i64 0, metadata !98), !dbg !70 ; [debug line = 68:25] [debug variable = tmp2]
  call void @llvm.dbg.value(metadata !{double %tmp3}, i64 0, metadata !99), !dbg !97 ; [debug line = 69:5] [debug variable = tmp3]
  ret double %tmp3
}

; [#uses=1]
define internal fastcc void @black_scholes2_expo11(double* nocapture %return, double %p_read) {
  %p_read_2 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !100), !dbg !102 ; [debug line = 33:21] [debug variable = a]
  %tmp = call double @llvm.exp.f64(double %p_read_2), !dbg !103 ; [#uses=1 type=double] [debug line = 34:10]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp)
  ret void
}

; [#uses=1]
define internal fastcc void @black_scholes2_mult2_11.3(double* nocapture %return, double* nocapture %a, double %b, double* %a_out) {
entry:
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %b_read}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %a_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %a) ; [#uses=2 type=double]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %a_out, [8 x i8]* @str227, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str227, [8 x i8]* @str227, [8 x i8]* @str227) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.doubleP(double* %a_out, double %a_read)
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !80), !dbg !81 ; [debug line = 26:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !75), !dbg !79 ; [debug line = 26:33] [debug variable = b]
  %tmp_i = fmul double %a_read, %b_read, !dbg !82 ; [#uses=1 type=double] [debug line = 27:3]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp_i)
  ret void
}

; [#uses=1]
define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge115_proc(double* %r, double* %T) readonly {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(double* %T, [8 x i8]* @str266, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str266, [8 x i8]* @str266, [8 x i8]* @str266) ; [#uses=0 type=i32]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(double* %r, [8 x i8]* @str265, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str265, [8 x i8]* @str265, [8 x i8]* @str265) ; [#uses=0 type=i32]
  %T_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %T) ; [#uses=1 type=double]
  %r_read = call double @_ssdm_op_Read.ap_fifo.doubleP(double* %r) ; [#uses=1 type=double]
  %tmp_9_to_int_i = bitcast double %r_read to i64, !dbg !73 ; [#uses=1 type=i64] [debug line = 74:12]
  %tmp_9_neg_i = xor i64 %tmp_9_to_int_i, -9223372036854775808, !dbg !73 ; [#uses=1 type=i64] [debug line = 74:12]
  %tmp_9_i = bitcast i64 %tmp_9_neg_i to double, !dbg !73 ; [#uses=1 type=double] [debug line = 74:12]
  %tmp_out = fmul double %tmp_9_i, %T_read, !dbg !73 ; [#uses=1 type=double] [debug line = 74:12]
  ret double %tmp_out
}

; [#uses=1]
define internal fastcc void @black_scholes2_expo12(double* nocapture %return, double %p_read) {
  %p_read_3 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double* %return}, i64 0, metadata !100), !dbg !102 ; [debug line = 33:21] [debug variable = a]
  %tmp = call double @llvm.exp.f64(double %p_read_3), !dbg !103 ; [#uses=1 type=double] [debug line = 34:10]
  call void @_ssdm_op_Write.ap_auto.volatile.doubleP(double* %return, double %tmp)
  ret void
}

; [#uses=1]
define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge117_proc(double* nocapture %tmp3_2, double %E, double* nocapture %tmp4) {
newFuncRoot:
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) ; [#uses=1 type=double]
  %tmp4_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp4) ; [#uses=1 type=double]
  %tmp3_2_read = call double @_ssdm_op_Read.ap_auto.volatile.doubleP(double* %tmp3_2) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double* %tmp4}, i64 0, metadata !105), !dbg !73 ; [debug line = 74:12] [debug variable = tmp4]
  %tmp_4 = fsub double %tmp3_2_read, %E_read, !dbg !106 ; [#uses=2 type=double] [debug line = 75:5]
  %tmp_6 = fcmp olt double %tmp_4, 0.000000e+00, !dbg !106 ; [#uses=1 type=i1] [debug line = 75:5]
  %tmp_7 = select i1 %tmp_6, double 0.000000e+00, double %tmp_4, !dbg !106 ; [#uses=1 type=double] [debug line = 75:5]
  %tmp4_1 = fmul double %tmp_7, %tmp4_read, !dbg !106 ; [#uses=1 type=double] [debug line = 75:5]
  call void @llvm.dbg.value(metadata !{double %tmp4_1}, i64 0, metadata !105), !dbg !106 ; [debug line = 75:5] [debug variable = tmp4]
  ret double %tmp4_1
}

; [#uses=1]
define internal fastcc double @black_scholes2_black_scholes2_Block_._crit_edge_proc(double %p_read) readnone {
entry:
  %p_read_4 = call double @_ssdm_op_Read.ap_auto.double(double %p_read) ; [#uses=1 type=double]
  ret double %p_read_4
}

; [#uses=17]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=9]
define weak double @_ssdm_op_Read.ap_auto.volatile.doubleP(double*) {
entry:
  %empty = load double* %0                        ; [#uses=1 type=double]
  ret double %empty
}

; [#uses=9]
define weak void @_ssdm_op_Write.ap_auto.volatile.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

; [#uses=4]
define weak double @_ssdm_op_Read.ap_fifo.doubleP(double*) {
entry:
  %empty = call double @_autotb_FifoRead_double(double* %0) ; [#uses=1 type=double]
  ret double %empty
}

; [#uses=6]
define weak void @_ssdm_op_Write.ap_fifo.doubleP(double*, double) {
entry:
  %empty = call double @_autotb_FifoWrite_double(double* %0, double %1) ; [#uses=0 type=double]
  ret void
}

; [#uses=1]
declare double @_autotb_FifoRead_double(double*)

; [#uses=1]
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
!12 = metadata !{i32 786689, metadata !13, metadata !"gaussian_random_number", metadata !14, i32 100663345, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"black_scholes2", metadata !"black_scholes2", metadata !"", metadata !14, i32 43, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double, double, double, double, double)* @black_scholes2, null, null, metadata !19, i32 51} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"black_scholes2.c", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!17 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 49, i32 23, metadata !13, null}
!22 = metadata !{i32 786689, metadata !13, metadata !"T", metadata !14, i32 83886128, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 48, i32 23, metadata !13, null}
!24 = metadata !{i32 786689, metadata !13, metadata !"sigma", metadata !14, i32 67108911, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 47, i32 23, metadata !13, null}
!26 = metadata !{i32 786689, metadata !13, metadata !"r", metadata !14, i32 50331694, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 46, i32 23, metadata !13, null}
!28 = metadata !{i32 786689, metadata !13, metadata !"E", metadata !14, i32 33554477, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 45, i32 23, metadata !13, null}
!30 = metadata !{i32 786689, metadata !13, metadata !"S", metadata !14, i32 16777260, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 44, i32 23, metadata !13, null}
!32 = metadata !{i32 53, i32 1, metadata !33, null}
!33 = metadata !{i32 786443, metadata !13, i32 51, i32 1, metadata !14, i32 4} ; [ DW_TAG_lexical_block ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"S", metadata !38, metadata !"double"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 63, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"E", metadata !38, metadata !"double"}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 63, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"r", metadata !38, metadata !"double"}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 63, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"sigma", metadata !38, metadata !"double"}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 63, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"T", metadata !38, metadata !"double"}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 63, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"gaussian_random_number", metadata !38, metadata !"double"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 63, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"return", metadata !64, metadata !""}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 1, i32 0}
!66 = metadata !{i32 62, i32 11, metadata !33, null}
!67 = metadata !{i32 63, i32 11, metadata !33, null}
!68 = metadata !{i32 66, i32 11, metadata !33, null}
!69 = metadata !{i32 67, i32 12, metadata !33, null}
!70 = metadata !{i32 68, i32 25, metadata !33, null}
!71 = metadata !{i32 70, i32 12, metadata !33, null}
!72 = metadata !{i32 71, i32 12, metadata !33, null}
!73 = metadata !{i32 74, i32 12, metadata !33, null}
!74 = metadata !{i32 84, i32 5, metadata !33, null}
!75 = metadata !{i32 786689, metadata !76, metadata !"b", metadata !14, i32 33554458, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 786478, i32 0, metadata !14, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !14, i32 26, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 26} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !17, metadata !17, metadata !17}
!79 = metadata !{i32 26, i32 33, metadata !76, null}
!80 = metadata !{i32 786689, metadata !76, metadata !"a", metadata !14, i32 16777242, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 26, i32 23, metadata !76, null}
!82 = metadata !{i32 27, i32 3, metadata !83, null}
!83 = metadata !{i32 786443, metadata !76, i32 26, i32 35, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786689, metadata !85, metadata !"a", metadata !14, i32 16777245, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786478, i32 0, metadata !14, metadata !"div_1", metadata !"div_1", metadata !"", metadata !14, i32 29, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 29} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 29, i32 21, metadata !85, null}
!87 = metadata !{i32 30, i32 3, metadata !88, null}
!88 = metadata !{i32 786443, metadata !85, i32 29, i32 33, metadata !14, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786688, metadata !33, metadata !"tmp", metadata !14, i32 57, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786689, metadata !91, metadata !"a", metadata !14, i32 16777253, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786478, i32 0, metadata !14, metadata !"sqrt1", metadata !"sqrt1", metadata !"", metadata !14, i32 37, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 37} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{metadata !17, metadata !17}
!94 = metadata !{i32 37, i32 21, metadata !91, null}
!95 = metadata !{i32 38, i32 10, metadata !96, null}
!96 = metadata !{i32 786443, metadata !91, i32 37, i32 23, metadata !14, i32 3} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 69, i32 5, metadata !33, null}
!98 = metadata !{i32 786688, metadata !33, metadata !"tmp2", metadata !14, i32 58, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 786688, metadata !33, metadata !"tmp3", metadata !14, i32 59, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786689, metadata !101, metadata !"a", metadata !14, i32 16777249, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 786478, i32 0, metadata !14, metadata !"expo1", metadata !"expo1", metadata !"", metadata !14, i32 33, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 33} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 33, i32 21, metadata !101, null}
!103 = metadata !{i32 34, i32 10, metadata !104, null}
!104 = metadata !{i32 786443, metadata !101, i32 33, i32 23, metadata !14, i32 2} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786688, metadata !33, metadata !"tmp4", metadata !14, i32 60, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 75, i32 5, metadata !33, null}
