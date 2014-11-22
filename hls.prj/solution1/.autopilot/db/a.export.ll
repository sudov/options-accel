; ModuleID = '/home/student/cw444/Fall2014/ece5775/test/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mt = internal unnamed_addr global [624 x i64] zeroinitializer, align 16
@mti = internal unnamed_addr global i32 625, align 4
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [14 x i8] c"black_scholes\00"

define internal fastcc void @black_scholes_init_by_array() nounwind uwtable {
  store i64 19650218, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %tmp_1_i = phi i10 [ 1, %0 ], [ %tmp_2_i, %2 ]
  %tmp_1_i_cast = zext i10 %tmp_1_i to i32
  store i32 %tmp_1_i_cast, i32* @mti, align 4
  %exitcond_i = icmp eq i10 %tmp_1_i, -400
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 623, i64 623, i64 623) nounwind
  br i1 %exitcond_i, label %init_genrand.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_3_i = add i10 %tmp_1_i, -1
  %tmp_4_i = zext i10 %tmp_3_i to i64
  %mt_addr_1 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_4_i
  %mt_load_6 = load i64* %mt_addr_1, align 8
  %tmp_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %mt_load_6, i32 30, i32 61)
  %tmp_17 = trunc i64 %mt_load_6 to i32
  %tmp_18 = xor i32 %tmp_1, %tmp_17
  %tmp_8_i = zext i10 %tmp_1_i to i64
  %tmp_16 = mul i32 %tmp_18, 1812433253
  %tmp_9_i_cast = add i32 %tmp_16, %tmp_1_i_cast
  %mt_addr_5 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_8_i
  %tmp_i_cast = zext i32 %tmp_9_i_cast to i64
  store i64 %tmp_i_cast, i64* %mt_addr_5, align 8
  %tmp_2_i = add i10 %tmp_1_i, 1
  br label %1

init_genrand.exit:                                ; preds = %1, %._crit_edge
  %i = phi i32 [ %i_1, %._crit_edge ], [ 1, %1 ]
  %j = phi i32 [ %p_s, %._crit_edge ], [ 0, %1 ]
  %k = phi i10 [ %k_2, %._crit_edge ], [ -400, %1 ]
  %tmp = icmp eq i10 %k, 0
  %empty_98 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 624, i64 624, i64 624) nounwind
  br i1 %tmp, label %.preheader, label %_ifconv

_ifconv:                                          ; preds = %init_genrand.exit
  %tmp_s = sext i32 %i to i64
  %mt_addr = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_s
  %mt_load = load i64* %mt_addr, align 8
  %tmp_4 = add nsw i32 %i, -1
  %tmp_5 = sext i32 %tmp_4 to i64
  %mt_addr_2 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_5
  %mt_load_1 = load i64* %mt_addr_2, align 8
  %tmp_6 = call i34 @_ssdm_op_PartSelect.i34.i64.i32.i32(i64 %mt_load_1, i32 30, i32 63)
  %tmp_23 = zext i34 %tmp_6 to i64
  %tmp_7 = xor i64 %tmp_23, %mt_load_1
  %tmp_8 = mul i64 %tmp_7, 1664525
  %tmp_9 = xor i64 %tmp_8, %mt_load
  %tmp_24 = trunc i32 %j to i2
  %sel_tmp = icmp eq i2 %tmp_24, 1
  %sel_tmp2 = icmp eq i2 %tmp_24, -2
  %sel_tmp4 = icmp eq i2 %tmp_24, 0
  %newSel_cast_cast = select i1 %sel_tmp4, i11 291, i11 837
  %or_cond = or i1 %sel_tmp4, %sel_tmp2
  %newSel7 = select i1 %sel_tmp, i11 564, i11 -938
  %newSel9 = select i1 %or_cond, i11 %newSel_cast_cast, i11 %newSel7
  %tmp_25 = trunc i64 %tmp_9 to i32
  %tmp_19 = add i32 %tmp_25, %j
  %tmp_20 = zext i11 %newSel9 to i32
  %tmp_19_cast = add i32 %tmp_19, %tmp_20
  %tmp_20_cast = zext i32 %tmp_19_cast to i64
  store i64 %tmp_20_cast, i64* %mt_addr, align 8
  %i_4 = add nsw i32 %i, 1
  %j_1 = add nsw i32 %j, 1
  %tmp_21 = icmp sgt i32 %i_4, 623
  br i1 %tmp_21, label %3, label %._crit_edge

; <label>:3                                       ; preds = %_ifconv
  %mt_load_2 = load i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 623), align 8
  store i64 %mt_load_2, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %_ifconv
  %i_1 = phi i32 [ 1, %3 ], [ %i_4, %_ifconv ]
  %tmp_28 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %j_1, i32 2, i32 31)
  %icmp = icmp slt i30 %tmp_28, 1
  %p_s = select i1 %icmp, i32 %j_1, i32 0
  %k_2 = add i10 %k, -1
  br label %init_genrand.exit

.preheader:                                       ; preds = %init_genrand.exit, %._crit_edge1
  %i_2 = phi i32 [ %i_3, %._crit_edge1 ], [ %i, %init_genrand.exit ]
  %k_1 = phi i10 [ %k_3, %._crit_edge1 ], [ -401, %init_genrand.exit ]
  %tmp_3 = icmp eq i10 %k_1, 0
  %empty_99 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 623, i64 623, i64 623) nounwind
  br i1 %tmp_3, label %6, label %4

; <label>:4                                       ; preds = %.preheader
  %tmp_2 = sext i32 %i_2 to i64
  %mt_addr_3 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_2
  %mt_load_3 = load i64* %mt_addr_3, align 8
  %tmp_10 = add nsw i32 %i_2, -1
  %tmp_11 = sext i32 %tmp_10 to i64
  %mt_addr_4 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_11
  %mt_load_4 = load i64* %mt_addr_4, align 8
  %tmp_12 = call i34 @_ssdm_op_PartSelect.i34.i64.i32.i32(i64 %mt_load_4, i32 30, i32 63)
  %tmp_26 = zext i34 %tmp_12 to i64
  %tmp_13 = xor i64 %tmp_26, %mt_load_4
  %tmp_14 = mul i64 %tmp_13, 1566083941
  %tmp_15 = xor i64 %tmp_14, %mt_load_3
  %tmp_27 = trunc i64 %tmp_15 to i32
  %tmp_16_cast = sub i32 %tmp_27, %i_2
  %tmp_17_cast = zext i32 %tmp_16_cast to i64
  store i64 %tmp_17_cast, i64* %mt_addr_3, align 8
  %i_5 = add nsw i32 %i_2, 1
  %tmp_22 = icmp sgt i32 %i_5, 623
  br i1 %tmp_22, label %5, label %._crit_edge1

; <label>:5                                       ; preds = %4
  %mt_load_5 = load i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 623), align 8
  store i64 %mt_load_5, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %5, %4
  %i_3 = phi i32 [ 1, %5 ], [ %i_5, %4 ]
  %k_3 = add i10 %k_1, -1
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  store i64 2147483648, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  ret void
}

define internal fastcc i64 @black_scholes_genrand_int32() nounwind uwtable {
  %mti_load = load i32* @mti, align 4
  %tmp = icmp sgt i32 %mti_load, 623
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %tmp_s = icmp eq i32 %mti_load, 625
  br i1 %tmp_s, label %2, label %._crit_edge2

; <label>:2                                       ; preds = %1
  store i64 5489, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  br label %3

; <label>:3                                       ; preds = %4, %2
  %tmp_1_i = phi i10 [ 1, %2 ], [ %tmp_2_i, %4 ]
  %tmp_1_i_cast = zext i10 %tmp_1_i to i32
  store i32 %tmp_1_i_cast, i32* @mti, align 4
  %exitcond_i = icmp eq i10 %tmp_1_i, -400
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 623, i64 623, i64 623) nounwind
  br i1 %exitcond_i, label %._crit_edge2, label %4

; <label>:4                                       ; preds = %3
  %tmp_3_i = add i10 %tmp_1_i, -1
  %tmp_4_i = zext i10 %tmp_3_i to i64
  %mt_addr_11 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_4_i
  %mt_load_14 = load i64* %mt_addr_11, align 8
  %tmp_34 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %mt_load_14, i32 30, i32 61)
  %tmp_35 = trunc i64 %mt_load_14 to i32
  %tmp_40 = xor i32 %tmp_34, %tmp_35
  %tmp_8_i = zext i10 %tmp_1_i to i64
  %tmp_28 = mul i32 %tmp_40, 1812433253
  %tmp_9_i_cast = add i32 %tmp_28, %tmp_1_i_cast
  %mt_addr_12 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_8_i
  %tmp_i_cast = zext i32 %tmp_9_i_cast to i64
  store i64 %tmp_i_cast, i64* %mt_addr_12, align 8
  %tmp_2_i = add i10 %tmp_1_i, 1
  br label %3

._crit_edge2:                                     ; preds = %3, %1
  br label %5

; <label>:5                                       ; preds = %6, %._crit_edge2
  %kk = phi i8 [ 0, %._crit_edge2 ], [ %tmp_26, %6 ]
  %kk_cast7 = zext i8 %kk to i10
  %exitcond1 = icmp eq i8 %kk, -29
  %empty_100 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 227, i64 227, i64 227) nounwind
  %tmp_26 = add i8 %kk, 1
  br i1 %exitcond1, label %.preheader, label %6

; <label>:6                                       ; preds = %5
  %tmp_24 = zext i8 %kk to i64
  %mt_addr = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_24
  %mt_load = load i64* %mt_addr, align 8
  %tmp_46 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_load, i32 31)
  %tmp_27 = zext i8 %tmp_26 to i64
  %mt_addr_5 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_27
  %mt_load_6 = load i64* %mt_addr_5, align 8
  %tmp_29 = add i10 %kk_cast7, 397
  %tmp_30 = zext i10 %tmp_29 to i64
  %mt_addr_6 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_30
  %mt_load_7 = load i64* %mt_addr_6, align 8
  %tmp_37 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_load_6, i32 1, i32 30)
  %tmp_31 = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_46, i30 %tmp_37)
  %tmp_31_cast = zext i31 %tmp_31 to i64
  %tmp_56 = trunc i64 %mt_load_6 to i1
  %mag01_load_phi_cast_cast = select i1 %tmp_56, i64 2567483615, i64 0
  %tmp1 = xor i64 %mt_load_7, %mag01_load_phi_cast_cast
  %tmp_32 = xor i64 %tmp1, %tmp_31_cast
  store i64 %tmp_32, i64* %mt_addr, align 8
  br label %5

.preheader:                                       ; preds = %5, %7
  %kk_1 = phi i10 [ %kk_2, %7 ], [ 227, %5 ]
  %exitcond = icmp eq i10 %kk_1, -401
  %empty_101 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 396, i64 396, i64 396) nounwind
  br i1 %exitcond, label %8, label %7

; <label>:7                                       ; preds = %.preheader
  %tmp_38 = zext i10 %kk_1 to i64
  %mt_addr_7 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_38
  %mt_load_11 = load i64* %mt_addr_7, align 8
  %tmp_60 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_load_11, i32 31)
  %kk_2 = add i10 %kk_1, 1
  %tmp_39 = zext i10 %kk_2 to i64
  %mt_addr_8 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_39
  %mt_load_12 = load i64* %mt_addr_8, align 8
  %tmp_62 = trunc i10 %kk_1 to i9
  %tmp_41 = add i9 %tmp_62, -227
  %tmp_43 = zext i9 %tmp_41 to i64
  %mt_addr_9 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_43
  %mt_load_13 = load i64* %mt_addr_9, align 8
  %tmp_52 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_load_12, i32 1, i32 30)
  %tmp_44 = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_60, i30 %tmp_52)
  %tmp_45_cast = zext i31 %tmp_44 to i64
  %tmp_63 = trunc i64 %mt_load_12 to i1
  %mag01_load_2_phi_cast_cast = select i1 %tmp_63, i64 2567483615, i64 0
  %tmp2 = xor i64 %mt_load_13, %mag01_load_2_phi_cast_cast
  %tmp_45 = xor i64 %tmp2, %tmp_45_cast
  store i64 %tmp_45, i64* %mt_addr_7, align 8
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  %mt_load_8 = load i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 623), align 8
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_load_8, i32 31)
  %mt_load_9 = load i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 0), align 16
  %mt_load_10 = load i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 396), align 16
  %tmp_42 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_load_9, i32 1, i32 30)
  %tmp_33 = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_57, i30 %tmp_42)
  %tmp_36_cast = zext i31 %tmp_33 to i64
  %tmp_59 = trunc i64 %mt_load_9 to i1
  %mag01_load_1_phi_cast_cast = select i1 %tmp_59, i64 2567483615, i64 0
  %tmp3 = xor i64 %mt_load_10, %mag01_load_1_phi_cast_cast
  %tmp_36 = xor i64 %tmp3, %tmp_36_cast
  store i64 %tmp_36, i64* getelementptr inbounds ([624 x i64]* @mt, i64 0, i64 623), align 8
  store i32 0, i32* @mti, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %8, %0
  %tmp_47 = phi i32 [ 0, %8 ], [ %mti_load, %0 ]
  %tmp_48 = add nsw i32 %tmp_47, 1
  store i32 %tmp_48, i32* @mti, align 4
  %tmp_49 = sext i32 %tmp_47 to i64
  %mt_addr_10 = getelementptr inbounds [624 x i64]* @mt, i64 0, i64 %tmp_49
  %y = load i64* %mt_addr_10, align 8
  %tmp_50 = call i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64 %y, i32 11, i32 63)
  %tmp_54 = zext i53 %tmp_50 to i64
  %y_1 = xor i64 %tmp_54, %y
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 24)
  %tmp_58 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_1, i32 19, i32 21)
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 17)
  %tmp_71 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 14)
  %tmp_61 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 11, i32 12)
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 7)
  %tmp_73 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 5)
  %tmp_64 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 2, i32 3)
  %tmp_74 = trunc i64 %y_1 to i1
  %tmp_51 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1 %tmp_65, i2 0, i3 %tmp_58, i1 false, i1 %tmp_70, i2 0, i1 %tmp_71, i1 false, i2 %tmp_61, i3 0, i1 %tmp_72, i1 false, i1 %tmp_73, i1 false, i2 %tmp_64, i1 false, i1 %tmp_74, i7 0)
  %tmp_53_cast = zext i32 %tmp_51 to i64
  %y_2 = xor i64 %tmp_53_cast, %y_1
  %tmp_66 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_2, i32 14, i32 16)
  %tmp_67 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %y_2, i32 7, i32 12)
  %tmp_68 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_2, i32 2, i32 3)
  %tmp_53 = call i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3 %tmp_66, i1 false, i6 %tmp_67, i3 0, i2 %tmp_68, i17 0)
  %tmp_55_cast = zext i32 %tmp_53 to i64
  %y_3 = xor i64 %tmp_55_cast, %y_2
  %tmp_55 = call i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64 %y_3, i32 18, i32 63)
  %tmp_69 = zext i46 %tmp_55 to i64
  %y_4 = xor i64 %tmp_69, %y_3
  ret i64 %y_4
}

define internal fastcc { double, double } @black_scholes_black_scholes_iterate(double %the_args_S_read, double %the_args_E_read, double %the_args_r_read, double %the_args_sigma_read, double %the_args_T_read) {
_ifconv:
  %S_2 = alloca double, align 8
  %V2_1 = alloca double, align 8
  %the_args_T_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %the_args_T_read)
  %the_args_sigma_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %the_args_sigma_read)
  %the_args_r_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %the_args_r_read)
  %the_args_E_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %the_args_E_read)
  %the_args_S_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %the_args_S_read)
  %p_Val2_1 = bitcast double %the_args_S_read_1 to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_1 to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i = zext i53 %p_Result_1 to i136
  %tmp_i_i_i_cast3 = zext i11 %loc_V to i12
  %sh_assign = add i12 %tmp_i_i_i_cast3, -1023
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_102 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_102 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_105_i_i = zext i32 %sh_assign_1_cast to i136
  %tmp_105_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_106_i_i = lshr i53 %p_Result_1, %tmp_105_i_i_cast
  %tmp_106_i_i_cast = zext i53 %tmp_106_i_i to i136
  %tmp_108_i_i = shl i136 %tmp_i_i, %tmp_105_i_i
  %p_Val2_3 = select i1 %isNeg, i136 %tmp_106_i_i_cast, i136 %tmp_108_i_i
  %p_Val2_4 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_3, i32 52, i32 83)
  %p_Val2_7_i_i = sub i32 0, %p_Val2_4
  %p_Val2_12 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_4
  %p_Val2_s = bitcast double %the_args_E_read_1 to i64
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_s to i52
  %p_Result_3 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_3) nounwind
  %tmp_i_i8 = zext i53 %p_Result_3 to i136
  %tmp_i_i_i9_cast2 = zext i11 %loc_V_2 to i12
  %sh_assign_2 = add i12 %tmp_i_i_i9_cast2, -1023
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_2, i32 11)
  %tmp_i_i1 = sub i11 1023, %loc_V_2
  %tmp_i_i1_cast = sext i11 %tmp_i_i1 to i12
  %sh_assign_3 = select i1 %isNeg_1, i12 %tmp_i_i1_cast, i12 %sh_assign_2
  %sh_assign_3_cast = sext i12 %sh_assign_3 to i32
  %tmp_105_i_i1 = zext i32 %sh_assign_3_cast to i136
  %tmp_105_i_i1_cast = zext i32 %sh_assign_3_cast to i53
  %tmp_106_i_i1 = lshr i53 %p_Result_3, %tmp_105_i_i1_cast
  %tmp_106_i_i1_cast = zext i53 %tmp_106_i_i1 to i136
  %tmp_108_i_i1 = shl i136 %tmp_i_i8, %tmp_105_i_i1
  %p_Val2_8 = select i1 %isNeg_1, i136 %tmp_106_i_i1_cast, i136 %tmp_108_i_i1
  %p_Val2_9 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %p_Val2_8, i32 52, i32 83)
  %p_Val2_7_i_i1 = sub i32 0, %p_Val2_9
  %p_Val2_13 = select i1 %p_Result_2, i32 %p_Val2_7_i_i1, i32 %p_Val2_9
  call fastcc void @black_scholes_init_by_array() nounwind
  %tmp = sitofp i32 %p_Val2_12 to double
  %tmp_s = fmul double %the_args_sigma_read_1, %the_args_sigma_read_1
  %tmp_56 = fmul double %tmp_s, 5.000000e-01
  %tmp_57 = fsub double %the_args_r_read_1, %tmp_56
  %tmp_58 = fmul double %tmp_57, %the_args_T_read_1
  %tmp_92_to_int = bitcast double %the_args_r_read_1 to i64
  %tmp_92_neg = xor i64 %tmp_92_to_int, -9223372036854775808
  %tmp_59 = bitcast i64 %tmp_92_neg to double
  %tmp_60 = fmul double %tmp_59, %the_args_T_read_1
  %tmp_61 = sitofp i32 %p_Val2_13 to double
  store double 0.000000e+00, double* %V2_1, align 8
  store double 0.000000e+00, double* %S_2, align 8
  br label %0

; <label>:0                                       ; preds = %._crit_edge1, %_ifconv
  %phase = phi i32 [ 0, %_ifconv ], [ %gaussrand_state_phase, %._crit_edge1 ]
  %M1 = phi double [ 0.000000e+00, %_ifconv ], [ %M1_1, %._crit_edge1 ]
  %Q1 = phi double [ 0.000000e+00, %_ifconv ], [ %Q1_1, %._crit_edge1 ]
  %k = phi i17 [ 1, %_ifconv ], [ %k_4, %._crit_edge1 ]
  %sum = phi double [ 0.000000e+00, %_ifconv ], [ %sum_1, %._crit_edge1 ]
  %k_cast1 = zext i17 %k to i32
  %exitcond = icmp eq i17 %k, -31071
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100000, i64 100000, i64 100000)
  br i1 %exitcond, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %tmp_i = icmp eq i32 %phase, 0
  br i1 %tmp_i, label %.critedge.i, label %2

.critedge.i:                                      ; preds = %._crit_edge, %.critedge.i
  %tmp_i_i1_103 = call fastcc i64 @black_scholes_genrand_int32() nounwind
  %a = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_i_i1_103, i32 5, i32 63)
  %tmp_i_i2 = call fastcc i64 @black_scholes_genrand_int32() nounwind
  %b = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_i_i2, i32 6, i32 63)
  %tmp_59_i_i1 = zext i59 %a to i64
  %tmp_59_i_i = uitofp i64 %tmp_59_i_i1 to double
  %tmp_60_i_i = fmul double %tmp_59_i_i, 0x4190000000000000
  %tmp_61_i_i1 = zext i58 %b to i64
  %tmp_61_i_i = uitofp i64 %tmp_61_i_i1 to double
  %tmp_62_i_i = fadd double %tmp_60_i_i, %tmp_61_i_i
  %U1 = fmul double %tmp_62_i_i, 0x3CA0000000000000
  %tmp_i4_i = call fastcc i64 @black_scholes_genrand_int32() nounwind
  %a_1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_i4_i, i32 5, i32 63)
  %tmp_i6_i = call fastcc i64 @black_scholes_genrand_int32() nounwind
  %b_1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_i6_i, i32 6, i32 63)
  %tmp_59_i8_i1 = zext i59 %a_1 to i64
  %tmp_59_i8_i = uitofp i64 %tmp_59_i8_i1 to double
  %tmp_60_i9_i = fmul double %tmp_59_i8_i, 0x4190000000000000
  %tmp_61_i10_i1 = zext i58 %b_1 to i64
  %tmp_61_i10_i = uitofp i64 %tmp_61_i10_i1 to double
  %tmp_62_i11_i = fadd double %tmp_60_i9_i, %tmp_61_i10_i
  %U2 = fmul double %tmp_62_i11_i, 0x3CA0000000000000
  %tmp_64_i = fmul double %U1, 2.000000e+00
  %V1 = fadd double %tmp_64_i, -1.000000e+00
  %tmp_65_i = fmul double %U2, 2.000000e+00
  %V2 = fadd double %tmp_65_i, -1.000000e+00
  %tmp_66_i = fmul double %V1, %V1
  %tmp_67_i = fmul double %V2, %V2
  %S_1 = fadd double %tmp_66_i, %tmp_67_i
  %tmp_68_i = fcmp oge double %S_1, 1.000000e+00
  %tmp_69_i = fcmp oeq double %S_1, 0.000000e+00
  %or_cond_i = or i1 %tmp_68_i, %tmp_69_i
  br i1 %or_cond_i, label %.critedge.i, label %1

; <label>:1                                       ; preds = %.critedge.i
  %tmp_73_i = call double @llvm.log.f64(double %S_1)
  %tmp_74_i = fmul double %tmp_73_i, -2.000000e+00
  %tmp_75_i = fdiv double %tmp_74_i, %S_1
  %tmp_76_i = call double @llvm.sqrt.f64(double %tmp_75_i)
  %X_1 = fmul double %V1, %tmp_76_i
  store double %V2, double* %V2_1, align 8
  store double %S_1, double* %S_2, align 8
  br label %gaussrand2.exit

; <label>:2                                       ; preds = %._crit_edge
  %S_2_load = load double* %S_2, align 8
  %V2_1_load = load double* %V2_1, align 8
  %tmp_i_104 = call double @llvm.log.f64(double %S_2_load)
  %tmp_70_i = fmul double %tmp_i_104, -2.000000e+00
  %tmp_71_i = fdiv double %tmp_70_i, %S_2_load
  %tmp_72_i = call double @llvm.sqrt.f64(double %tmp_71_i)
  %X = fmul double %tmp_72_i, %V2_1_load
  br label %gaussrand2.exit

gaussrand2.exit:                                  ; preds = %2, %1
  %gaussian_random_number = phi double [ %X_1, %1 ], [ %X, %2 ]
  %gaussrand_state_phase = sub nsw i32 1, %phase
  %tmp_62 = call double @llvm.sqrt.f64(double %the_args_T_read_1)
  %tmp_63 = fmul double %tmp_62, %the_args_sigma_read_1
  %tmp_64 = fmul double %tmp_63, %gaussian_random_number
  %tmp_65 = fadd double %tmp_58, %tmp_64
  %tmp_66 = call double @llvm.exp.f64(double %tmp_65)
  %current_value = fmul double %tmp, %tmp_66
  %tmp_67 = call double @llvm.exp.f64(double %tmp_60)
  %tmp_68 = fsub double %current_value, %tmp_61
  %tmp_69 = fcmp olt double %tmp_68, 0.000000e+00
  %tmp_70 = select i1 %tmp_69, double 0.000000e+00, double %tmp_68
  %M1_4 = fmul double %tmp_67, %tmp_70
  %tmp_71 = icmp eq i17 %k, 1
  br i1 %tmp_71, label %._crit_edge1, label %3

; <label>:3                                       ; preds = %gaussrand2.exit
  %tmp_72 = fsub double %M1_4, %M1
  %tmp_73 = sitofp i32 %k_cast1 to double
  %tmp_74 = fdiv double %tmp_72, %tmp_73
  %M2 = fadd double %M1, %tmp_74
  %tmp_75 = add i17 %k, -1
  %tmp_76_cast = zext i17 %tmp_75 to i32
  %tmp_76 = sitofp i32 %tmp_76_cast to double
  %tmp_77 = fmul double %tmp_72, %tmp_72
  %tmp_78 = fmul double %tmp_76, %tmp_77
  %tmp_79 = fdiv double %tmp_78, %tmp_73
  %Q2 = fadd double %Q1, %tmp_79
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %3, %gaussrand2.exit
  %M1_1 = phi double [ %M2, %3 ], [ %M1_4, %gaussrand2.exit ]
  %Q1_1 = phi double [ %Q2, %3 ], [ 0.000000e+00, %gaussrand2.exit ]
  %sum_1 = fadd double %sum, %M1_4
  %k_4 = add i17 %k, 1
  br label %0

; <label>:4                                       ; preds = %0
  %variance = fdiv double %Q1, 9.999900e+04
  %args_mean_write_assign = fdiv double %sum, 1.000000e+05
  %args_stdv_write_assign = call double @llvm.sqrt.f64(double %variance)
  %newret = insertvalue { double, double } undef, double %args_mean_write_assign, 0
  %newret2 = insertvalue { double, double } %newret, double %args_stdv_write_assign, 1
  ret { double, double } %newret2
}

define void @black_scholes(double* %interval_min, double* %interval_max, double %S, double %E, double %r, double %sigma, double %T, i32 %M) {
  call void (...)* @_ssdm_op_SpecBitsMap(double* %interval_min), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(double* %interval_max), !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(double %S), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(double %E), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(double %r), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(double %T), !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %M), !map !42
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  %M_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %M)
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T)
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma)
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r)
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E)
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S)
  %call_ret = call fastcc { double, double } @black_scholes_black_scholes_iterate(double %S_read, double %E_read, double %r_read, double %sigma_read, double %T_read)
  %args_mean = extractvalue { double, double } %call_ret, 0
  %args_stdv = extractvalue { double, double } %call_ret, 1
  %tmp_s = fmul double %args_stdv, 1.960000e+00
  %tmp_80 = sitofp i32 %M_read to double
  %tmp_81 = call double @llvm.sqrt.f64(double %tmp_80)
  %conf_width = fdiv double %tmp_s, %tmp_81
  %tmp_82 = fsub double %args_mean, %conf_width
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %interval_min, double %tmp_82)
  %tmp_83 = fadd double %args_mean, %conf_width
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %interval_max, double %tmp_83)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.log.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_105 = trunc i64 %empty to i11
  ret i11 %empty_105
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_106 = zext i52 %1 to i53
  %empty_107 = trunc i53 %empty to i1
  %empty_108 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %empty_106, i32 52)
  %empty_109 = or i1 %empty_107, %empty_108
  %empty_110 = call i53 @_ssdm_op_PartSet.i53.i53.i1.i32.i32(i53 %empty_106, i1 %empty_109, i32 52, i32 52)
  ret i53 %empty_110
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i34 @_ssdm_op_PartSelect.i34.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_111 = trunc i64 %empty to i34
  ret i34 %empty_111
}

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_112 = zext i30 %1 to i31
  %empty_113 = trunc i31 %empty to i1
  %empty_114 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_112, i32 30)
  %empty_115 = or i1 %empty_113, %empty_114
  %empty_116 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_112, i1 %empty_115, i32 30, i32 30)
  ret i31 %empty_116
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_117 = trunc i64 %empty to i30
  ret i30 %empty_117
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19
  %empty_118 = zext i17 %5 to i19
  %empty_119 = trunc i19 %empty to i2
  %empty_120 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_118, i32 17, i32 18)
  %empty_121 = or i2 %empty_119, %empty_120
  %empty_122 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_118, i2 %empty_121, i32 17, i32 18)
  %empty_123 = zext i3 %3 to i22
  %empty_124 = zext i19 %empty_122 to i22
  %empty_125 = trunc i22 %empty_123 to i3
  %empty_126 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_124, i32 19, i32 21)
  %empty_127 = or i3 %empty_125, %empty_126
  %empty_128 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_124, i3 %empty_127, i32 19, i32 21)
  %empty_129 = zext i6 %2 to i28
  %empty_130 = zext i22 %empty_128 to i28
  %empty_131 = trunc i28 %empty_129 to i6
  %empty_132 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_130, i32 22, i32 27)
  %empty_133 = or i6 %empty_131, %empty_132
  %empty_134 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_130, i6 %empty_133, i32 22, i32 27)
  %empty_135 = zext i1 %1 to i29
  %empty_136 = zext i28 %empty_134 to i29
  %empty_137 = trunc i29 %empty_135 to i1
  %empty_138 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_136, i32 28)
  %empty_139 = or i1 %empty_137, %empty_138
  %empty_140 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_136, i1 %empty_139, i32 28, i32 28)
  %empty_141 = zext i3 %0 to i32
  %empty_142 = zext i29 %empty_140 to i32
  %empty_143 = trunc i32 %empty_141 to i3
  %empty_144 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_142, i32 29, i32 31)
  %empty_145 = or i3 %empty_143, %empty_144
  %empty_146 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_142, i3 %empty_145, i32 29, i32 31)
  ret i32 %empty_146
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8
  %empty_147 = zext i7 %17 to i8
  %empty_148 = trunc i8 %empty to i1
  %empty_149 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_147, i32 7)
  %empty_150 = or i1 %empty_148, %empty_149
  %empty_151 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_147, i1 %empty_150, i32 7, i32 7)
  %empty_152 = zext i1 %15 to i9
  %empty_153 = zext i8 %empty_151 to i9
  %empty_154 = trunc i9 %empty_152 to i1
  %empty_155 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_153, i32 8)
  %empty_156 = or i1 %empty_154, %empty_155
  %empty_157 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_153, i1 %empty_156, i32 8, i32 8)
  %empty_158 = zext i2 %14 to i11
  %empty_159 = zext i9 %empty_157 to i11
  %empty_160 = trunc i11 %empty_158 to i2
  %empty_161 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_159, i32 9, i32 10)
  %empty_162 = or i2 %empty_160, %empty_161
  %empty_163 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_159, i2 %empty_162, i32 9, i32 10)
  %empty_164 = zext i1 %13 to i12
  %empty_165 = zext i11 %empty_163 to i12
  %empty_166 = trunc i12 %empty_164 to i1
  %empty_167 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_165, i32 11)
  %empty_168 = or i1 %empty_166, %empty_167
  %empty_169 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_165, i1 %empty_168, i32 11, i32 11)
  %empty_170 = zext i1 %12 to i13
  %empty_171 = zext i12 %empty_169 to i13
  %empty_172 = trunc i13 %empty_170 to i1
  %empty_173 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_171, i32 12)
  %empty_174 = or i1 %empty_172, %empty_173
  %empty_175 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_171, i1 %empty_174, i32 12, i32 12)
  %empty_176 = zext i1 %11 to i14
  %empty_177 = zext i13 %empty_175 to i14
  %empty_178 = trunc i14 %empty_176 to i1
  %empty_179 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_177, i32 13)
  %empty_180 = or i1 %empty_178, %empty_179
  %empty_181 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_177, i1 %empty_180, i32 13, i32 13)
  %empty_182 = zext i1 %10 to i15
  %empty_183 = zext i14 %empty_181 to i15
  %empty_184 = trunc i15 %empty_182 to i1
  %empty_185 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_183, i32 14)
  %empty_186 = or i1 %empty_184, %empty_185
  %empty_187 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_183, i1 %empty_186, i32 14, i32 14)
  %empty_188 = zext i3 %9 to i18
  %empty_189 = zext i15 %empty_187 to i18
  %empty_190 = trunc i18 %empty_188 to i3
  %empty_191 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_189, i32 15, i32 17)
  %empty_192 = or i3 %empty_190, %empty_191
  %empty_193 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_189, i3 %empty_192, i32 15, i32 17)
  %empty_194 = zext i2 %8 to i20
  %empty_195 = zext i18 %empty_193 to i20
  %empty_196 = trunc i20 %empty_194 to i2
  %empty_197 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_195, i32 18, i32 19)
  %empty_198 = or i2 %empty_196, %empty_197
  %empty_199 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_195, i2 %empty_198, i32 18, i32 19)
  %empty_200 = zext i1 %7 to i21
  %empty_201 = zext i20 %empty_199 to i21
  %empty_202 = trunc i21 %empty_200 to i1
  %empty_203 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_201, i32 20)
  %empty_204 = or i1 %empty_202, %empty_203
  %empty_205 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_201, i1 %empty_204, i32 20, i32 20)
  %empty_206 = zext i1 %6 to i22
  %empty_207 = zext i21 %empty_205 to i22
  %empty_208 = trunc i22 %empty_206 to i1
  %empty_209 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_207, i32 21)
  %empty_210 = or i1 %empty_208, %empty_209
  %empty_211 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_207, i1 %empty_210, i32 21, i32 21)
  %empty_212 = zext i2 %5 to i24
  %empty_213 = zext i22 %empty_211 to i24
  %empty_214 = trunc i24 %empty_212 to i2
  %empty_215 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_213, i32 22, i32 23)
  %empty_216 = or i2 %empty_214, %empty_215
  %empty_217 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_213, i2 %empty_216, i32 22, i32 23)
  %empty_218 = zext i1 %4 to i25
  %empty_219 = zext i24 %empty_217 to i25
  %empty_220 = trunc i25 %empty_218 to i1
  %empty_221 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_219, i32 24)
  %empty_222 = or i1 %empty_220, %empty_221
  %empty_223 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_219, i1 %empty_222, i32 24, i32 24)
  %empty_224 = zext i1 %3 to i26
  %empty_225 = zext i25 %empty_223 to i26
  %empty_226 = trunc i26 %empty_224 to i1
  %empty_227 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_225, i32 25)
  %empty_228 = or i1 %empty_226, %empty_227
  %empty_229 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_225, i1 %empty_228, i32 25, i32 25)
  %empty_230 = zext i3 %2 to i29
  %empty_231 = zext i26 %empty_229 to i29
  %empty_232 = trunc i29 %empty_230 to i3
  %empty_233 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_231, i32 26, i32 28)
  %empty_234 = or i3 %empty_232, %empty_233
  %empty_235 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_231, i3 %empty_234, i32 26, i32 28)
  %empty_236 = zext i2 %1 to i31
  %empty_237 = zext i29 %empty_235 to i31
  %empty_238 = trunc i31 %empty_236 to i2
  %empty_239 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_237, i32 29, i32 30)
  %empty_240 = or i2 %empty_238, %empty_239
  %empty_241 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_237, i2 %empty_240, i32 29, i32 30)
  %empty_242 = zext i1 %0 to i32
  %empty_243 = zext i31 %empty_241 to i32
  %empty_244 = trunc i32 %empty_242 to i1
  %empty_245 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_243, i32 31)
  %empty_246 = or i1 %empty_244, %empty_245
  %empty_247 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_243, i1 %empty_246, i32 31, i32 31)
  ret i32 %empty_247
}

define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_248 = trunc i64 %empty to i46
  ret i46 %empty_248
}

define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_249 = trunc i64 %empty to i53
  ret i53 %empty_249
}

define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_250 = trunc i64 %empty to i3
  ret i3 %empty_250
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_251 = trunc i64 %empty to i2
  ret i2 %empty_251
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_252 = trunc i64 %empty to i6
  ret i6 %empty_252
}

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_253 = trunc i136 %empty to i32
  ret i32 %empty_253
}

define weak i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_254 = trunc i64 %empty to i58
  ret i58 %empty_254
}

define weak i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_255 = trunc i64 %empty to i59
  ret i59 %empty_255
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_256 = trunc i32 %empty to i30
  ret i30 %empty_256
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_257 = shl i64 1, %empty
  %empty_258 = and i64 %0, %empty_257
  %empty_259 = icmp ne i64 %empty_258, 0
  ret i1 %empty_259
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_260 = shl i12 1, %empty
  %empty_261 = and i12 %0, %empty_260
  %empty_262 = icmp ne i12 %empty_261, 0
  ret i1 %empty_262
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_263 = trunc i64 %empty to i32
  ret i32 %empty_263
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone

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
  %empty_264 = shl i53 1, %empty
  %empty_265 = and i53 %0, %empty_264
  %empty_266 = icmp ne i53 %empty_265, 0
  ret i1 %empty_266
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
  %empty_267 = shl i31 1, %empty
  %empty_268 = and i31 %0, %empty_267
  %empty_269 = icmp ne i31 %empty_268, 0
  ret i1 %empty_269
}

define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_270 = trunc i19 %empty to i2
  ret i2 %empty_270
}

define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3)
  ret i19 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_271 = trunc i22 %empty to i3
  ret i3 %empty_271
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3)
  ret i22 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_272 = trunc i28 %empty to i6
  ret i6 %empty_272
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
  %empty_273 = shl i29 1, %empty
  %empty_274 = and i29 %0, %empty_273
  %empty_275 = icmp ne i29 %empty_274, 0
  ret i1 %empty_275
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_276 = trunc i32 %empty to i3
  ret i3 %empty_276
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
  %empty_277 = shl i8 1, %empty
  %empty_278 = and i8 %0, %empty_277
  %empty_279 = icmp ne i8 %empty_278, 0
  ret i1 %empty_279
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
  %empty_280 = shl i9 1, %empty
  %empty_281 = and i9 %0, %empty_280
  %empty_282 = icmp ne i9 %empty_281, 0
  ret i1 %empty_282
}

define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_283 = trunc i11 %empty to i2
  ret i2 %empty_283
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
  %empty_284 = shl i13 1, %empty
  %empty_285 = and i13 %0, %empty_284
  %empty_286 = icmp ne i13 %empty_285, 0
  ret i1 %empty_286
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
  %empty_287 = shl i14 1, %empty
  %empty_288 = and i14 %0, %empty_287
  %empty_289 = icmp ne i14 %empty_288, 0
  ret i1 %empty_289
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
  %empty_290 = shl i15 1, %empty
  %empty_291 = and i15 %0, %empty_290
  %empty_292 = icmp ne i15 %empty_291, 0
  ret i1 %empty_292
}

define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_293 = trunc i18 %empty to i3
  ret i3 %empty_293
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3)
  ret i18 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_294 = trunc i20 %empty to i2
  ret i2 %empty_294
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
  %empty_295 = shl i21 1, %empty
  %empty_296 = and i21 %0, %empty_295
  %empty_297 = icmp ne i21 %empty_296, 0
  ret i1 %empty_297
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
  %empty_298 = shl i22 1, %empty
  %empty_299 = and i22 %0, %empty_298
  %empty_300 = icmp ne i22 %empty_299, 0
  ret i1 %empty_300
}

define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_301 = trunc i24 %empty to i2
  ret i2 %empty_301
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
  %empty_302 = shl i25 1, %empty
  %empty_303 = and i25 %0, %empty_302
  %empty_304 = icmp ne i25 %empty_303, 0
  ret i1 %empty_304
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
  %empty_305 = shl i26 1, %empty
  %empty_306 = and i26 %0, %empty_305
  %empty_307 = icmp ne i26 %empty_306, 0
  ret i1 %empty_307
}

define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_308 = trunc i29 %empty to i3
  ret i3 %empty_308
}

define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3)
  ret i29 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_309 = trunc i31 %empty to i2
  ret i2 %empty_309
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
  %empty_310 = and i32 %0, %empty
  %empty_311 = icmp ne i32 %empty_310, 0
  ret i1 %empty_311
}

declare i53 @llvm.part.set.i53.i1(i53, i1, i32, i32) nounwind readnone

declare i31 @llvm.part.set.i31.i1(i31, i1, i32, i32) nounwind readnone

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i19 @llvm.part.set.i19.i2(i19, i2, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i22 @llvm.part.set.i22.i3(i22, i3, i32, i32) nounwind readnone

declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

declare i28 @llvm.part.set.i28.i6(i28, i6, i32, i32) nounwind readnone

declare i29 @llvm.part.set.i29.i1(i29, i1, i32, i32) nounwind readnone

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
!15 = metadata !{metadata !"interval.min", metadata !5, metadata !"double"}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 63, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"interval.max", metadata !5, metadata !"double"}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 63, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"S", metadata !24, metadata !"double"}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 0}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 63, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"E", metadata !24, metadata !"double"}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"r", metadata !24, metadata !"double"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"sigma", metadata !24, metadata !"double"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 63, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"T", metadata !24, metadata !"double"}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"M", metadata !24, metadata !"int"}
