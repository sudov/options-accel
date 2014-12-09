; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.2.bc'
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
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1945]
@str = internal constant [13 x i8] c"BlackScholes\00"

define internal fastcc i64 @BlackScholes_rand_uint32() nounwind uwtable {
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

define internal fastcc double @BlackScholes_CND(double %X) nounwind uwtable readonly {
_ifconv:
  %X_read = call double @_ssdm_op_Read.ap_auto.double(double %X) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %p_Val2_s = bitcast double %X_read to i64
  %tmp = trunc i64 %p_Val2_s to i63
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp)
  %ret_i_i_i_i_i = bitcast i64 %p_Result_s to double
  %tmp_s = fmul double %ret_i_i_i_i_i, 2.316419e-01
  %tmp_11 = fadd double %tmp_s, 1.000000e+00
  %K = call double @_ssdm_op_DRecip.f64(double %tmp_11)
  %tmp_12 = fmul double %X_read, %X_read
  %tmp_13 = fmul double %tmp_12, -5.000000e-01
  %tmp_14 = call double @llvm.exp.f64(double %tmp_13)
  %tmp_15 = fmul double %tmp_14, 0x3FD9884533D43651
  %tmp_16 = fmul double %K, 0x3FD470BF3A92F8EC
  %tmp_17 = fmul double %K, 0xBFD6D1F0E5A8325B
  %tmp_18 = fmul double %tmp_17, %K
  %tmp_19 = fadd double %tmp_16, %tmp_18
  %pow7 = fmul double %K, %K
  %tmp_20 = fmul double %pow7, %K
  %tmp_21 = fmul double %tmp_20, 0x3FFC80EF025F5E68
  %tmp_22 = fadd double %tmp_19, %tmp_21
  %tmp_23 = fmul double %tmp_20, %K
  %tmp_24 = fmul double %tmp_23, 0xBFFD23DD4EF278D0
  %tmp_25 = fadd double %tmp_22, %tmp_24
  %tmp_26 = fmul double %tmp_23, %K
  %tmp_27 = fmul double %tmp_26, 0x3FF548CDD6F42943
  %tmp_28 = fadd double %tmp_25, %tmp_27
  %w = fmul double %tmp_15, %tmp_28
  %tmp_29 = fcmp olt double %X_read, 0.000000e+00
  %tmp_30 = fsub double 1.000000e+00, %w
  %tmp_31 = select i1 %tmp_29, double %w, double %tmp_30
  ret double %tmp_31
}

define double @BlackScholes(i8 signext %CallPutFlag, double %S, double %X, double %T, double %r, double %b) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %CallPutFlag) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(double %X) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(double %b) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @str) nounwind
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %X_read = call double @_ssdm_op_Read.ap_auto.double(double %X) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %CallPutFlag_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %CallPutFlag) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp = call fastcc i64 @BlackScholes_rand_uint32() nounwind
  %tmp_3 = call i27 @_ssdm_op_PartSelect.i27.i64.i32.i32(i64 %tmp, i32 5, i32 31)
  %k = sext i27 %tmp_3 to i64
  %tmp_5 = call i26 @_ssdm_op_PartSelect.i26.i64.i32.i32(i64 %tmp, i32 6, i32 31)
  %tmp_6 = sext i26 %tmp_5 to i63
  %tmp_s = uitofp i64 %k to double
  %tmp_32 = fmul double %tmp_s, 0x4190000000000000
  %tmp_66 = zext i63 %tmp_6 to i64
  %tmp_33 = uitofp i64 %tmp_66 to double
  %tmp_34 = fadd double %tmp_32, %tmp_33
  %U = fmul double %tmp_34, 0x3CA0000000000000
  %tmp_35 = fmul double %U, 2.000000e+00
  %v_4 = fadd double %tmp_35, -1.000000e+00
  %tmp_36 = fcmp olt double %v_4, 1.000000e+00
  br i1 %tmp_36, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %tmp_37 = fptrunc double %S_read to float
  %tmp_38 = call float @llvm.log.f32(float %tmp_37)
  %tmp_39 = fpext float %tmp_38 to double
  %tmp_40 = fmul double %tmp_39, 2.000000e+00
  %tmp_41 = fdiv double %tmp_40, %S_read
  %tmp_42 = fptrunc double %tmp_41 to float
  %tmp_43 = call float @llvm.sqrt.f32(float %tmp_42)
  %tmp_44 = fpext float %tmp_43 to double
  %tmp_45 = fmul double %v_4, %tmp_44
  %v = fdiv double %tmp_45, 1.000000e+11
  %tmp_24 = fcmp oge double %v, 1.000000e+00
  br i1 %tmp_24, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %v_2 = fadd double %v, -5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %2, %0
  %v_1 = phi double [ %v_2, %2 ], [ %v_4, %0 ], [ %v, %1 ]
  %tmp_46 = fsub double %b_read, %r_read
  %tmp_47 = fmul double %tmp_46, %T_read
  %tmp_48 = call double @llvm.exp.f64(double %tmp_47)
  %t1 = fmul double %tmp_48, %S_read
  %tmp_61_to_int = bitcast double %r_read to i64
  %tmp_61_neg = xor i64 %tmp_61_to_int, -9223372036854775808
  %tmp_49 = bitcast i64 %tmp_61_neg to double
  %tmp_50 = fmul double %tmp_49, %T_read
  %tmp_51 = call double @llvm.exp.f64(double %tmp_50)
  %t2 = fmul double %tmp_51, %X_read
  %tmp_52 = fdiv double %S_read, %X_read
  %tmp_53 = call double @llvm.log.f64(double %tmp_52)
  %tmp_54 = fmul double %v_1, %v_1
  %tmp_55 = fmul double %tmp_54, 5.000000e-01
  %tmp_56 = fadd double %tmp_55, %b_read
  %tmp_57 = fmul double %tmp_56, %T_read
  %v1 = fadd double %tmp_53, %tmp_57
  %tmp_58 = call double @llvm.sqrt.f64(double %T_read)
  %v2 = fmul double %v_1, %tmp_58
  %d1 = fdiv double %v1, %v2
  %d2 = fsub double %d1, %v2
  %x_assign = call fastcc double @BlackScholes_CND(double %d1) nounwind
  %p_Val2_s = bitcast double %x_assign to i64
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %p_Result_s = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i = zext i53 %p_Result_s to i136
  %tmp_i_i_i_cast = zext i11 %loc_V to i12
  %sh_assign = add i12 %tmp_i_i_i_cast, -1023
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_101 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_101 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_i_cast = sext i12 %sh_assign_1 to i32
  %tmp_85_i_i = zext i32 %sh_assign_1_i_cast to i136
  %tmp_85_i_i_cast = zext i32 %sh_assign_1_i_cast to i53
  %tmp_86_i_i = lshr i53 %p_Result_s, %tmp_85_i_i_cast
  %tmp_86_i_i_cast = zext i53 %tmp_86_i_i to i136
  %tmp_88_i_i = shl i136 %tmp_i_i, %tmp_85_i_i
  %p_Val2_3 = select i1 %isNeg, i136 %tmp_86_i_i_cast, i136 %tmp_88_i_i
  %result_V = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_3, i32 52, i32 83)
  %tmp_59 = sitofp i32 %result_V to double
  %vc1 = fmul double %t1, %tmp_59
  %x_assign_1 = call fastcc double @BlackScholes_CND(double %d2) nounwind
  %p_Val2_5 = bitcast double %x_assign_1 to i64
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_5, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_5 to i52
  %p_Result_4 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_3) nounwind
  %tmp_i_i5 = zext i53 %p_Result_4 to i136
  %tmp_i_i_i6_cast = zext i11 %loc_V_2 to i12
  %sh_assign_2 = add i12 %tmp_i_i_i6_cast, -1023
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_2, i32 11)
  %tmp_i_i9 = sub i11 1023, %loc_V_2
  %tmp_i_i9_cast = sext i11 %tmp_i_i9 to i12
  %sh_assign_3 = select i1 %isNeg_1, i12 %tmp_i_i9_cast, i12 %sh_assign_2
  %sh_assign_1_i10_cast = sext i12 %sh_assign_3 to i32
  %tmp_85_i_i1 = zext i32 %sh_assign_1_i10_cast to i136
  %tmp_85_i_i11_cast = zext i32 %sh_assign_1_i10_cast to i53
  %tmp_86_i_i1 = lshr i53 %p_Result_4, %tmp_85_i_i11_cast
  %tmp_86_i_i12_cast = zext i53 %tmp_86_i_i1 to i136
  %tmp_88_i_i1 = shl i136 %tmp_i_i5, %tmp_85_i_i1
  %p_Val2_8 = select i1 %isNeg_1, i136 %tmp_86_i_i12_cast, i136 %tmp_88_i_i1
  %result_V_1 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_8, i32 52, i32 83)
  %tmp_60 = sitofp i32 %result_V_1 to double
  %vc2 = fmul double %t2, %tmp_60
  %vc = fsub double %vc1, %vc2
  %tmp_77_to_int = bitcast double %d1 to i64
  %tmp_77_neg = xor i64 %tmp_77_to_int, -9223372036854775808
  %tmp_61 = bitcast i64 %tmp_77_neg to double
  %x_assign_2 = call fastcc double @BlackScholes_CND(double %tmp_61) nounwind
  %p_Val2_10 = bitcast double %x_assign_2 to i64
  %loc_V_4 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_10, i32 52, i32 62) nounwind
  %loc_V_5 = trunc i64 %p_Val2_10 to i52
  %p_Result_5 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_5) nounwind
  %tmp_i_i1 = zext i53 %p_Result_5 to i136
  %tmp_i_i_i22_cast = zext i11 %loc_V_4 to i12
  %sh_assign_4 = add i12 %tmp_i_i_i22_cast, -1023
  %isNeg_2 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_4, i32 11)
  %tmp_i_i1_102 = sub i11 1023, %loc_V_4
  %tmp_i_i25_cast = sext i11 %tmp_i_i1_102 to i12
  %sh_assign_5 = select i1 %isNeg_2, i12 %tmp_i_i25_cast, i12 %sh_assign_4
  %sh_assign_1_i26_cast = sext i12 %sh_assign_5 to i32
  %tmp_85_i_i2 = zext i32 %sh_assign_1_i26_cast to i136
  %tmp_85_i_i27_cast = zext i32 %sh_assign_1_i26_cast to i53
  %tmp_86_i_i2 = lshr i53 %p_Result_5, %tmp_85_i_i27_cast
  %tmp_86_i_i28_cast = zext i53 %tmp_86_i_i2 to i136
  %tmp_88_i_i2 = shl i136 %tmp_i_i1, %tmp_85_i_i2
  %p_Val2_13 = select i1 %isNeg_2, i136 %tmp_86_i_i28_cast, i136 %tmp_88_i_i2
  %result_V_2 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_13, i32 52, i32 83)
  %tmp_62 = sitofp i32 %result_V_2 to double
  %vp1 = fmul double %t1, %tmp_62
  %tmp_81_to_int = bitcast double %d2 to i64
  %tmp_81_neg = xor i64 %tmp_81_to_int, -9223372036854775808
  %tmp_63 = bitcast i64 %tmp_81_neg to double
  %x_assign_3 = call fastcc double @BlackScholes_CND(double %tmp_63) nounwind
  %p_Val2_15 = bitcast double %x_assign_3 to i64
  %loc_V_6 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_15, i32 52, i32 62) nounwind
  %loc_V_7 = trunc i64 %p_Val2_15 to i52
  %p_Result_6 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_7) nounwind
  %tmp_i_i2 = zext i53 %p_Result_6 to i136
  %tmp_i_i_i38_cast = zext i11 %loc_V_6 to i12
  %sh_assign_6 = add i12 %tmp_i_i_i38_cast, -1023
  %isNeg_3 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_6, i32 11)
  %tmp_i_i2_103 = sub i11 1023, %loc_V_6
  %tmp_i_i41_cast = sext i11 %tmp_i_i2_103 to i12
  %sh_assign_7 = select i1 %isNeg_3, i12 %tmp_i_i41_cast, i12 %sh_assign_6
  %sh_assign_1_i42_cast = sext i12 %sh_assign_7 to i32
  %tmp_85_i_i3 = zext i32 %sh_assign_1_i42_cast to i136
  %tmp_85_i_i43_cast = zext i32 %sh_assign_1_i42_cast to i53
  %tmp_86_i_i3 = lshr i53 %p_Result_6, %tmp_85_i_i43_cast
  %tmp_86_i_i44_cast = zext i53 %tmp_86_i_i3 to i136
  %tmp_88_i_i3 = shl i136 %tmp_i_i2, %tmp_85_i_i3
  %p_Val2_18 = select i1 %isNeg_3, i136 %tmp_86_i_i44_cast, i136 %tmp_88_i_i3
  %result_V_3 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_18, i32 52, i32 83)
  %tmp_64 = sitofp i32 %result_V_3 to double
  %vp2 = fmul double %t2, %tmp_64
  %vp = fsub double %vp2, %vp1
  %tmp_65 = icmp eq i8 %CallPutFlag_read, 99
  %vc_1 = select i1 %tmp_65, double %vc, double %vp
  ret double %vc_1
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

declare void @_GLOBAL__I_a1945() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

declare float @llvm.sqrt.f32(float) nounwind readonly

declare float @llvm.log.f32(float) nounwind readonly

declare double @llvm.log.f64(double) nounwind readonly

define weak double @_ssdm_op_DRecip.f64(double) nounwind readnone {
entry:
  %empty = fdiv double 1.000000e+00, %0
  ret double %empty
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_104 = trunc i64 %empty to i11
  ret i11 %empty_104
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_105 = zext i52 %1 to i53
  %empty_106 = trunc i53 %empty to i1
  %empty_107 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %empty_105, i32 52)
  %empty_108 = or i1 %empty_106, %empty_107
  %empty_109 = call i53 @_ssdm_op_PartSet.i53.i53.i1.i32.i32(i53 %empty_105, i1 %empty_108, i32 52, i32 52)
  ret i53 %empty_109
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_110 = zext i63 %1 to i64
  %empty_111 = trunc i64 %empty to i1
  %empty_112 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %empty_110, i32 63)
  %empty_113 = or i1 %empty_111, %empty_112
  %empty_114 = call i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64 %empty_110, i1 %empty_113, i32 63, i32 63)
  ret i64 %empty_114
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19
  %empty_115 = zext i17 %5 to i19
  %empty_116 = trunc i19 %empty to i2
  %empty_117 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_115, i32 17, i32 18)
  %empty_118 = or i2 %empty_116, %empty_117
  %empty_119 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_115, i2 %empty_118, i32 17, i32 18)
  %empty_120 = zext i3 %3 to i22
  %empty_121 = zext i19 %empty_119 to i22
  %empty_122 = trunc i22 %empty_120 to i3
  %empty_123 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_121, i32 19, i32 21)
  %empty_124 = or i3 %empty_122, %empty_123
  %empty_125 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_121, i3 %empty_124, i32 19, i32 21)
  %empty_126 = zext i6 %2 to i28
  %empty_127 = zext i22 %empty_125 to i28
  %empty_128 = trunc i28 %empty_126 to i6
  %empty_129 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_127, i32 22, i32 27)
  %empty_130 = or i6 %empty_128, %empty_129
  %empty_131 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_127, i6 %empty_130, i32 22, i32 27)
  %empty_132 = zext i1 %1 to i29
  %empty_133 = zext i28 %empty_131 to i29
  %empty_134 = trunc i29 %empty_132 to i1
  %empty_135 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_133, i32 28)
  %empty_136 = or i1 %empty_134, %empty_135
  %empty_137 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_133, i1 %empty_136, i32 28, i32 28)
  %empty_138 = zext i3 %0 to i32
  %empty_139 = zext i29 %empty_137 to i32
  %empty_140 = trunc i32 %empty_138 to i3
  %empty_141 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_139, i32 29, i32 31)
  %empty_142 = or i3 %empty_140, %empty_141
  %empty_143 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_139, i3 %empty_142, i32 29, i32 31)
  ret i32 %empty_143
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8
  %empty_144 = zext i7 %17 to i8
  %empty_145 = trunc i8 %empty to i1
  %empty_146 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_144, i32 7)
  %empty_147 = or i1 %empty_145, %empty_146
  %empty_148 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_144, i1 %empty_147, i32 7, i32 7)
  %empty_149 = zext i1 %15 to i9
  %empty_150 = zext i8 %empty_148 to i9
  %empty_151 = trunc i9 %empty_149 to i1
  %empty_152 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_150, i32 8)
  %empty_153 = or i1 %empty_151, %empty_152
  %empty_154 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_150, i1 %empty_153, i32 8, i32 8)
  %empty_155 = zext i2 %14 to i11
  %empty_156 = zext i9 %empty_154 to i11
  %empty_157 = trunc i11 %empty_155 to i2
  %empty_158 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_156, i32 9, i32 10)
  %empty_159 = or i2 %empty_157, %empty_158
  %empty_160 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_156, i2 %empty_159, i32 9, i32 10)
  %empty_161 = zext i1 %13 to i12
  %empty_162 = zext i11 %empty_160 to i12
  %empty_163 = trunc i12 %empty_161 to i1
  %empty_164 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_162, i32 11)
  %empty_165 = or i1 %empty_163, %empty_164
  %empty_166 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_162, i1 %empty_165, i32 11, i32 11)
  %empty_167 = zext i1 %12 to i13
  %empty_168 = zext i12 %empty_166 to i13
  %empty_169 = trunc i13 %empty_167 to i1
  %empty_170 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_168, i32 12)
  %empty_171 = or i1 %empty_169, %empty_170
  %empty_172 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_168, i1 %empty_171, i32 12, i32 12)
  %empty_173 = zext i1 %11 to i14
  %empty_174 = zext i13 %empty_172 to i14
  %empty_175 = trunc i14 %empty_173 to i1
  %empty_176 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_174, i32 13)
  %empty_177 = or i1 %empty_175, %empty_176
  %empty_178 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_174, i1 %empty_177, i32 13, i32 13)
  %empty_179 = zext i1 %10 to i15
  %empty_180 = zext i14 %empty_178 to i15
  %empty_181 = trunc i15 %empty_179 to i1
  %empty_182 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_180, i32 14)
  %empty_183 = or i1 %empty_181, %empty_182
  %empty_184 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_180, i1 %empty_183, i32 14, i32 14)
  %empty_185 = zext i3 %9 to i18
  %empty_186 = zext i15 %empty_184 to i18
  %empty_187 = trunc i18 %empty_185 to i3
  %empty_188 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_186, i32 15, i32 17)
  %empty_189 = or i3 %empty_187, %empty_188
  %empty_190 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_186, i3 %empty_189, i32 15, i32 17)
  %empty_191 = zext i2 %8 to i20
  %empty_192 = zext i18 %empty_190 to i20
  %empty_193 = trunc i20 %empty_191 to i2
  %empty_194 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_192, i32 18, i32 19)
  %empty_195 = or i2 %empty_193, %empty_194
  %empty_196 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_192, i2 %empty_195, i32 18, i32 19)
  %empty_197 = zext i1 %7 to i21
  %empty_198 = zext i20 %empty_196 to i21
  %empty_199 = trunc i21 %empty_197 to i1
  %empty_200 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_198, i32 20)
  %empty_201 = or i1 %empty_199, %empty_200
  %empty_202 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_198, i1 %empty_201, i32 20, i32 20)
  %empty_203 = zext i1 %6 to i22
  %empty_204 = zext i21 %empty_202 to i22
  %empty_205 = trunc i22 %empty_203 to i1
  %empty_206 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_204, i32 21)
  %empty_207 = or i1 %empty_205, %empty_206
  %empty_208 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_204, i1 %empty_207, i32 21, i32 21)
  %empty_209 = zext i2 %5 to i24
  %empty_210 = zext i22 %empty_208 to i24
  %empty_211 = trunc i24 %empty_209 to i2
  %empty_212 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_210, i32 22, i32 23)
  %empty_213 = or i2 %empty_211, %empty_212
  %empty_214 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_210, i2 %empty_213, i32 22, i32 23)
  %empty_215 = zext i1 %4 to i25
  %empty_216 = zext i24 %empty_214 to i25
  %empty_217 = trunc i25 %empty_215 to i1
  %empty_218 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_216, i32 24)
  %empty_219 = or i1 %empty_217, %empty_218
  %empty_220 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_216, i1 %empty_219, i32 24, i32 24)
  %empty_221 = zext i1 %3 to i26
  %empty_222 = zext i25 %empty_220 to i26
  %empty_223 = trunc i26 %empty_221 to i1
  %empty_224 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_222, i32 25)
  %empty_225 = or i1 %empty_223, %empty_224
  %empty_226 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_222, i1 %empty_225, i32 25, i32 25)
  %empty_227 = zext i3 %2 to i29
  %empty_228 = zext i26 %empty_226 to i29
  %empty_229 = trunc i29 %empty_227 to i3
  %empty_230 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_228, i32 26, i32 28)
  %empty_231 = or i3 %empty_229, %empty_230
  %empty_232 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_228, i3 %empty_231, i32 26, i32 28)
  %empty_233 = zext i2 %1 to i31
  %empty_234 = zext i29 %empty_232 to i31
  %empty_235 = trunc i31 %empty_233 to i2
  %empty_236 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_234, i32 29, i32 30)
  %empty_237 = or i2 %empty_235, %empty_236
  %empty_238 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_234, i2 %empty_237, i32 29, i32 30)
  %empty_239 = zext i1 %0 to i32
  %empty_240 = zext i31 %empty_238 to i32
  %empty_241 = trunc i32 %empty_239 to i1
  %empty_242 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_240, i32 31)
  %empty_243 = or i1 %empty_241, %empty_242
  %empty_244 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_240, i1 %empty_243, i32 31, i32 31)
  ret i32 %empty_244
}

define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_245 = trunc i64 %empty to i46
  ret i46 %empty_245
}

define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_246 = trunc i64 %empty to i53
  ret i53 %empty_246
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_247 = trunc i64 %empty to i3
  ret i3 %empty_247
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_248 = zext i30 %1 to i31
  %empty_249 = trunc i31 %empty to i1
  %empty_250 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_248, i32 30)
  %empty_251 = or i1 %empty_249, %empty_250
  %empty_252 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_248, i1 %empty_251, i32 30, i32 30)
  ret i31 %empty_252
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_253 = trunc i64 %empty to i2
  ret i2 %empty_253
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_254 = trunc i64 %empty to i6
  ret i6 %empty_254
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_255 = trunc i64 %empty to i30
  ret i30 %empty_255
}

define weak i26 @_ssdm_op_PartSelect.i26.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_256 = trunc i64 %empty to i26
  ret i26 %empty_256
}

define weak i27 @_ssdm_op_PartSelect.i27.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_257 = trunc i64 %empty to i27
  ret i27 %empty_257
}

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_258 = trunc i136 %empty to i32
  ret i32 %empty_258
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
  %empty_259 = shl i64 1, %empty
  %empty_260 = and i64 %0, %empty_259
  %empty_261 = icmp ne i64 %empty_260, 0
  ret i1 %empty_261
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_262 = shl i12 1, %empty
  %empty_263 = and i12 %0, %empty_262
  %empty_264 = icmp ne i12 %empty_263, 0
  ret i1 %empty_264
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

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
  %empty_265 = shl i53 1, %empty
  %empty_266 = and i53 %0, %empty_265
  %empty_267 = icmp ne i53 %empty_266, 0
  ret i1 %empty_267
}

define weak i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i1(i64 %0, i1 %1, i32 %2, i32 %3)
  ret i64 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_268 = trunc i19 %empty to i2
  ret i2 %empty_268
}

define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3)
  ret i19 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_269 = trunc i22 %empty to i3
  ret i3 %empty_269
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_270 = trunc i28 %empty to i6
  ret i6 %empty_270
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
  %empty_271 = shl i29 1, %empty
  %empty_272 = and i29 %0, %empty_271
  %empty_273 = icmp ne i29 %empty_272, 0
  ret i1 %empty_273
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_274 = trunc i32 %empty to i3
  ret i3 %empty_274
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
  %empty_275 = shl i8 1, %empty
  %empty_276 = and i8 %0, %empty_275
  %empty_277 = icmp ne i8 %empty_276, 0
  ret i1 %empty_277
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
  %empty_278 = shl i9 1, %empty
  %empty_279 = and i9 %0, %empty_278
  %empty_280 = icmp ne i9 %empty_279, 0
  ret i1 %empty_280
}

define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_281 = trunc i11 %empty to i2
  ret i2 %empty_281
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
  %empty_282 = shl i13 1, %empty
  %empty_283 = and i13 %0, %empty_282
  %empty_284 = icmp ne i13 %empty_283, 0
  ret i1 %empty_284
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
  %empty_285 = shl i14 1, %empty
  %empty_286 = and i14 %0, %empty_285
  %empty_287 = icmp ne i14 %empty_286, 0
  ret i1 %empty_287
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
  %empty_288 = shl i15 1, %empty
  %empty_289 = and i15 %0, %empty_288
  %empty_290 = icmp ne i15 %empty_289, 0
  ret i1 %empty_290
}

define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_291 = trunc i18 %empty to i3
  ret i3 %empty_291
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3)
  ret i18 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_292 = trunc i20 %empty to i2
  ret i2 %empty_292
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
  %empty_293 = shl i21 1, %empty
  %empty_294 = and i21 %0, %empty_293
  %empty_295 = icmp ne i21 %empty_294, 0
  ret i1 %empty_295
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
  %empty_296 = shl i22 1, %empty
  %empty_297 = and i22 %0, %empty_296
  %empty_298 = icmp ne i22 %empty_297, 0
  ret i1 %empty_298
}

define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_299 = trunc i24 %empty to i2
  ret i2 %empty_299
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
  %empty_300 = shl i25 1, %empty
  %empty_301 = and i25 %0, %empty_300
  %empty_302 = icmp ne i25 %empty_301, 0
  ret i1 %empty_302
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
  %empty_303 = shl i26 1, %empty
  %empty_304 = and i26 %0, %empty_303
  %empty_305 = icmp ne i26 %empty_304, 0
  ret i1 %empty_305
}

define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_306 = trunc i29 %empty to i3
  ret i3 %empty_306
}

define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_307 = trunc i31 %empty to i2
  ret i2 %empty_307
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
  %empty_308 = and i32 %0, %empty
  %empty_309 = icmp ne i32 %empty_308, 0
  ret i1 %empty_309
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
  %empty_310 = shl i31 1, %empty
  %empty_311 = and i31 %0, %empty_310
  %empty_312 = icmp ne i31 %empty_311, 0
  ret i1 %empty_312
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
!58 = metadata !{metadata !"return", metadata !59, metadata !""}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 1, i32 0}
