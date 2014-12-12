; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kk = global i16 0, align 2
@kk_p1 = global i16 1, align 2
@kk_pm = global i16 397, align 2
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1945]
@str = internal constant [4 x i8] c"dut\00"
@str559 = internal constant [8 x i8] c"ap_fifo\00"
@str560 = internal constant [1 x i8] zeroinitializer
@str561 = internal constant [8 x i8] c"ap_fifo\00"
@str562 = internal constant [1 x i8] zeroinitializer

define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo_V), !map !33
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_fifo_V, [8 x i8]* @str561, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str562, [1 x i8]* @str562, [8 x i8]* @str561)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo_V, [8 x i8]* @str559, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str560, [1 x i8]* @str560, [8 x i8]* @str559)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %CallPutFlag = trunc i32 %tmp to i8
  %tmp_25 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_26 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_25, i32 0)
  %tmp_5 = sext i32 %tmp_26 to i64
  %full = add nsw i64 %tmp_4, %tmp_5
  %S = bitcast i64 %full to double
  %tmp_27 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_28 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_27, i32 0)
  %tmp_8 = sext i32 %tmp_28 to i64
  %full_1 = add nsw i64 %tmp_s, %tmp_8
  %X = bitcast i64 %full_1 to double
  %tmp_29 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_30 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_1 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_29, i32 0)
  %tmp_2 = sext i32 %tmp_30 to i64
  %full_2 = add nsw i64 %tmp_1, %tmp_2
  %T = bitcast i64 %full_2 to double
  %tmp_31 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_32 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_3 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_31, i32 0)
  %tmp_6 = sext i32 %tmp_32 to i64
  %full_3 = add nsw i64 %tmp_3, %tmp_6
  %r = bitcast i64 %full_3 to double
  %tmp_33 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_34 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V)
  %tmp_7 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_33, i32 0)
  %tmp_9 = sext i32 %tmp_34 to i64
  %full_4 = add nsw i64 %tmp_7, %tmp_9
  %b = bitcast i64 %full_4 to double
  %result = call fastcc double @BlackScholes(i8 signext %CallPutFlag, double %S, double %X, double %T, double %r, double %b)
  %ret = bitcast double %result to i64
  %data1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret, i32 32, i32 63)
  %data2 = trunc i64 %ret to i16
  %tmp_23 = zext i16 %data2 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %data1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %tmp_23)
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define internal fastcc i64 @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str13) nounwind
  %kk_load = load i16* @kk, align 2
  %tmp = zext i16 %kk_load to i64
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp
  %mt_kk_load = load i64* %mt_kk_addr, align 8
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31)
  %kk_p1_load = load i16* @kk_p1, align 2
  %tmp_s = zext i16 %kk_p1_load to i64
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_s
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8
  %tmp_36 = trunc i64 %mt_kkp1_load to i1
  %mag01_cast_cast = select i1 %tmp_36, i64 2567483615, i64 0
  %kk_pm_load = load i16* @kk_pm, align 2
  %tmp_10 = zext i16 %kk_pm_load to i64
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_10
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8
  %tmp_11 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30)
  %tmp_12 = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_35, i30 %tmp_11)
  %tmp_32_cast = zext i31 %tmp_12 to i64
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load
  %mt_kk_new = xor i64 %tmp1, %tmp_32_cast
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8
  %tmp_13 = call i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64 %mt_kk_new, i32 11, i32 63)
  %tmp_14 = zext i53 %tmp_13 to i64
  %y_1 = xor i64 %tmp_14, %mt_kk_new
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 24)
  %tmp_15 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_1, i32 19, i32 21)
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 17)
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 14)
  %tmp_16 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 11, i32 12)
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 7)
  %tmp_46 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 5)
  %tmp_17 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 2, i32 3)
  %tmp_47 = trunc i64 %y_1 to i1
  %tmp_18 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1 %tmp_37, i2 0, i3 %tmp_15, i1 false, i1 %tmp_39, i2 0, i1 %tmp_44, i1 false, i2 %tmp_16, i3 0, i1 %tmp_45, i1 false, i1 %tmp_46, i1 false, i2 %tmp_17, i1 false, i1 %tmp_47, i7 0)
  %tmp_36_cast = zext i32 %tmp_18 to i64
  %y_2 = xor i64 %tmp_36_cast, %y_1
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_2, i32 14, i32 16)
  %tmp_20 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %y_2, i32 7, i32 12)
  %tmp_21 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_2, i32 2, i32 3)
  %tmp_22 = call i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3 %tmp_19, i1 false, i6 %tmp_20, i3 0, i2 %tmp_21, i17 0)
  %tmp_38_cast = zext i32 %tmp_22 to i64
  %y_3 = xor i64 %tmp_38_cast, %y_2
  %tmp_23 = call i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64 %y_3, i32 18, i32 63)
  %tmp_24 = zext i46 %tmp_23 to i64
  %y_4 = xor i64 %tmp_24, %y_3
  %a_assign = add i16 %kk_load, 1
  %tmp_i = icmp ugt i16 %a_assign, 623
  %tmp_i_100 = add i16 %kk_load, -623
  %a_assign_1 = select i1 %tmp_i, i16 %tmp_i_100, i16 %a_assign
  store i16 %a_assign_1, i16* @kk, align 2
  %a_assign_2 = add i16 %kk_p1_load, 1
  %tmp_i1 = icmp ugt i16 %a_assign_2, 623
  %tmp_i2 = add i16 %kk_p1_load, -623
  %a_assign_3 = select i1 %tmp_i1, i16 %tmp_i2, i16 %a_assign_2
  store i16 %a_assign_3, i16* @kk_p1, align 2
  %a_assign_4 = add i16 %kk_pm_load, 1
  %tmp_i4 = icmp ugt i16 %a_assign_4, 623
  %tmp_i5 = add i16 %kk_pm_load, -623
  %a_assign_5 = select i1 %tmp_i4, i16 %tmp_i5, i16 %a_assign_4
  store i16 %a_assign_5, i16* @kk_pm, align 2
  ret i64 %y_4
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define internal fastcc double @BlackScholes(i8 signext %CallPutFlag, double %S, double %X, double %T, double %r, double %b) nounwind uwtable {
  %b_read = call double @_ssdm_op_Read.ap_auto.double(double %b) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %X_read = call double @_ssdm_op_Read.ap_auto.double(double %X) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %CallPutFlag_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %CallPutFlag) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 8, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %tmp = call fastcc i64 @rand_uint32()
  %k = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp, i32 5, i32 63)
  %l = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp, i32 6, i32 63)
  %tmp_9 = zext i59 %k to i64
  %tmp_s = uitofp i64 %tmp_9 to double
  %tmp_25 = fmul double %tmp_s, 0x4190000000000000
  %tmp_26 = zext i58 %l to i64
  %tmp_27 = uitofp i64 %tmp_26 to double
  %tmp_28 = fadd double %tmp_25, %tmp_27
  %U = fmul double %tmp_28, 0x3CA0000000000000
  %tmp_29 = fmul double %U, 2.000000e+00
  %v_4 = fadd double %tmp_29, -1.000000e+00
  %tmp_30 = fcmp olt double %v_4, 1.000000e+00
  br i1 %tmp_30, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %tmp_31 = call double @llvm.log.f64(double %S_read)
  %tmp_32 = fmul double %tmp_31, 2.000000e+00
  %tmp_33 = fdiv double %tmp_32, %S_read
  %tmp_34 = call double @llvm.sqrt.f64(double %tmp_33)
  %tmp_35 = fmul double %v_4, %tmp_34
  %v = fdiv double %tmp_35, 1.000000e+11
  %tmp_59 = fcmp oge double %v, 1.000000e+00
  br i1 %tmp_59, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %v_2 = fadd double %v, -5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %2, %0
  %v_1 = phi double [ %v_2, %2 ], [ %v_4, %0 ], [ %v, %1 ]
  %tmp_36 = fsub double %b_read, %r_read
  %tmp_37 = fmul double %tmp_36, %T_read
  %tmp_38 = call double @llvm.exp.f64(double %tmp_37)
  %t1 = fmul double %tmp_38, %S_read
  %tmp_77_to_int = bitcast double %r_read to i64
  %tmp_77_neg = xor i64 %tmp_77_to_int, -9223372036854775808
  %tmp_39 = bitcast i64 %tmp_77_neg to double
  %tmp_40 = fmul double %tmp_39, %T_read
  %tmp_41 = call double @llvm.exp.f64(double %tmp_40)
  %t2 = fmul double %tmp_41, %X_read
  %tmp_42 = fdiv double %S_read, %X_read
  %tmp_43 = call double @llvm.log.f64(double %tmp_42)
  %tmp_44 = fmul double %v_1, %v_1
  %tmp_45 = fmul double %tmp_44, 5.000000e-01
  %tmp_46 = fadd double %tmp_45, %b_read
  %tmp_47 = fmul double %tmp_46, %T_read
  %v1 = fadd double %tmp_43, %tmp_47
  %tmp_48 = call double @llvm.sqrt.f64(double %T_read)
  %v2 = fmul double %v_1, %tmp_48
  %d1 = fdiv double %v1, %v2
  %d2 = fsub double %d1, %v2
  %p_Val2_s = bitcast double %d1 to i64
  %tmp_60 = trunc i64 %p_Val2_s to i63
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_60) nounwind
  %ret_i_i_i_i_i_i = bitcast i64 %p_Result_s to double
  %tmp_i = fmul double %ret_i_i_i_i_i_i, 2.316419e-01
  %tmp_43_i = fadd double %tmp_i, 1.000000e+00
  %K = call double @_ssdm_op_DRecip.f64(double %tmp_43_i) nounwind
  %tmp_44_i = fmul double %d1, %d1
  %tmp_45_i = fmul double %tmp_44_i, -5.000000e-01
  %tmp_46_i = call double @llvm.exp.f64(double %tmp_45_i) nounwind
  %tmp_47_i = fmul double %tmp_46_i, 0x3FD9884533D43651
  %tmp_48_i = fmul double %K, 0x3FF548CDD6F42943
  %tmp_49_i = fadd double %tmp_48_i, 0xBFFD23DD4EF278D0
  %tmp_50_i = fmul double %K, %tmp_49_i
  %tmp_51_i = fadd double %tmp_50_i, 0x3FFC80EF025F5E68
  %tmp_52_i = fmul double %K, %tmp_51_i
  %tmp_53_i = fadd double %tmp_52_i, 0xBFD6D1F0E5A8325B
  %tmp_54_i = fmul double %K, %tmp_53_i
  %tmp_55_i = fadd double %tmp_54_i, 0x3FD470BF3A92F8EC
  %tmp_56_i = fmul double %K, %tmp_55_i
  %w = fmul double %tmp_47_i, %tmp_56_i
  %tmp_57_i = fcmp olt double %d1, 0.000000e+00
  %tmp_58_i = fsub double 1.000000e+00, %w
  %tmp_59_i = select i1 %tmp_57_i, double %w, double %tmp_58_i
  %vc1 = fmul double %t1, %tmp_59_i
  %p_Val2_1 = bitcast double %d2 to i64
  %tmp_61 = trunc i64 %p_Val2_1 to i63
  %p_Result_1 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_61) nounwind
  %ret_i_i_i_i_i_i3 = bitcast i64 %p_Result_1 to double
  %tmp_i4 = fmul double %ret_i_i_i_i_i_i3, 2.316419e-01
  %tmp_43_i5 = fadd double %tmp_i4, 1.000000e+00
  %K_1 = call double @_ssdm_op_DRecip.f64(double %tmp_43_i5) nounwind
  %tmp_44_i7 = fmul double %d2, %d2
  %tmp_45_i8 = fmul double %tmp_44_i7, -5.000000e-01
  %tmp_46_i9 = call double @llvm.exp.f64(double %tmp_45_i8) nounwind
  %tmp_47_i1 = fmul double %tmp_46_i9, 0x3FD9884533D43651
  %tmp_48_i1 = fmul double %K_1, 0x3FF548CDD6F42943
  %tmp_49_i1 = fadd double %tmp_48_i1, 0xBFFD23DD4EF278D0
  %tmp_50_i1 = fmul double %K_1, %tmp_49_i1
  %tmp_51_i1 = fadd double %tmp_50_i1, 0x3FFC80EF025F5E68
  %tmp_52_i1 = fmul double %K_1, %tmp_51_i1
  %tmp_53_i1 = fadd double %tmp_52_i1, 0xBFD6D1F0E5A8325B
  %tmp_54_i1 = fmul double %K_1, %tmp_53_i1
  %tmp_55_i1 = fadd double %tmp_54_i1, 0x3FD470BF3A92F8EC
  %tmp_56_i1 = fmul double %K_1, %tmp_55_i1
  %w_1 = fmul double %tmp_47_i1, %tmp_56_i1
  %tmp_57_i1 = fcmp olt double %d2, 0.000000e+00
  %tmp_58_i1 = fsub double 1.000000e+00, %w_1
  %tmp_59_i1 = select i1 %tmp_57_i1, double %w_1, double %tmp_58_i1
  %vc2 = fmul double %t2, %tmp_59_i1
  %vc = fsub double %vc1, %vc2
  %p_Val2_2 = xor i64 %p_Val2_s, -9223372036854775808
  %X_assign = bitcast i64 %p_Val2_2 to double
  %tmp_64 = trunc i64 %p_Val2_2 to i63
  %p_Result_2 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_64) nounwind
  %ret_i_i_i_i_i_i1 = bitcast i64 %p_Result_2 to double
  %tmp_i1 = fmul double %ret_i_i_i_i_i_i1, 2.316419e-01
  %tmp_43_i1 = fadd double %tmp_i1, 1.000000e+00
  %K_2 = call double @_ssdm_op_DRecip.f64(double %tmp_43_i1) nounwind
  %tmp_44_i1 = fmul double %X_assign, %X_assign
  %tmp_45_i1 = fmul double %tmp_44_i1, -5.000000e-01
  %tmp_46_i1 = call double @llvm.exp.f64(double %tmp_45_i1) nounwind
  %tmp_47_i2 = fmul double %tmp_46_i1, 0x3FD9884533D43651
  %tmp_48_i2 = fmul double %K_2, 0x3FF548CDD6F42943
  %tmp_49_i2 = fadd double %tmp_48_i2, 0xBFFD23DD4EF278D0
  %tmp_50_i2 = fmul double %K_2, %tmp_49_i2
  %tmp_51_i2 = fadd double %tmp_50_i2, 0x3FFC80EF025F5E68
  %tmp_52_i2 = fmul double %K_2, %tmp_51_i2
  %tmp_53_i2 = fadd double %tmp_52_i2, 0xBFD6D1F0E5A8325B
  %tmp_54_i2 = fmul double %K_2, %tmp_53_i2
  %tmp_55_i2 = fadd double %tmp_54_i2, 0x3FD470BF3A92F8EC
  %tmp_56_i2 = fmul double %K_2, %tmp_55_i2
  %w_2 = fmul double %tmp_47_i2, %tmp_56_i2
  %tmp_57_i2 = fcmp olt double %X_assign, 0.000000e+00
  %tmp_58_i2 = fsub double 1.000000e+00, %w_2
  %tmp_59_i2 = select i1 %tmp_57_i2, double %w_2, double %tmp_58_i2
  %vp1 = fmul double %t1, %tmp_59_i2
  %p_Val2_3 = xor i64 %p_Val2_1, -9223372036854775808
  %X_assign_1 = bitcast i64 %p_Val2_3 to double
  %tmp_65 = trunc i64 %p_Val2_3 to i63
  %p_Result_3 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_65) nounwind
  %ret_i_i_i_i_i_i2 = bitcast i64 %p_Result_3 to double
  %tmp_i2 = fmul double %ret_i_i_i_i_i_i2, 2.316419e-01
  %tmp_43_i2 = fadd double %tmp_i2, 1.000000e+00
  %K_3 = call double @_ssdm_op_DRecip.f64(double %tmp_43_i2) nounwind
  %tmp_44_i2 = fmul double %X_assign_1, %X_assign_1
  %tmp_45_i2 = fmul double %tmp_44_i2, -5.000000e-01
  %tmp_46_i2 = call double @llvm.exp.f64(double %tmp_45_i2) nounwind
  %tmp_47_i3 = fmul double %tmp_46_i2, 0x3FD9884533D43651
  %tmp_48_i3 = fmul double %K_3, 0x3FF548CDD6F42943
  %tmp_49_i3 = fadd double %tmp_48_i3, 0xBFFD23DD4EF278D0
  %tmp_50_i3 = fmul double %K_3, %tmp_49_i3
  %tmp_51_i3 = fadd double %tmp_50_i3, 0x3FFC80EF025F5E68
  %tmp_52_i3 = fmul double %K_3, %tmp_51_i3
  %tmp_53_i3 = fadd double %tmp_52_i3, 0xBFD6D1F0E5A8325B
  %tmp_54_i3 = fmul double %K_3, %tmp_53_i3
  %tmp_55_i3 = fadd double %tmp_54_i3, 0x3FD470BF3A92F8EC
  %tmp_56_i3 = fmul double %K_3, %tmp_55_i3
  %w_3 = fmul double %tmp_47_i3, %tmp_56_i3
  %tmp_57_i3 = fcmp olt double %X_assign_1, 0.000000e+00
  %tmp_58_i3 = fsub double 1.000000e+00, %w_3
  %tmp_59_i3 = select i1 %tmp_57_i3, double %w_3, double %tmp_58_i3
  %vp2 = fmul double %t2, %tmp_59_i3
  %vp = fsub double %vp2, %vp1
  %tmp_49 = icmp eq i8 %CallPutFlag_read, 99
  %tmp_50 = select i1 %tmp_49, double %vc, double %vp
  ret double %tmp_50
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare void @_GLOBAL__I_a1945() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

declare double @llvm.log.f64(double) nounwind readonly

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak double @_ssdm_op_DRecip.f64(double) nounwind readnone {
entry:
  %empty = fdiv double 1.000000e+00, %0
  ret double %empty
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_101 = zext i63 %1 to i64
  %empty_102 = trunc i64 %empty to i1
  %empty_103 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %empty_101, i32 63)
  %empty_104 = or i1 %empty_102, %empty_103
  %empty_105 = call i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64 %empty_101, i1 %empty_104, i32 63, i32 63)
  ret i64 %empty_105
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_106 = trunc i64 %empty to i32
  ret i32 %empty_106
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_107 = zext i32 %1 to i64
  %empty_108 = trunc i64 %empty to i32
  %empty_109 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %empty_107, i32 32, i32 63)
  %empty_110 = or i32 %empty_108, %empty_109
  %empty_111 = call i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64 %empty_107, i32 %empty_110, i32 32, i32 63)
  ret i64 %empty_111
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19
  %empty_112 = zext i17 %5 to i19
  %empty_113 = trunc i19 %empty to i2
  %empty_114 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_112, i32 17, i32 18)
  %empty_115 = or i2 %empty_113, %empty_114
  %empty_116 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_112, i2 %empty_115, i32 17, i32 18)
  %empty_117 = zext i3 %3 to i22
  %empty_118 = zext i19 %empty_116 to i22
  %empty_119 = trunc i22 %empty_117 to i3
  %empty_120 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_118, i32 19, i32 21)
  %empty_121 = or i3 %empty_119, %empty_120
  %empty_122 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_118, i3 %empty_121, i32 19, i32 21)
  %empty_123 = zext i6 %2 to i28
  %empty_124 = zext i22 %empty_122 to i28
  %empty_125 = trunc i28 %empty_123 to i6
  %empty_126 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_124, i32 22, i32 27)
  %empty_127 = or i6 %empty_125, %empty_126
  %empty_128 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_124, i6 %empty_127, i32 22, i32 27)
  %empty_129 = zext i1 %1 to i29
  %empty_130 = zext i28 %empty_128 to i29
  %empty_131 = trunc i29 %empty_129 to i1
  %empty_132 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_130, i32 28)
  %empty_133 = or i1 %empty_131, %empty_132
  %empty_134 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_130, i1 %empty_133, i32 28, i32 28)
  %empty_135 = zext i3 %0 to i32
  %empty_136 = zext i29 %empty_134 to i32
  %empty_137 = trunc i32 %empty_135 to i3
  %empty_138 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_136, i32 29, i32 31)
  %empty_139 = or i3 %empty_137, %empty_138
  %empty_140 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_136, i3 %empty_139, i32 29, i32 31)
  ret i32 %empty_140
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8
  %empty_141 = zext i7 %17 to i8
  %empty_142 = trunc i8 %empty to i1
  %empty_143 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_141, i32 7)
  %empty_144 = or i1 %empty_142, %empty_143
  %empty_145 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_141, i1 %empty_144, i32 7, i32 7)
  %empty_146 = zext i1 %15 to i9
  %empty_147 = zext i8 %empty_145 to i9
  %empty_148 = trunc i9 %empty_146 to i1
  %empty_149 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_147, i32 8)
  %empty_150 = or i1 %empty_148, %empty_149
  %empty_151 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_147, i1 %empty_150, i32 8, i32 8)
  %empty_152 = zext i2 %14 to i11
  %empty_153 = zext i9 %empty_151 to i11
  %empty_154 = trunc i11 %empty_152 to i2
  %empty_155 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_153, i32 9, i32 10)
  %empty_156 = or i2 %empty_154, %empty_155
  %empty_157 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_153, i2 %empty_156, i32 9, i32 10)
  %empty_158 = zext i1 %13 to i12
  %empty_159 = zext i11 %empty_157 to i12
  %empty_160 = trunc i12 %empty_158 to i1
  %empty_161 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_159, i32 11)
  %empty_162 = or i1 %empty_160, %empty_161
  %empty_163 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_159, i1 %empty_162, i32 11, i32 11)
  %empty_164 = zext i1 %12 to i13
  %empty_165 = zext i12 %empty_163 to i13
  %empty_166 = trunc i13 %empty_164 to i1
  %empty_167 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_165, i32 12)
  %empty_168 = or i1 %empty_166, %empty_167
  %empty_169 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_165, i1 %empty_168, i32 12, i32 12)
  %empty_170 = zext i1 %11 to i14
  %empty_171 = zext i13 %empty_169 to i14
  %empty_172 = trunc i14 %empty_170 to i1
  %empty_173 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_171, i32 13)
  %empty_174 = or i1 %empty_172, %empty_173
  %empty_175 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_171, i1 %empty_174, i32 13, i32 13)
  %empty_176 = zext i1 %10 to i15
  %empty_177 = zext i14 %empty_175 to i15
  %empty_178 = trunc i15 %empty_176 to i1
  %empty_179 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_177, i32 14)
  %empty_180 = or i1 %empty_178, %empty_179
  %empty_181 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_177, i1 %empty_180, i32 14, i32 14)
  %empty_182 = zext i3 %9 to i18
  %empty_183 = zext i15 %empty_181 to i18
  %empty_184 = trunc i18 %empty_182 to i3
  %empty_185 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_183, i32 15, i32 17)
  %empty_186 = or i3 %empty_184, %empty_185
  %empty_187 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_183, i3 %empty_186, i32 15, i32 17)
  %empty_188 = zext i2 %8 to i20
  %empty_189 = zext i18 %empty_187 to i20
  %empty_190 = trunc i20 %empty_188 to i2
  %empty_191 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_189, i32 18, i32 19)
  %empty_192 = or i2 %empty_190, %empty_191
  %empty_193 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_189, i2 %empty_192, i32 18, i32 19)
  %empty_194 = zext i1 %7 to i21
  %empty_195 = zext i20 %empty_193 to i21
  %empty_196 = trunc i21 %empty_194 to i1
  %empty_197 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_195, i32 20)
  %empty_198 = or i1 %empty_196, %empty_197
  %empty_199 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_195, i1 %empty_198, i32 20, i32 20)
  %empty_200 = zext i1 %6 to i22
  %empty_201 = zext i21 %empty_199 to i22
  %empty_202 = trunc i22 %empty_200 to i1
  %empty_203 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_201, i32 21)
  %empty_204 = or i1 %empty_202, %empty_203
  %empty_205 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_201, i1 %empty_204, i32 21, i32 21)
  %empty_206 = zext i2 %5 to i24
  %empty_207 = zext i22 %empty_205 to i24
  %empty_208 = trunc i24 %empty_206 to i2
  %empty_209 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_207, i32 22, i32 23)
  %empty_210 = or i2 %empty_208, %empty_209
  %empty_211 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_207, i2 %empty_210, i32 22, i32 23)
  %empty_212 = zext i1 %4 to i25
  %empty_213 = zext i24 %empty_211 to i25
  %empty_214 = trunc i25 %empty_212 to i1
  %empty_215 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_213, i32 24)
  %empty_216 = or i1 %empty_214, %empty_215
  %empty_217 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_213, i1 %empty_216, i32 24, i32 24)
  %empty_218 = zext i1 %3 to i26
  %empty_219 = zext i25 %empty_217 to i26
  %empty_220 = trunc i26 %empty_218 to i1
  %empty_221 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_219, i32 25)
  %empty_222 = or i1 %empty_220, %empty_221
  %empty_223 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_219, i1 %empty_222, i32 25, i32 25)
  %empty_224 = zext i3 %2 to i29
  %empty_225 = zext i26 %empty_223 to i29
  %empty_226 = trunc i29 %empty_224 to i3
  %empty_227 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_225, i32 26, i32 28)
  %empty_228 = or i3 %empty_226, %empty_227
  %empty_229 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_225, i3 %empty_228, i32 26, i32 28)
  %empty_230 = zext i2 %1 to i31
  %empty_231 = zext i29 %empty_229 to i31
  %empty_232 = trunc i31 %empty_230 to i2
  %empty_233 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_231, i32 29, i32 30)
  %empty_234 = or i2 %empty_232, %empty_233
  %empty_235 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_231, i2 %empty_234, i32 29, i32 30)
  %empty_236 = zext i1 %0 to i32
  %empty_237 = zext i31 %empty_235 to i32
  %empty_238 = trunc i32 %empty_236 to i1
  %empty_239 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_237, i32 31)
  %empty_240 = or i1 %empty_238, %empty_239
  %empty_241 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_237, i1 %empty_240, i32 31, i32 31)
  ret i32 %empty_241
}

define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_242 = trunc i64 %empty to i46
  ret i46 %empty_242
}

define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_243 = trunc i64 %empty to i53
  ret i53 %empty_243
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_244 = trunc i64 %empty to i3
  ret i3 %empty_244
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_245 = zext i30 %1 to i31
  %empty_246 = trunc i31 %empty to i1
  %empty_247 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_245, i32 30)
  %empty_248 = or i1 %empty_246, %empty_247
  %empty_249 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_245, i1 %empty_248, i32 30, i32 30)
  ret i31 %empty_249
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_250 = trunc i64 %empty to i2
  ret i2 %empty_250
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_251 = trunc i64 %empty to i6
  ret i6 %empty_251
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_252 = trunc i64 %empty to i30
  ret i30 %empty_252
}

define weak i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_253 = trunc i64 %empty to i58
  ret i58 %empty_253
}

define weak i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_254 = trunc i64 %empty to i59
  ret i59 %empty_254
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
  %empty_255 = shl i64 1, %empty
  %empty_256 = and i64 %0, %empty_255
  %empty_257 = icmp ne i64 %empty_256, 0
  ret i1 %empty_257
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_PartSet.i64.i64.i1.i32.i32(i64, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i1(i64 %0, i1 %1, i32 %2, i32 %3)
  ret i64 %empty
}

define weak i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i32(i64 %0, i32 %1, i32 %2, i32 %3)
  ret i64 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_258 = trunc i19 %empty to i2
  ret i2 %empty_258
}

define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3)
  ret i19 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_259 = trunc i22 %empty to i3
  ret i3 %empty_259
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_260 = trunc i28 %empty to i6
  ret i6 %empty_260
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
  %empty_261 = shl i29 1, %empty
  %empty_262 = and i29 %0, %empty_261
  %empty_263 = icmp ne i29 %empty_262, 0
  ret i1 %empty_263
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_264 = trunc i32 %empty to i3
  ret i3 %empty_264
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
  %empty_265 = shl i8 1, %empty
  %empty_266 = and i8 %0, %empty_265
  %empty_267 = icmp ne i8 %empty_266, 0
  ret i1 %empty_267
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
  %empty_268 = shl i9 1, %empty
  %empty_269 = and i9 %0, %empty_268
  %empty_270 = icmp ne i9 %empty_269, 0
  ret i1 %empty_270
}

define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_271 = trunc i11 %empty to i2
  ret i2 %empty_271
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

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_272 = shl i12 1, %empty
  %empty_273 = and i12 %0, %empty_272
  %empty_274 = icmp ne i12 %empty_273, 0
  ret i1 %empty_274
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
  %empty_275 = shl i13 1, %empty
  %empty_276 = and i13 %0, %empty_275
  %empty_277 = icmp ne i13 %empty_276, 0
  ret i1 %empty_277
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
  %empty_278 = shl i14 1, %empty
  %empty_279 = and i14 %0, %empty_278
  %empty_280 = icmp ne i14 %empty_279, 0
  ret i1 %empty_280
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
  %empty_281 = shl i15 1, %empty
  %empty_282 = and i15 %0, %empty_281
  %empty_283 = icmp ne i15 %empty_282, 0
  ret i1 %empty_283
}

define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_284 = trunc i18 %empty to i3
  ret i3 %empty_284
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3)
  ret i18 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_285 = trunc i20 %empty to i2
  ret i2 %empty_285
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
  %empty_286 = shl i21 1, %empty
  %empty_287 = and i21 %0, %empty_286
  %empty_288 = icmp ne i21 %empty_287, 0
  ret i1 %empty_288
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
  %empty_289 = shl i22 1, %empty
  %empty_290 = and i22 %0, %empty_289
  %empty_291 = icmp ne i22 %empty_290, 0
  ret i1 %empty_291
}

define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_292 = trunc i24 %empty to i2
  ret i2 %empty_292
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
  %empty_293 = shl i25 1, %empty
  %empty_294 = and i25 %0, %empty_293
  %empty_295 = icmp ne i25 %empty_294, 0
  ret i1 %empty_295
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
  %empty_296 = shl i26 1, %empty
  %empty_297 = and i26 %0, %empty_296
  %empty_298 = icmp ne i26 %empty_297, 0
  ret i1 %empty_298
}

define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_299 = trunc i29 %empty to i3
  ret i3 %empty_299
}

define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_300 = trunc i31 %empty to i2
  ret i2 %empty_300
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
  %empty_301 = and i32 %0, %empty
  %empty_302 = icmp ne i32 %empty_301, 0
  ret i1 %empty_302
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
  %empty_303 = shl i31 1, %empty
  %empty_304 = and i31 %0, %empty_303
  %empty_305 = icmp ne i31 %empty_304, 0
  ret i1 %empty_305
}

declare i64 @llvm.part.set.i64.i1(i64, i1, i32, i32) nounwind readnone

declare i64 @llvm.part.set.i64.i32(i64, i32, i32, i32) nounwind readnone

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
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"in_fifo.V", metadata !5, metadata !"int"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"out_fifo.V", metadata !5, metadata !"int"}
