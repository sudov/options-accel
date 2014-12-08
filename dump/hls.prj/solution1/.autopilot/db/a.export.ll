; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2
@kk_p1 = global i16 1, align 2
@kk_pm = global i16 397, align 2
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str24 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = internal constant [14 x i8] c"black_scholes\00"

define internal fastcc i64 @black_scholes_rand_uint32() nounwind uwtable {
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

define internal fastcc double @black_scholes_gaussrand2(double %gaussrand_state_V2_read, double %gaussrand_state_S_read, i32 %gaussrand_state_phase_read) {
  %gaussrand_state_phase_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %gaussrand_state_phase_read)
  %gaussrand_state_S_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_S_read)
  %gaussrand_state_V2_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_V2_read)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str13) nounwind
  %tmp = icmp eq i32 %gaussrand_state_phase_read_1, 0
  br i1 %tmp, label %.preheader.0, label %1

.preheader.0:                                     ; preds = %0
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_11 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_11, i32 5, i32 63)
  %b1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_11, i32 6, i32 63)
  %tmp_32 = zext i59 %a1 to i64
  %tmp_12 = uitofp i64 %tmp_32 to double
  %tmp_13 = fmul double %tmp_12, 0x4190000000000000
  %tmp_33 = zext i58 %b1 to i64
  %tmp_14 = uitofp i64 %tmp_33 to double
  %tmp_15 = fadd double %tmp_13, %tmp_14
  %U1 = fmul double %tmp_15, 0x3CA0000000000000
  %tmp_16 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_16, i32 5, i32 63)
  %b2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_16, i32 6, i32 63)
  %tmp_34 = zext i59 %a2 to i64
  %tmp_17 = uitofp i64 %tmp_34 to double
  %tmp_18 = fmul double %tmp_17, 0x4190000000000000
  %tmp_35 = zext i58 %b2 to i64
  %tmp_19 = uitofp i64 %tmp_35 to double
  %tmp_27 = fadd double %tmp_18, %tmp_19
  %U2 = fmul double %tmp_27, 0x3CA0000000000000
  %tmp_28 = fmul double %U1, 2.000000e+00
  %V1 = fadd double %tmp_28, -1.000000e+00
  %tmp_29 = fmul double %U2, 2.000000e+00
  %V2_1 = fadd double %tmp_29, -1.000000e+00
  %tmp_30 = fmul double %V1, %V1
  %tmp_31 = fmul double %V2_1, %V2_1
  %S_1 = fadd double %tmp_30, %tmp_31
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_1)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_1 = fcmp oge double %S_1, 1.000000e+00
  %tmp_25_1 = fcmp oeq double %S_1, 0.000000e+00
  %or_cond_1 = or i1 %tmp_24_1, %tmp_25_1
  br i1 %or_cond_1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.0
  %tmp_30_1 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_1, i32 5, i32 63)
  %b1_1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_1, i32 6, i32 63)
  %tmp_31_s = zext i59 %a1_1 to i64
  %tmp_31_1 = uitofp i64 %tmp_31_s to double
  %tmp_32_1 = fmul double %tmp_31_1, 0x4190000000000000
  %tmp_33_s = zext i58 %b1_1 to i64
  %tmp_33_1 = uitofp i64 %tmp_33_s to double
  %tmp_34_1 = fadd double %tmp_32_1, %tmp_33_1
  %U1_1 = fmul double %tmp_34_1, 0x3CA0000000000000
  %tmp_35_1 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_1, i32 5, i32 63)
  %b2_1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_1, i32 6, i32 63)
  %tmp_36_s = zext i59 %a2_1 to i64
  %tmp_36_1 = uitofp i64 %tmp_36_s to double
  %tmp_37_1 = fmul double %tmp_36_1, 0x4190000000000000
  %tmp_38_s = zext i58 %b2_1 to i64
  %tmp_38_1 = uitofp i64 %tmp_38_s to double
  %tmp_39_1 = fadd double %tmp_37_1, %tmp_38_1
  %U2_1 = fmul double %tmp_39_1, 0x3CA0000000000000
  %tmp_40_1 = fmul double %U1_1, 2.000000e+00
  %V1_1 = fadd double %tmp_40_1, -1.000000e+00
  %tmp_41_1 = fmul double %U2_1, 2.000000e+00
  %V2_1_1 = fadd double %tmp_41_1, -1.000000e+00
  %tmp_42_1 = fmul double %V1_1, %V1_1
  %tmp_43_1 = fmul double %V2_1_1, %V2_1_1
  %S_1_1 = fadd double %tmp_42_1, %tmp_43_1
  %empty_93 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_2)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_2 = fcmp oge double %S_1_1, 1.000000e+00
  %tmp_25_2 = fcmp oeq double %S_1_1, 0.000000e+00
  %or_cond_2 = or i1 %tmp_24_2, %tmp_25_2
  br i1 %or_cond_2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %tmp_30_2 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_2, i32 5, i32 63)
  %b1_2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_2, i32 6, i32 63)
  %tmp_31_10 = zext i59 %a1_2 to i64
  %tmp_31_2 = uitofp i64 %tmp_31_10 to double
  %tmp_32_2 = fmul double %tmp_31_2, 0x4190000000000000
  %tmp_33_10 = zext i58 %b1_2 to i64
  %tmp_33_2 = uitofp i64 %tmp_33_10 to double
  %tmp_34_2 = fadd double %tmp_32_2, %tmp_33_2
  %U1_2 = fmul double %tmp_34_2, 0x3CA0000000000000
  %tmp_35_2 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_2, i32 5, i32 63)
  %b2_2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_2, i32 6, i32 63)
  %tmp_36_10 = zext i59 %a2_2 to i64
  %tmp_36_2 = uitofp i64 %tmp_36_10 to double
  %tmp_37_2 = fmul double %tmp_36_2, 0x4190000000000000
  %tmp_38_10 = zext i58 %b2_2 to i64
  %tmp_38_2 = uitofp i64 %tmp_38_10 to double
  %tmp_39_2 = fadd double %tmp_37_2, %tmp_38_2
  %U2_2 = fmul double %tmp_39_2, 0x3CA0000000000000
  %tmp_40_2 = fmul double %U1_2, 2.000000e+00
  %V1_2 = fadd double %tmp_40_2, -1.000000e+00
  %tmp_41_2 = fmul double %U2_2, 2.000000e+00
  %V2_1_2 = fadd double %tmp_41_2, -1.000000e+00
  %tmp_42_2 = fmul double %V1_2, %V1_2
  %tmp_43_2 = fmul double %V2_1_2, %V2_1_2
  %S_1_2 = fadd double %tmp_42_2, %tmp_43_2
  %empty_94 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_3)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_3 = fcmp oge double %S_1_2, 1.000000e+00
  %tmp_25_3 = fcmp oeq double %S_1_2, 0.000000e+00
  %or_cond_3 = or i1 %tmp_24_3, %tmp_25_3
  br i1 %or_cond_3, label %.preheader.4, label %.loopexit

.preheader.4:                                     ; preds = %.preheader.3
  %tmp_30_3 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_3 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_3, i32 5, i32 63)
  %b1_3 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_3, i32 6, i32 63)
  %tmp_31_11 = zext i59 %a1_3 to i64
  %tmp_31_3 = uitofp i64 %tmp_31_11 to double
  %tmp_32_3 = fmul double %tmp_31_3, 0x4190000000000000
  %tmp_33_11 = zext i58 %b1_3 to i64
  %tmp_33_3 = uitofp i64 %tmp_33_11 to double
  %tmp_34_3 = fadd double %tmp_32_3, %tmp_33_3
  %U1_3 = fmul double %tmp_34_3, 0x3CA0000000000000
  %tmp_35_3 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_3 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_3, i32 5, i32 63)
  %b2_3 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_3, i32 6, i32 63)
  %tmp_36_11 = zext i59 %a2_3 to i64
  %tmp_36_3 = uitofp i64 %tmp_36_11 to double
  %tmp_37_3 = fmul double %tmp_36_3, 0x4190000000000000
  %tmp_38_11 = zext i58 %b2_3 to i64
  %tmp_38_3 = uitofp i64 %tmp_38_11 to double
  %tmp_39_3 = fadd double %tmp_37_3, %tmp_38_3
  %U2_3 = fmul double %tmp_39_3, 0x3CA0000000000000
  %tmp_40_3 = fmul double %U1_3, 2.000000e+00
  %V1_3 = fadd double %tmp_40_3, -1.000000e+00
  %tmp_41_3 = fmul double %U2_3, 2.000000e+00
  %V2_1_3 = fadd double %tmp_41_3, -1.000000e+00
  %tmp_42_3 = fmul double %V1_3, %V1_3
  %tmp_43_3 = fmul double %V2_1_3, %V2_1_3
  %S_1_3 = fadd double %tmp_42_3, %tmp_43_3
  %empty_95 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_4)
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_4 = fcmp oge double %S_1_3, 1.000000e+00
  %tmp_25_4 = fcmp oeq double %S_1_3, 0.000000e+00
  %or_cond_4 = or i1 %tmp_24_4, %tmp_25_4
  br i1 %or_cond_4, label %.preheader.5, label %.loopexit

.preheader.5:                                     ; preds = %.preheader.4
  %tmp_30_4 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_4 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_4, i32 5, i32 63)
  %b1_4 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_4, i32 6, i32 63)
  %tmp_31_12 = zext i59 %a1_4 to i64
  %tmp_31_4 = uitofp i64 %tmp_31_12 to double
  %tmp_32_4 = fmul double %tmp_31_4, 0x4190000000000000
  %tmp_33_12 = zext i58 %b1_4 to i64
  %tmp_33_4 = uitofp i64 %tmp_33_12 to double
  %tmp_34_4 = fadd double %tmp_32_4, %tmp_33_4
  %U1_4 = fmul double %tmp_34_4, 0x3CA0000000000000
  %tmp_35_4 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_4 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_4, i32 5, i32 63)
  %b2_4 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_4, i32 6, i32 63)
  %tmp_36_12 = zext i59 %a2_4 to i64
  %tmp_36_4 = uitofp i64 %tmp_36_12 to double
  %tmp_37_4 = fmul double %tmp_36_4, 0x4190000000000000
  %tmp_38_12 = zext i58 %b2_4 to i64
  %tmp_38_4 = uitofp i64 %tmp_38_12 to double
  %tmp_39_4 = fadd double %tmp_37_4, %tmp_38_4
  %U2_4 = fmul double %tmp_39_4, 0x3CA0000000000000
  %tmp_40_4 = fmul double %U1_4, 2.000000e+00
  %V1_4 = fadd double %tmp_40_4, -1.000000e+00
  %tmp_41_4 = fmul double %U2_4, 2.000000e+00
  %V2_1_4 = fadd double %tmp_41_4, -1.000000e+00
  %tmp_42_4 = fmul double %V1_4, %V1_4
  %tmp_43_4 = fmul double %V2_1_4, %V2_1_4
  %S_1_4 = fadd double %tmp_42_4, %tmp_43_4
  %empty_96 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_5)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_5 = fcmp oge double %S_1_4, 1.000000e+00
  %tmp_25_5 = fcmp oeq double %S_1_4, 0.000000e+00
  %or_cond_5 = or i1 %tmp_24_5, %tmp_25_5
  br i1 %or_cond_5, label %.preheader.6, label %.loopexit

.preheader.6:                                     ; preds = %.preheader.5
  %tmp_30_5 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_5 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_5, i32 5, i32 63)
  %b1_5 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_5, i32 6, i32 63)
  %tmp_31_13 = zext i59 %a1_5 to i64
  %tmp_31_5 = uitofp i64 %tmp_31_13 to double
  %tmp_32_5 = fmul double %tmp_31_5, 0x4190000000000000
  %tmp_33_13 = zext i58 %b1_5 to i64
  %tmp_33_5 = uitofp i64 %tmp_33_13 to double
  %tmp_34_5 = fadd double %tmp_32_5, %tmp_33_5
  %U1_5 = fmul double %tmp_34_5, 0x3CA0000000000000
  %tmp_35_5 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_5 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_5, i32 5, i32 63)
  %b2_5 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_5, i32 6, i32 63)
  %tmp_36_13 = zext i59 %a2_5 to i64
  %tmp_36_5 = uitofp i64 %tmp_36_13 to double
  %tmp_37_5 = fmul double %tmp_36_5, 0x4190000000000000
  %tmp_38_13 = zext i58 %b2_5 to i64
  %tmp_38_5 = uitofp i64 %tmp_38_13 to double
  %tmp_39_5 = fadd double %tmp_37_5, %tmp_38_5
  %U2_5 = fmul double %tmp_39_5, 0x3CA0000000000000
  %tmp_40_5 = fmul double %U1_5, 2.000000e+00
  %V1_5 = fadd double %tmp_40_5, -1.000000e+00
  %tmp_41_5 = fmul double %U2_5, 2.000000e+00
  %V2_1_5 = fadd double %tmp_41_5, -1.000000e+00
  %tmp_42_5 = fmul double %V1_5, %V1_5
  %tmp_43_5 = fmul double %V2_1_5, %V2_1_5
  %S_1_5 = fadd double %tmp_42_5, %tmp_43_5
  %empty_97 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_6)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_6 = fcmp oge double %S_1_5, 1.000000e+00
  %tmp_25_6 = fcmp oeq double %S_1_5, 0.000000e+00
  %or_cond_6 = or i1 %tmp_24_6, %tmp_25_6
  br i1 %or_cond_6, label %.preheader.7, label %.loopexit

.preheader.7:                                     ; preds = %.preheader.6
  %tmp_30_6 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_6 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_6, i32 5, i32 63)
  %b1_6 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_6, i32 6, i32 63)
  %tmp_31_14 = zext i59 %a1_6 to i64
  %tmp_31_6 = uitofp i64 %tmp_31_14 to double
  %tmp_32_6 = fmul double %tmp_31_6, 0x4190000000000000
  %tmp_33_14 = zext i58 %b1_6 to i64
  %tmp_33_6 = uitofp i64 %tmp_33_14 to double
  %tmp_34_6 = fadd double %tmp_32_6, %tmp_33_6
  %U1_6 = fmul double %tmp_34_6, 0x3CA0000000000000
  %tmp_35_6 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_6 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_6, i32 5, i32 63)
  %b2_6 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_6, i32 6, i32 63)
  %tmp_36_14 = zext i59 %a2_6 to i64
  %tmp_36_6 = uitofp i64 %tmp_36_14 to double
  %tmp_37_6 = fmul double %tmp_36_6, 0x4190000000000000
  %tmp_38_14 = zext i58 %b2_6 to i64
  %tmp_38_6 = uitofp i64 %tmp_38_14 to double
  %tmp_39_6 = fadd double %tmp_37_6, %tmp_38_6
  %U2_6 = fmul double %tmp_39_6, 0x3CA0000000000000
  %tmp_40_6 = fmul double %U1_6, 2.000000e+00
  %V1_6 = fadd double %tmp_40_6, -1.000000e+00
  %tmp_41_6 = fmul double %U2_6, 2.000000e+00
  %V2_1_6 = fadd double %tmp_41_6, -1.000000e+00
  %tmp_42_6 = fmul double %V1_6, %V1_6
  %tmp_43_6 = fmul double %V2_1_6, %V2_1_6
  %S_1_6 = fadd double %tmp_42_6, %tmp_43_6
  %empty_98 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_7)
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_7 = fcmp oge double %S_1_6, 1.000000e+00
  %tmp_25_7 = fcmp oeq double %S_1_6, 0.000000e+00
  %or_cond_7 = or i1 %tmp_24_7, %tmp_25_7
  br i1 %or_cond_7, label %.preheader.8, label %.loopexit

.preheader.8:                                     ; preds = %.preheader.7
  %tmp_30_7 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_7 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_7, i32 5, i32 63)
  %b1_7 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_7, i32 6, i32 63)
  %tmp_31_15 = zext i59 %a1_7 to i64
  %tmp_31_7 = uitofp i64 %tmp_31_15 to double
  %tmp_32_7 = fmul double %tmp_31_7, 0x4190000000000000
  %tmp_33_15 = zext i58 %b1_7 to i64
  %tmp_33_7 = uitofp i64 %tmp_33_15 to double
  %tmp_34_7 = fadd double %tmp_32_7, %tmp_33_7
  %U1_7 = fmul double %tmp_34_7, 0x3CA0000000000000
  %tmp_35_7 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_7 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_7, i32 5, i32 63)
  %b2_7 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_7, i32 6, i32 63)
  %tmp_36_15 = zext i59 %a2_7 to i64
  %tmp_36_7 = uitofp i64 %tmp_36_15 to double
  %tmp_37_7 = fmul double %tmp_36_7, 0x4190000000000000
  %tmp_38_15 = zext i58 %b2_7 to i64
  %tmp_38_7 = uitofp i64 %tmp_38_15 to double
  %tmp_39_7 = fadd double %tmp_37_7, %tmp_38_7
  %U2_7 = fmul double %tmp_39_7, 0x3CA0000000000000
  %tmp_40_7 = fmul double %U1_7, 2.000000e+00
  %V1_7 = fadd double %tmp_40_7, -1.000000e+00
  %tmp_41_7 = fmul double %U2_7, 2.000000e+00
  %V2_1_7 = fadd double %tmp_41_7, -1.000000e+00
  %tmp_42_7 = fmul double %V1_7, %V1_7
  %tmp_43_7 = fmul double %V2_1_7, %V2_1_7
  %S_1_7 = fadd double %tmp_42_7, %tmp_43_7
  %empty_99 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_8)
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_8 = fcmp oge double %S_1_7, 1.000000e+00
  %tmp_25_8 = fcmp oeq double %S_1_7, 0.000000e+00
  %or_cond_8 = or i1 %tmp_24_8, %tmp_25_8
  br i1 %or_cond_8, label %.preheader.9, label %.loopexit

.preheader.9:                                     ; preds = %.preheader.8
  %tmp_30_8 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_8 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_8, i32 5, i32 63)
  %b1_8 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_8, i32 6, i32 63)
  %tmp_31_16 = zext i59 %a1_8 to i64
  %tmp_31_8 = uitofp i64 %tmp_31_16 to double
  %tmp_32_8 = fmul double %tmp_31_8, 0x4190000000000000
  %tmp_33_16 = zext i58 %b1_8 to i64
  %tmp_33_8 = uitofp i64 %tmp_33_16 to double
  %tmp_34_8 = fadd double %tmp_32_8, %tmp_33_8
  %U1_8 = fmul double %tmp_34_8, 0x3CA0000000000000
  %tmp_35_8 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_8 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_8, i32 5, i32 63)
  %b2_8 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_8, i32 6, i32 63)
  %tmp_36_16 = zext i59 %a2_8 to i64
  %tmp_36_8 = uitofp i64 %tmp_36_16 to double
  %tmp_37_8 = fmul double %tmp_36_8, 0x4190000000000000
  %tmp_38_16 = zext i58 %b2_8 to i64
  %tmp_38_8 = uitofp i64 %tmp_38_16 to double
  %tmp_39_8 = fadd double %tmp_37_8, %tmp_38_8
  %U2_8 = fmul double %tmp_39_8, 0x3CA0000000000000
  %tmp_40_8 = fmul double %U1_8, 2.000000e+00
  %V1_8 = fadd double %tmp_40_8, -1.000000e+00
  %tmp_41_8 = fmul double %U2_8, 2.000000e+00
  %V2_1_8 = fadd double %tmp_41_8, -1.000000e+00
  %tmp_42_8 = fmul double %V1_8, %V1_8
  %tmp_43_8 = fmul double %V2_1_8, %V2_1_8
  %S_1_8 = fadd double %tmp_42_8, %tmp_43_8
  %empty_100 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_9)
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  %tmp_24_9 = fcmp oge double %S_1_8, 1.000000e+00
  %tmp_25_9 = fcmp oeq double %S_1_8, 0.000000e+00
  %or_cond_9 = or i1 %tmp_24_9, %tmp_25_9
  br i1 %or_cond_9, label %.preheader.10, label %.loopexit

.preheader.10:                                    ; preds = %.preheader.9
  %tmp_30_9 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a1_9 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_9, i32 5, i32 63)
  %b1_9 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_9, i32 6, i32 63)
  %tmp_31_17 = zext i59 %a1_9 to i64
  %tmp_31_9 = uitofp i64 %tmp_31_17 to double
  %tmp_32_9 = fmul double %tmp_31_9, 0x4190000000000000
  %tmp_33_17 = zext i58 %b1_9 to i64
  %tmp_33_9 = uitofp i64 %tmp_33_17 to double
  %tmp_34_9 = fadd double %tmp_32_9, %tmp_33_9
  %U1_9 = fmul double %tmp_34_9, 0x3CA0000000000000
  %tmp_35_9 = call fastcc i64 @black_scholes_rand_uint32() nounwind
  %a2_9 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_9, i32 5, i32 63)
  %b2_9 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_9, i32 6, i32 63)
  %tmp_36_17 = zext i59 %a2_9 to i64
  %tmp_36_9 = uitofp i64 %tmp_36_17 to double
  %tmp_37_9 = fmul double %tmp_36_9, 0x4190000000000000
  %tmp_38_17 = zext i58 %b2_9 to i64
  %tmp_38_9 = uitofp i64 %tmp_38_17 to double
  %tmp_39_9 = fadd double %tmp_37_9, %tmp_38_9
  %U2_9 = fmul double %tmp_39_9, 0x3CA0000000000000
  %tmp_40_9 = fmul double %U1_9, 2.000000e+00
  %V1_9 = fadd double %tmp_40_9, -1.000000e+00
  %tmp_41_9 = fmul double %U2_9, 2.000000e+00
  %V2_1_9 = fadd double %tmp_41_9, -1.000000e+00
  %tmp_42_9 = fmul double %V1_9, %V1_9
  %tmp_43_9 = fmul double %V2_1_9, %V2_1_9
  %S_1_9 = fadd double %tmp_42_9, %tmp_43_9
  %empty_101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_10)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.0
  %gaussrand_state_S_0_lcssa = phi double [ %S_1, %.preheader.0 ], [ %S_1_1, %.preheader.2 ], [ %S_1_2, %.preheader.3 ], [ %S_1_3, %.preheader.4 ], [ %S_1_4, %.preheader.5 ], [ %S_1_5, %.preheader.6 ], [ %S_1_6, %.preheader.7 ], [ %S_1_7, %.preheader.8 ], [ %S_1_8, %.preheader.9 ], [ %S_1_9, %.preheader.10 ]
  %gaussrand_state_V1_0_lcssa = phi double [ %V1, %.preheader.0 ], [ %V1_1, %.preheader.2 ], [ %V1_2, %.preheader.3 ], [ %V1_3, %.preheader.4 ], [ %V1_4, %.preheader.5 ], [ %V1_5, %.preheader.6 ], [ %V1_6, %.preheader.7 ], [ %V1_7, %.preheader.8 ], [ %V1_8, %.preheader.9 ], [ %V1_9, %.preheader.10 ]
  %tmp_23 = call double @llvm.log.f64(double %gaussrand_state_S_0_lcssa)
  %tmp_24 = fmul double %tmp_23, -2.000000e+00
  %tmp_25 = fdiv double %tmp_24, %gaussrand_state_S_0_lcssa
  %tmp_26 = call double @llvm.sqrt.f64(double %tmp_25)
  %X_1 = fmul double %gaussrand_state_V1_0_lcssa, %tmp_26
  br label %2

; <label>:1                                       ; preds = %0
  %tmp_s = call double @llvm.log.f64(double %gaussrand_state_S_read_1)
  %tmp_20 = fmul double %tmp_s, -2.000000e+00
  %tmp_21 = fdiv double %tmp_20, %gaussrand_state_S_read_1
  %tmp_22 = call double @llvm.sqrt.f64(double %tmp_21)
  %X = fmul double %tmp_22, %gaussrand_state_V2_read_1
  br label %2

; <label>:2                                       ; preds = %1, %.loopexit
  %X2 = phi double [ %X_1, %.loopexit ], [ %X, %1 ]
  ret double %X2
}

define double @black_scholes(double %S, double %E, double %A, double %B, double %rT, double %gaussrand_state_V1, double %gaussrand_state_V2, double %gaussrand_state_S, i32 %gaussrand_state_phase) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(double %S), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(double %E), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(double %A), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(double %B), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(double %rT), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_V1), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_V2), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_S), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %gaussrand_state_phase), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  %gaussrand_state_phase_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %gaussrand_state_phase)
  %gaussrand_state_S_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_S)
  %gaussrand_state_V2_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_V2)
  %rT_read = call double @_ssdm_op_Read.ap_auto.double(double %rT)
  %B_read = call double @_ssdm_op_Read.ap_auto.double(double %B)
  %A_read = call double @_ssdm_op_Read.ap_auto.double(double %A)
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E)
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind
  %rand_number = call fastcc double @black_scholes_gaussrand2(double %gaussrand_state_V2_read, double %gaussrand_state_S_read, i32 %gaussrand_state_phase_read)
  %tmp = fmul double %rand_number, %B_read
  %a_assign = fadd double %tmp, %A_read
  %tmp2 = call double @llvm.exp.f64(double %a_assign) nounwind
  %tmp3 = fmul double %tmp2, %S_read
  %tmp_27 = fsub double %tmp3, %E_read
  %tmp_28 = fcmp olt double %tmp_27, 0.000000e+00
  %tmp4 = select i1 %tmp_28, double 0.000000e+00, double %tmp_27
  %tmp5 = fmul double %tmp4, %rT_read
  ret double %tmp5
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

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.log.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19
  %empty_102 = zext i17 %5 to i19
  %empty_103 = trunc i19 %empty to i2
  %empty_104 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_102, i32 17, i32 18)
  %empty_105 = or i2 %empty_103, %empty_104
  %empty_106 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_102, i2 %empty_105, i32 17, i32 18)
  %empty_107 = zext i3 %3 to i22
  %empty_108 = zext i19 %empty_106 to i22
  %empty_109 = trunc i22 %empty_107 to i3
  %empty_110 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_108, i32 19, i32 21)
  %empty_111 = or i3 %empty_109, %empty_110
  %empty_112 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_108, i3 %empty_111, i32 19, i32 21)
  %empty_113 = zext i6 %2 to i28
  %empty_114 = zext i22 %empty_112 to i28
  %empty_115 = trunc i28 %empty_113 to i6
  %empty_116 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_114, i32 22, i32 27)
  %empty_117 = or i6 %empty_115, %empty_116
  %empty_118 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_114, i6 %empty_117, i32 22, i32 27)
  %empty_119 = zext i1 %1 to i29
  %empty_120 = zext i28 %empty_118 to i29
  %empty_121 = trunc i29 %empty_119 to i1
  %empty_122 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_120, i32 28)
  %empty_123 = or i1 %empty_121, %empty_122
  %empty_124 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_120, i1 %empty_123, i32 28, i32 28)
  %empty_125 = zext i3 %0 to i32
  %empty_126 = zext i29 %empty_124 to i32
  %empty_127 = trunc i32 %empty_125 to i3
  %empty_128 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_126, i32 29, i32 31)
  %empty_129 = or i3 %empty_127, %empty_128
  %empty_130 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_126, i3 %empty_129, i32 29, i32 31)
  ret i32 %empty_130
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8
  %empty_131 = zext i7 %17 to i8
  %empty_132 = trunc i8 %empty to i1
  %empty_133 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_131, i32 7)
  %empty_134 = or i1 %empty_132, %empty_133
  %empty_135 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_131, i1 %empty_134, i32 7, i32 7)
  %empty_136 = zext i1 %15 to i9
  %empty_137 = zext i8 %empty_135 to i9
  %empty_138 = trunc i9 %empty_136 to i1
  %empty_139 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_137, i32 8)
  %empty_140 = or i1 %empty_138, %empty_139
  %empty_141 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_137, i1 %empty_140, i32 8, i32 8)
  %empty_142 = zext i2 %14 to i11
  %empty_143 = zext i9 %empty_141 to i11
  %empty_144 = trunc i11 %empty_142 to i2
  %empty_145 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_143, i32 9, i32 10)
  %empty_146 = or i2 %empty_144, %empty_145
  %empty_147 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_143, i2 %empty_146, i32 9, i32 10)
  %empty_148 = zext i1 %13 to i12
  %empty_149 = zext i11 %empty_147 to i12
  %empty_150 = trunc i12 %empty_148 to i1
  %empty_151 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_149, i32 11)
  %empty_152 = or i1 %empty_150, %empty_151
  %empty_153 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_149, i1 %empty_152, i32 11, i32 11)
  %empty_154 = zext i1 %12 to i13
  %empty_155 = zext i12 %empty_153 to i13
  %empty_156 = trunc i13 %empty_154 to i1
  %empty_157 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_155, i32 12)
  %empty_158 = or i1 %empty_156, %empty_157
  %empty_159 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_155, i1 %empty_158, i32 12, i32 12)
  %empty_160 = zext i1 %11 to i14
  %empty_161 = zext i13 %empty_159 to i14
  %empty_162 = trunc i14 %empty_160 to i1
  %empty_163 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_161, i32 13)
  %empty_164 = or i1 %empty_162, %empty_163
  %empty_165 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_161, i1 %empty_164, i32 13, i32 13)
  %empty_166 = zext i1 %10 to i15
  %empty_167 = zext i14 %empty_165 to i15
  %empty_168 = trunc i15 %empty_166 to i1
  %empty_169 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_167, i32 14)
  %empty_170 = or i1 %empty_168, %empty_169
  %empty_171 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_167, i1 %empty_170, i32 14, i32 14)
  %empty_172 = zext i3 %9 to i18
  %empty_173 = zext i15 %empty_171 to i18
  %empty_174 = trunc i18 %empty_172 to i3
  %empty_175 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_173, i32 15, i32 17)
  %empty_176 = or i3 %empty_174, %empty_175
  %empty_177 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_173, i3 %empty_176, i32 15, i32 17)
  %empty_178 = zext i2 %8 to i20
  %empty_179 = zext i18 %empty_177 to i20
  %empty_180 = trunc i20 %empty_178 to i2
  %empty_181 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_179, i32 18, i32 19)
  %empty_182 = or i2 %empty_180, %empty_181
  %empty_183 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_179, i2 %empty_182, i32 18, i32 19)
  %empty_184 = zext i1 %7 to i21
  %empty_185 = zext i20 %empty_183 to i21
  %empty_186 = trunc i21 %empty_184 to i1
  %empty_187 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_185, i32 20)
  %empty_188 = or i1 %empty_186, %empty_187
  %empty_189 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_185, i1 %empty_188, i32 20, i32 20)
  %empty_190 = zext i1 %6 to i22
  %empty_191 = zext i21 %empty_189 to i22
  %empty_192 = trunc i22 %empty_190 to i1
  %empty_193 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_191, i32 21)
  %empty_194 = or i1 %empty_192, %empty_193
  %empty_195 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_191, i1 %empty_194, i32 21, i32 21)
  %empty_196 = zext i2 %5 to i24
  %empty_197 = zext i22 %empty_195 to i24
  %empty_198 = trunc i24 %empty_196 to i2
  %empty_199 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_197, i32 22, i32 23)
  %empty_200 = or i2 %empty_198, %empty_199
  %empty_201 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_197, i2 %empty_200, i32 22, i32 23)
  %empty_202 = zext i1 %4 to i25
  %empty_203 = zext i24 %empty_201 to i25
  %empty_204 = trunc i25 %empty_202 to i1
  %empty_205 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_203, i32 24)
  %empty_206 = or i1 %empty_204, %empty_205
  %empty_207 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_203, i1 %empty_206, i32 24, i32 24)
  %empty_208 = zext i1 %3 to i26
  %empty_209 = zext i25 %empty_207 to i26
  %empty_210 = trunc i26 %empty_208 to i1
  %empty_211 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_209, i32 25)
  %empty_212 = or i1 %empty_210, %empty_211
  %empty_213 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_209, i1 %empty_212, i32 25, i32 25)
  %empty_214 = zext i3 %2 to i29
  %empty_215 = zext i26 %empty_213 to i29
  %empty_216 = trunc i29 %empty_214 to i3
  %empty_217 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_215, i32 26, i32 28)
  %empty_218 = or i3 %empty_216, %empty_217
  %empty_219 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_215, i3 %empty_218, i32 26, i32 28)
  %empty_220 = zext i2 %1 to i31
  %empty_221 = zext i29 %empty_219 to i31
  %empty_222 = trunc i31 %empty_220 to i2
  %empty_223 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_221, i32 29, i32 30)
  %empty_224 = or i2 %empty_222, %empty_223
  %empty_225 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_221, i2 %empty_224, i32 29, i32 30)
  %empty_226 = zext i1 %0 to i32
  %empty_227 = zext i31 %empty_225 to i32
  %empty_228 = trunc i32 %empty_226 to i1
  %empty_229 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_227, i32 31)
  %empty_230 = or i1 %empty_228, %empty_229
  %empty_231 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_227, i1 %empty_230, i32 31, i32 31)
  ret i32 %empty_231
}

define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_232 = trunc i64 %empty to i46
  ret i46 %empty_232
}

define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_233 = trunc i64 %empty to i53
  ret i53 %empty_233
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_234 = trunc i64 %empty to i3
  ret i3 %empty_234
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_235 = zext i30 %1 to i31
  %empty_236 = trunc i31 %empty to i1
  %empty_237 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_235, i32 30)
  %empty_238 = or i1 %empty_236, %empty_237
  %empty_239 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_235, i1 %empty_238, i32 30, i32 30)
  ret i31 %empty_239
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_240 = trunc i64 %empty to i2
  ret i2 %empty_240
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_241 = trunc i64 %empty to i6
  ret i6 %empty_241
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_242 = trunc i64 %empty to i30
  ret i30 %empty_242
}

define weak i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_243 = trunc i64 %empty to i58
  ret i58 %empty_243
}

define weak i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_244 = trunc i64 %empty to i59
  ret i59 %empty_244
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_245 = shl i64 1, %empty
  %empty_246 = and i64 %0, %empty_245
  %empty_247 = icmp ne i64 %empty_246, 0
  ret i1 %empty_247
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_248 = trunc i19 %empty to i2
  ret i2 %empty_248
}

define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3)
  ret i19 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_249 = trunc i22 %empty to i3
  ret i3 %empty_249
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_250 = trunc i28 %empty to i6
  ret i6 %empty_250
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
  %empty_251 = shl i29 1, %empty
  %empty_252 = and i29 %0, %empty_251
  %empty_253 = icmp ne i29 %empty_252, 0
  ret i1 %empty_253
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_254 = trunc i32 %empty to i3
  ret i3 %empty_254
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
  %empty_255 = shl i8 1, %empty
  %empty_256 = and i8 %0, %empty_255
  %empty_257 = icmp ne i8 %empty_256, 0
  ret i1 %empty_257
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
  %empty_258 = shl i9 1, %empty
  %empty_259 = and i9 %0, %empty_258
  %empty_260 = icmp ne i9 %empty_259, 0
  ret i1 %empty_260
}

define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_261 = trunc i11 %empty to i2
  ret i2 %empty_261
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
  %empty_262 = shl i12 1, %empty
  %empty_263 = and i12 %0, %empty_262
  %empty_264 = icmp ne i12 %empty_263, 0
  ret i1 %empty_264
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
  %empty_265 = shl i13 1, %empty
  %empty_266 = and i13 %0, %empty_265
  %empty_267 = icmp ne i13 %empty_266, 0
  ret i1 %empty_267
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
  %empty_268 = shl i14 1, %empty
  %empty_269 = and i14 %0, %empty_268
  %empty_270 = icmp ne i14 %empty_269, 0
  ret i1 %empty_270
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
  %empty_271 = shl i15 1, %empty
  %empty_272 = and i15 %0, %empty_271
  %empty_273 = icmp ne i15 %empty_272, 0
  ret i1 %empty_273
}

define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_274 = trunc i18 %empty to i3
  ret i3 %empty_274
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3)
  ret i18 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_275 = trunc i20 %empty to i2
  ret i2 %empty_275
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
  %empty_276 = shl i21 1, %empty
  %empty_277 = and i21 %0, %empty_276
  %empty_278 = icmp ne i21 %empty_277, 0
  ret i1 %empty_278
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
  %empty_279 = shl i22 1, %empty
  %empty_280 = and i22 %0, %empty_279
  %empty_281 = icmp ne i22 %empty_280, 0
  ret i1 %empty_281
}

define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_282 = trunc i24 %empty to i2
  ret i2 %empty_282
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
  %empty_283 = shl i25 1, %empty
  %empty_284 = and i25 %0, %empty_283
  %empty_285 = icmp ne i25 %empty_284, 0
  ret i1 %empty_285
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
  %empty_286 = shl i26 1, %empty
  %empty_287 = and i26 %0, %empty_286
  %empty_288 = icmp ne i26 %empty_287, 0
  ret i1 %empty_288
}

define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_289 = trunc i29 %empty to i3
  ret i3 %empty_289
}

define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_290 = trunc i31 %empty to i2
  ret i2 %empty_290
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
  %empty_291 = and i32 %0, %empty
  %empty_292 = icmp ne i32 %empty_291, 0
  ret i1 %empty_292
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
  %empty_293 = shl i31 1, %empty
  %empty_294 = and i31 %0, %empty_293
  %empty_295 = icmp ne i31 %empty_294, 0
  ret i1 %empty_295
}

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

!llvm.map.gv = !{!0, !7, !12}

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
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 63, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"S", metadata !21, metadata !"double"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"E", metadata !21, metadata !"double"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 63, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"A", metadata !21, metadata !"double"}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 63, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"B", metadata !21, metadata !"double"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 63, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"rT", metadata !21, metadata !"double"}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 63, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"gaussrand_state.V1", metadata !21, metadata !"double"}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 63, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"gaussrand_state.V2", metadata !21, metadata !"double"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 63, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"gaussrand_state.S", metadata !21, metadata !"double"}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"gaussrand_state.phase", metadata !21, metadata !"int"}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 63, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"return", metadata !59, metadata !""}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 1, i32 0}
