; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2
@kk_p1 = global i16 1, align 2
@kk_pm = global i16 397, align 2
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str7 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@p_str18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1947]
@str = internal constant [20 x i8] c"BlackScholesWrapper\00"

define internal fastcc i64 @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str13) nounwind
  %kk_load = load i16* @kk, align 2
  %tmp = zext i16 %kk_load to i64
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp
  %mt_kk_load = load i64* %mt_kk_addr, align 8
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31)
  %kk_p1_load = load i16* @kk_p1, align 2
  %tmp_5 = zext i16 %kk_p1_load to i64
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_5
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8
  %tmp_7 = trunc i64 %mt_kkp1_load to i1
  %mag01_cast_cast = select i1 %tmp_7, i64 2567483615, i64 0
  %kk_pm_load = load i16* @kk_pm, align 2
  %tmp_9 = zext i16 %kk_pm_load to i64
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_9
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30)
  %tmp_s = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_1, i30 %tmp_3)
  %tmp_cast = zext i31 %tmp_s to i64
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load
  %mt_kk_new = xor i64 %tmp1, %tmp_cast
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8
  %tmp_2 = call i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64 %mt_kk_new, i32 11, i32 63)
  %tmp_4 = zext i53 %tmp_2 to i64
  %y_1 = xor i64 %tmp_4, %mt_kk_new
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 24)
  %tmp_11 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_1, i32 19, i32 21)
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 17)
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 14)
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 11, i32 12)
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 7)
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 5)
  %tmp_17 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 2, i32 3)
  %tmp_23 = trunc i64 %y_1 to i1
  %tmp_6 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1 %tmp_12, i2 0, i3 %tmp_11, i1 false, i1 %tmp_13, i2 0, i1 %tmp_15, i1 false, i2 %tmp_14, i3 0, i1 %tmp_16, i1 false, i1 %tmp_18, i1 false, i2 %tmp_17, i1 false, i1 %tmp_23, i7 0)
  %tmp_10_cast = zext i32 %tmp_6 to i64
  %y_2 = xor i64 %tmp_10_cast, %y_1
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_2, i32 14, i32 16)
  %tmp_20 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %y_2, i32 7, i32 12)
  %tmp_21 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_2, i32 2, i32 3)
  %tmp_8 = call i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3 %tmp_19, i1 false, i6 %tmp_20, i3 0, i2 %tmp_21, i17 0)
  %tmp_12_cast = zext i32 %tmp_8 to i64
  %y_3 = xor i64 %tmp_12_cast, %y_2
  %tmp_10 = call i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64 %y_3, i32 18, i32 63)
  %tmp_22 = zext i46 %tmp_10 to i64
  %y_4 = xor i64 %tmp_22, %y_3
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
  ret i64 %y_4
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define internal fastcc double @BlackScholes(i8 signext %CallPutFlag, double %S, double %X, double %T, double %r, double %b) nounwind uwtable {
_ifconv:
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %X_read = call double @_ssdm_op_Read.ap_auto.double(double %X) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %CallPutFlag_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %CallPutFlag) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %tmp = call fastcc i64 @rand_uint32()
  %rand_number = uitofp i64 %tmp to double
  %rand_number_1 = fdiv double %rand_number, 1.000000e+09
  %p_Val2_s = bitcast double %rand_number_1 to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i = zext i53 %p_Result_1 to i168
  %tmp_i_i_i_cast1 = zext i11 %loc_V to i12
  %sh_assign = add i12 %tmp_i_i_i_cast1, -1023
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_101 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_101 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_68_i_i = zext i32 %sh_assign_1_cast to i168
  %tmp_68_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_69_i_i = lshr i53 %p_Result_1, %tmp_68_i_i_cast
  %tmp_69_i_i_cast = zext i53 %tmp_69_i_i to i168
  %tmp_71_i_i = shl i168 %tmp_i_i, %tmp_68_i_i
  %p_Val2_3 = select i1 %isNeg, i168 %tmp_69_i_i_cast, i168 %tmp_71_i_i
  %p_Val2_4 = call i64 @_ssdm_op_PartSelect.i64.i168.i32.i32(i168 %p_Val2_3, i32 52, i32 115)
  %p_Val2_i_i = sub i64 0, %p_Val2_4
  %p_Val2_6 = select i1 %p_Result_s, i64 %p_Val2_i_i, i64 %p_Val2_4
  %tmp_s = sitofp i64 %p_Val2_6 to double
  %rand_number_2 = fsub double %rand_number_1, %tmp_s
  %X_assign = fadd double %rand_number_2, %b_read
  %p_Val2_7 = bitcast double %X_assign to i64
  %tmp_35 = trunc i64 %p_Val2_7 to i63
  %p_Result_2 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_35)
  %ret_i_i_i_i_i_i = bitcast i64 %p_Result_2 to double
  %tmp_i = fmul double %ret_i_i_i_i_i_i, 2.316419e-01
  %tmp_20_i = fadd double %tmp_i, 1.000000e+00
  %K = call double @_ssdm_op_DRecip.f64(double %tmp_20_i) nounwind
  %tmp_21_i = fmul double %X_assign, %X_assign
  %tmp_22_i = fmul double %tmp_21_i, -5.000000e-01
  %tmp_23_i = call double @llvm.exp.f64(double %tmp_22_i) nounwind
  %tmp_24_i = fmul double %tmp_23_i, 0x3FD9884533D43651
  %tmp_25_i = fmul double %K, 0x3FF548CDD6F42943
  %tmp_26_i = fadd double %tmp_25_i, 0xBFFD23DD4EF278D0
  %tmp_27_i = fmul double %K, %tmp_26_i
  %tmp_28_i = fadd double %tmp_27_i, 0x3FFC80EF025F5E68
  %tmp_29_i = fmul double %K, %tmp_28_i
  %tmp_30_i = fadd double %tmp_29_i, 0xBFD6D1F0E5A8325B
  %tmp_31_i = fmul double %K, %tmp_30_i
  %tmp_32_i = fadd double %tmp_31_i, 0x3FD470BF3A92F8EC
  %tmp_33_i = fmul double %K, %tmp_32_i
  %w = fmul double %tmp_24_i, %tmp_33_i
  %tmp_34_i = fcmp olt double %X_assign, 0.000000e+00
  %tmp_35_i = fsub double 1.000000e+00, %w
  %sig = select i1 %tmp_34_i, double %w, double %tmp_35_i
  %tmp_11 = icmp eq i8 %CallPutFlag_read, 99
  %tmp_12 = fmul double %sig, %sig
  %tmp_13 = fmul double %tmp_12, 5.000000e-01
  %tmp_14 = fsub double %r_read, %tmp_13
  %tmp_15 = fmul double %tmp_14, %T_read
  %tmp_16 = call double @llvm.sqrt.f64(double %T_read)
  %tmp_17 = fmul double %sig, %tmp_16
  %tmp_18 = fmul double %tmp_17, %rand_number_2
  %tmp_19 = fadd double %tmp_15, %tmp_18
  %tmp_20 = call double @llvm.exp.f64(double %tmp_19)
  %vc = fmul double %tmp_20, %S_read
  %tmp_21 = fsub double %vc, %X_read
  %tmp_22 = fcmp olt double %tmp_21, 0.000000e+00
  %call = select i1 %tmp_22, double 0.000000e+00, double %tmp_21
  %tmp_51_to_int = bitcast double %r_read to i64
  %tmp_51_neg = xor i64 %tmp_51_to_int, -9223372036854775808
  %tmp_23 = bitcast i64 %tmp_51_neg to double
  %tmp_24 = fmul double %tmp_23, %T_read
  %tmp_25 = call double @llvm.exp.f64(double %tmp_24)
  %tmp_26 = fadd double %tmp_13, %r_read
  %tmp_27 = fmul double %tmp_26, %T_read
  %tmp_28 = fadd double %tmp_27, %tmp_18
  %tmp_29 = call double @llvm.exp.f64(double %tmp_28)
  %vp = fmul double %tmp_29, %S_read
  %tmp_30 = fsub double %X_read, %vp
  %tmp_31 = fcmp olt double %tmp_30, 0.000000e+00
  %put = select i1 %tmp_31, double 0.000000e+00, double %tmp_30
  %p_0_v = select i1 %tmp_11, double %call, double %put
  %p_0 = fmul double %tmp_25, %p_0_v
  ret double %p_0
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

declare void @_GLOBAL__I_a1947() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @BlackScholesWrapper(i8 signext %CallPutFlag, double %S, double %X, double %T, double %r, double %b, [100000 x double]* %a) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %CallPutFlag) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(double %X) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(double %b) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap([100000 x double]* %a) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @str) nounwind
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %X_read = call double @_ssdm_op_Read.ap_auto.double(double %X) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %CallPutFlag_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %CallPutFlag) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i17 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i17 %i, -31072
  %i_1 = add i17 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100000, i64 100000, i64 100000) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str7) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str18) nounwind
  %tmp = call fastcc double @BlackScholes(i8 signext %CallPutFlag_read, double %S_read, double %X_read, double %T_read, double %r_read, double %b_read)
  %tmp_s = zext i17 %i to i64
  %a_addr = getelementptr [100000 x double]* %a, i64 0, i64 %tmp_s
  store double %tmp, double* %a_addr, align 8
  %empty_102 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str7, i32 %tmp_2) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak double @_ssdm_op_DRecip.f64(double) nounwind readnone {
entry:
  %empty = fdiv double 1.000000e+00, %0
  ret double %empty
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_103 = trunc i64 %empty to i11
  ret i11 %empty_103
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_104 = zext i52 %1 to i53
  %empty_105 = trunc i53 %empty to i1
  %empty_106 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %empty_104, i32 52)
  %empty_107 = or i1 %empty_105, %empty_106
  %empty_108 = call i53 @_ssdm_op_PartSet.i53.i53.i1.i32.i32(i53 %empty_104, i1 %empty_107, i32 52, i32 52)
  ret i53 %empty_108
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_109 = zext i63 %1 to i64
  %empty_110 = trunc i64 %empty to i1
  %empty_111 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %empty_109, i32 63)
  %empty_112 = or i1 %empty_110, %empty_111
  %empty_113 = call i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64 %empty_109, i1 %empty_112, i32 63, i32 63)
  ret i64 %empty_113
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19
  %empty_114 = zext i17 %5 to i19
  %empty_115 = trunc i19 %empty to i2
  %empty_116 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_114, i32 17, i32 18)
  %empty_117 = or i2 %empty_115, %empty_116
  %empty_118 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_114, i2 %empty_117, i32 17, i32 18)
  %empty_119 = zext i3 %3 to i22
  %empty_120 = zext i19 %empty_118 to i22
  %empty_121 = trunc i22 %empty_119 to i3
  %empty_122 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_120, i32 19, i32 21)
  %empty_123 = or i3 %empty_121, %empty_122
  %empty_124 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_120, i3 %empty_123, i32 19, i32 21)
  %empty_125 = zext i6 %2 to i28
  %empty_126 = zext i22 %empty_124 to i28
  %empty_127 = trunc i28 %empty_125 to i6
  %empty_128 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_126, i32 22, i32 27)
  %empty_129 = or i6 %empty_127, %empty_128
  %empty_130 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_126, i6 %empty_129, i32 22, i32 27)
  %empty_131 = zext i1 %1 to i29
  %empty_132 = zext i28 %empty_130 to i29
  %empty_133 = trunc i29 %empty_131 to i1
  %empty_134 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_132, i32 28)
  %empty_135 = or i1 %empty_133, %empty_134
  %empty_136 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_132, i1 %empty_135, i32 28, i32 28)
  %empty_137 = zext i3 %0 to i32
  %empty_138 = zext i29 %empty_136 to i32
  %empty_139 = trunc i32 %empty_137 to i3
  %empty_140 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_138, i32 29, i32 31)
  %empty_141 = or i3 %empty_139, %empty_140
  %empty_142 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_138, i3 %empty_141, i32 29, i32 31)
  ret i32 %empty_142
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8
  %empty_143 = zext i7 %17 to i8
  %empty_144 = trunc i8 %empty to i1
  %empty_145 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_143, i32 7)
  %empty_146 = or i1 %empty_144, %empty_145
  %empty_147 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_143, i1 %empty_146, i32 7, i32 7)
  %empty_148 = zext i1 %15 to i9
  %empty_149 = zext i8 %empty_147 to i9
  %empty_150 = trunc i9 %empty_148 to i1
  %empty_151 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_149, i32 8)
  %empty_152 = or i1 %empty_150, %empty_151
  %empty_153 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_149, i1 %empty_152, i32 8, i32 8)
  %empty_154 = zext i2 %14 to i11
  %empty_155 = zext i9 %empty_153 to i11
  %empty_156 = trunc i11 %empty_154 to i2
  %empty_157 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_155, i32 9, i32 10)
  %empty_158 = or i2 %empty_156, %empty_157
  %empty_159 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_155, i2 %empty_158, i32 9, i32 10)
  %empty_160 = zext i1 %13 to i12
  %empty_161 = zext i11 %empty_159 to i12
  %empty_162 = trunc i12 %empty_160 to i1
  %empty_163 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_161, i32 11)
  %empty_164 = or i1 %empty_162, %empty_163
  %empty_165 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_161, i1 %empty_164, i32 11, i32 11)
  %empty_166 = zext i1 %12 to i13
  %empty_167 = zext i12 %empty_165 to i13
  %empty_168 = trunc i13 %empty_166 to i1
  %empty_169 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_167, i32 12)
  %empty_170 = or i1 %empty_168, %empty_169
  %empty_171 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_167, i1 %empty_170, i32 12, i32 12)
  %empty_172 = zext i1 %11 to i14
  %empty_173 = zext i13 %empty_171 to i14
  %empty_174 = trunc i14 %empty_172 to i1
  %empty_175 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_173, i32 13)
  %empty_176 = or i1 %empty_174, %empty_175
  %empty_177 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_173, i1 %empty_176, i32 13, i32 13)
  %empty_178 = zext i1 %10 to i15
  %empty_179 = zext i14 %empty_177 to i15
  %empty_180 = trunc i15 %empty_178 to i1
  %empty_181 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_179, i32 14)
  %empty_182 = or i1 %empty_180, %empty_181
  %empty_183 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_179, i1 %empty_182, i32 14, i32 14)
  %empty_184 = zext i3 %9 to i18
  %empty_185 = zext i15 %empty_183 to i18
  %empty_186 = trunc i18 %empty_184 to i3
  %empty_187 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_185, i32 15, i32 17)
  %empty_188 = or i3 %empty_186, %empty_187
  %empty_189 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_185, i3 %empty_188, i32 15, i32 17)
  %empty_190 = zext i2 %8 to i20
  %empty_191 = zext i18 %empty_189 to i20
  %empty_192 = trunc i20 %empty_190 to i2
  %empty_193 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_191, i32 18, i32 19)
  %empty_194 = or i2 %empty_192, %empty_193
  %empty_195 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_191, i2 %empty_194, i32 18, i32 19)
  %empty_196 = zext i1 %7 to i21
  %empty_197 = zext i20 %empty_195 to i21
  %empty_198 = trunc i21 %empty_196 to i1
  %empty_199 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_197, i32 20)
  %empty_200 = or i1 %empty_198, %empty_199
  %empty_201 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_197, i1 %empty_200, i32 20, i32 20)
  %empty_202 = zext i1 %6 to i22
  %empty_203 = zext i21 %empty_201 to i22
  %empty_204 = trunc i22 %empty_202 to i1
  %empty_205 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_203, i32 21)
  %empty_206 = or i1 %empty_204, %empty_205
  %empty_207 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_203, i1 %empty_206, i32 21, i32 21)
  %empty_208 = zext i2 %5 to i24
  %empty_209 = zext i22 %empty_207 to i24
  %empty_210 = trunc i24 %empty_208 to i2
  %empty_211 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_209, i32 22, i32 23)
  %empty_212 = or i2 %empty_210, %empty_211
  %empty_213 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_209, i2 %empty_212, i32 22, i32 23)
  %empty_214 = zext i1 %4 to i25
  %empty_215 = zext i24 %empty_213 to i25
  %empty_216 = trunc i25 %empty_214 to i1
  %empty_217 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_215, i32 24)
  %empty_218 = or i1 %empty_216, %empty_217
  %empty_219 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_215, i1 %empty_218, i32 24, i32 24)
  %empty_220 = zext i1 %3 to i26
  %empty_221 = zext i25 %empty_219 to i26
  %empty_222 = trunc i26 %empty_220 to i1
  %empty_223 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_221, i32 25)
  %empty_224 = or i1 %empty_222, %empty_223
  %empty_225 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_221, i1 %empty_224, i32 25, i32 25)
  %empty_226 = zext i3 %2 to i29
  %empty_227 = zext i26 %empty_225 to i29
  %empty_228 = trunc i29 %empty_226 to i3
  %empty_229 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_227, i32 26, i32 28)
  %empty_230 = or i3 %empty_228, %empty_229
  %empty_231 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_227, i3 %empty_230, i32 26, i32 28)
  %empty_232 = zext i2 %1 to i31
  %empty_233 = zext i29 %empty_231 to i31
  %empty_234 = trunc i31 %empty_232 to i2
  %empty_235 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_233, i32 29, i32 30)
  %empty_236 = or i2 %empty_234, %empty_235
  %empty_237 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_233, i2 %empty_236, i32 29, i32 30)
  %empty_238 = zext i1 %0 to i32
  %empty_239 = zext i31 %empty_237 to i32
  %empty_240 = trunc i32 %empty_238 to i1
  %empty_241 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_239, i32 31)
  %empty_242 = or i1 %empty_240, %empty_241
  %empty_243 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_239, i1 %empty_242, i32 31, i32 31)
  ret i32 %empty_243
}

define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_244 = trunc i64 %empty to i46
  ret i46 %empty_244
}

define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_245 = trunc i64 %empty to i53
  ret i53 %empty_245
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_246 = trunc i64 %empty to i3
  ret i3 %empty_246
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_247 = zext i30 %1 to i31
  %empty_248 = trunc i31 %empty to i1
  %empty_249 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_247, i32 30)
  %empty_250 = or i1 %empty_248, %empty_249
  %empty_251 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_247, i1 %empty_250, i32 30, i32 30)
  ret i31 %empty_251
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_252 = trunc i64 %empty to i2
  ret i2 %empty_252
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_253 = trunc i64 %empty to i6
  ret i6 %empty_253
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_254 = trunc i64 %empty to i30
  ret i30 %empty_254
}

define weak i64 @_ssdm_op_PartSelect.i64.i168.i32.i32(i168, i32, i32) nounwind readnone {
entry:
  %empty = call i168 @llvm.part.select.i168(i168 %0, i32 %1, i32 %2)
  %empty_255 = trunc i168 %empty to i64
  ret i64 %empty_255
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_256 = shl i64 1, %empty
  %empty_257 = and i64 %0, %empty_256
  %empty_258 = icmp ne i64 %empty_257, 0
  ret i1 %empty_258
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_259 = shl i12 1, %empty
  %empty_260 = and i12 %0, %empty_259
  %empty_261 = icmp ne i12 %empty_260, 0
  ret i1 %empty_261
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i168 @llvm.part.select.i168(i168, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i53.i32.i32(i53, i32, i32) nounwind readnone

define weak i53 @_ssdm_op_PartSet.i53.i53.i1.i32.i32(i53, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i53 @llvm.part.set.i53.i1(i53 %0, i1 %1, i32 %2, i32 %3)
  ret i53 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_262 = shl i53 1, %empty
  %empty_263 = and i53 %0, %empty_262
  %empty_264 = icmp ne i53 %empty_263, 0
  ret i1 %empty_264
}

define weak i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i1(i64 %0, i1 %1, i32 %2, i32 %3)
  ret i64 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_265 = trunc i19 %empty to i2
  ret i2 %empty_265
}

define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3)
  ret i19 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_266 = trunc i22 %empty to i3
  ret i3 %empty_266
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_267 = trunc i28 %empty to i6
  ret i6 %empty_267
}

define weak i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28, i6, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.set.i28.i6(i28 %0, i6 %1, i32 %2, i32 %3)
  ret i28 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i29.i32.i32(i29, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i1(i29 %0, i1 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i29.i32(i29, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i29
  %empty_268 = shl i29 1, %empty
  %empty_269 = and i29 %0, %empty_268
  %empty_270 = icmp ne i29 %empty_269, 0
  ret i1 %empty_270
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_271 = trunc i32 %empty to i3
  ret i3 %empty_271
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i3(i32 %0, i3 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i1(i8 %0, i1 %1, i32 %2, i32 %3)
  ret i8 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_272 = shl i8 1, %empty
  %empty_273 = and i8 %0, %empty_272
  %empty_274 = icmp ne i8 %empty_273, 0
  ret i1 %empty_274
}

declare i1 @_ssdm_op_PartSelect.i1.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i1(i9 %0, i1 %1, i32 %2, i32 %3)
  ret i9 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_275 = shl i9 1, %empty
  %empty_276 = and i9 %0, %empty_275
  %empty_277 = icmp ne i9 %empty_276, 0
  ret i1 %empty_277
}

define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_278 = trunc i11 %empty to i2
  ret i2 %empty_278
}

define weak i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i2(i11 %0, i2 %1, i32 %2, i32 %3)
  ret i11 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i12.i32.i32(i12, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.set.i12.i1(i12 %0, i1 %1, i32 %2, i32 %3)
  ret i12 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i1(i13 %0, i1 %1, i32 %2, i32 %3)
  ret i13 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_279 = shl i13 1, %empty
  %empty_280 = and i13 %0, %empty_279
  %empty_281 = icmp ne i13 %empty_280, 0
  ret i1 %empty_281
}

declare i1 @_ssdm_op_PartSelect.i1.i14.i32.i32(i14, i32, i32) nounwind readnone

define weak i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.set.i14.i1(i14 %0, i1 %1, i32 %2, i32 %3)
  ret i14 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i14.i32(i14, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i14
  %empty_282 = shl i14 1, %empty
  %empty_283 = and i14 %0, %empty_282
  %empty_284 = icmp ne i14 %empty_283, 0
  ret i1 %empty_284
}

declare i1 @_ssdm_op_PartSelect.i1.i15.i32.i32(i15, i32, i32) nounwind readnone

define weak i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.set.i15.i1(i15 %0, i1 %1, i32 %2, i32 %3)
  ret i15 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15
  %empty_285 = shl i15 1, %empty
  %empty_286 = and i15 %0, %empty_285
  %empty_287 = icmp ne i15 %empty_286, 0
  ret i1 %empty_287
}

define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_288 = trunc i18 %empty to i3
  ret i3 %empty_288
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3)
  ret i18 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_289 = trunc i20 %empty to i2
  ret i2 %empty_289
}

define weak i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.set.i20.i2(i20 %0, i2 %1, i32 %2, i32 %3)
  ret i20 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i21.i32.i32(i21, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.set.i21.i1(i21 %0, i1 %1, i32 %2, i32 %3)
  ret i21 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i21
  %empty_290 = shl i21 1, %empty
  %empty_291 = and i21 %0, %empty_290
  %empty_292 = icmp ne i21 %empty_291, 0
  ret i1 %empty_292
}

declare i1 @_ssdm_op_PartSelect.i1.i22.i32.i32(i22, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i1(i22 %0, i1 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_293 = shl i22 1, %empty
  %empty_294 = and i22 %0, %empty_293
  %empty_295 = icmp ne i22 %empty_294, 0
  ret i1 %empty_295
}

define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_296 = trunc i24 %empty to i2
  ret i2 %empty_296
}

define weak i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i2(i24 %0, i2 %1, i32 %2, i32 %3)
  ret i24 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i25.i32.i32(i25, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.set.i25.i1(i25 %0, i1 %1, i32 %2, i32 %3)
  ret i25 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_297 = shl i25 1, %empty
  %empty_298 = and i25 %0, %empty_297
  %empty_299 = icmp ne i25 %empty_298, 0
  ret i1 %empty_299
}

declare i1 @_ssdm_op_PartSelect.i1.i26.i32.i32(i26, i32, i32) nounwind readnone

define weak i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i26 @llvm.part.set.i26.i1(i26 %0, i1 %1, i32 %2, i32 %3)
  ret i26 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i26.i32(i26, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i26
  %empty_300 = shl i26 1, %empty
  %empty_301 = and i26 %0, %empty_300
  %empty_302 = icmp ne i26 %empty_301, 0
  ret i1 %empty_302
}

define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_303 = trunc i29 %empty to i3
  ret i3 %empty_303
}

define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_304 = trunc i31 %empty to i2
  ret i2 %empty_304
}

define weak i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i2(i31 %0, i2 %1, i32 %2, i32 %3)
  ret i31 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i1(i32 %0, i1 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_305 = and i32 %0, %empty
  %empty_306 = icmp ne i32 %empty_305, 0
  ret i1 %empty_306
}

declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i1(i31 %0, i1 %1, i32 %2, i32 %3)
  ret i31 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i31.i32(i31, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i31
  %empty_307 = shl i31 1, %empty
  %empty_308 = and i31 %0, %empty_307
  %empty_309 = icmp ne i31 %empty_308, 0
  ret i1 %empty_309
}

declare i53 @llvm.part.set.i53.i1(i53, i1, i32, i32) nounwind readnone

declare i64 @llvm.part.set.i64.i1(i64, i1, i32, i32) nounwind readnone

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i19 @llvm.part.set.i19.i2(i19, i2, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i22 @llvm.part.set.i22.i3(i22, i3, i32, i32) nounwind readnone

declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

declare i28 @llvm.part.set.i28.i6(i28, i6, i32, i32) nounwind readnone

declare i29 @llvm.part.set.i29.i1(i29, i1, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i3(i32, i3, i32, i32) nounwind readnone

declare i8 @llvm.part.set.i8.i1(i8, i1, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i1(i9, i1, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i11 @llvm.part.set.i11.i2(i11, i2, i32, i32) nounwind readnone

declare i12 @llvm.part.set.i12.i1(i12, i1, i32, i32) nounwind readnone

declare i13 @llvm.part.set.i13.i1(i13, i1, i32, i32) nounwind readnone

declare i14 @llvm.part.set.i14.i1(i14, i1, i32, i32) nounwind readnone

declare i15 @llvm.part.set.i15.i1(i15, i1, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i18 @llvm.part.set.i18.i3(i18, i3, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i20 @llvm.part.set.i20.i2(i20, i2, i32, i32) nounwind readnone

declare i21 @llvm.part.set.i21.i1(i21, i1, i32, i32) nounwind readnone

declare i22 @llvm.part.set.i22.i1(i22, i1, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i24 @llvm.part.set.i24.i2(i24, i2, i32, i32) nounwind readnone

declare i25 @llvm.part.set.i25.i1(i25, i1, i32, i32) nounwind readnone

declare i26 @llvm.part.set.i26.i1(i26, i1, i32, i32) nounwind readnone

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i29 @llvm.part.set.i29.i3(i29, i3, i32, i32) nounwind readnone

declare i31 @llvm.part.select.i31(i31, i32, i32) nounwind readnone

declare i31 @llvm.part.set.i31.i2(i31, i2, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i1(i32, i1, i32, i32) nounwind readnone

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
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"CallPutFlag", metadata !33, metadata !"char"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 63, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"S", metadata !33, metadata !"double"}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 63, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"X", metadata !33, metadata !"double"}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 63, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"T", metadata !33, metadata !"double"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 63, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"r", metadata !33, metadata !"double"}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"b", metadata !33, metadata !"double"}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 63, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"a", metadata !59, metadata !"double"}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 99999, i32 1}
