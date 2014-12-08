; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2                       ; [#uses=2 type=i16*]
@kk_p1 = global i16 1, align 2                    ; [#uses=2 type=i16*]
@kk_pm = global i16 397, align 2                  ; [#uses=2 type=i16*]
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str24 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=20 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [14 x i8] c"black_scholes\00" ; [#uses=1 type=[14 x i8]*]

; [#uses=20]
define internal fastcc i64 @black_scholes_rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !17 ; [debug line = 128:1]
  %kk_load = load i16* @kk, align 2, !dbg !26     ; [#uses=3 type=i16] [debug line = 134:2]
  %tmp = zext i16 %kk_load to i64, !dbg !26       ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !26 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kk_load = load i64* %mt_kk_addr, align 8, !dbg !26 ; [#uses=1 type=i64] [debug line = 134:2]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31) ; [#uses=1 type=i1]
  %kk_p1_load = load i16* @kk_p1, align 2, !dbg !26 ; [#uses=3 type=i16] [debug line = 134:2]
  %tmp_5 = zext i16 %kk_p1_load to i64, !dbg !26  ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_5, !dbg !26 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8, !dbg !26 ; [#uses=2 type=i64] [debug line = 134:2]
  %tmp_7 = trunc i64 %mt_kkp1_load to i1, !dbg !26 ; [#uses=1 type=i1] [debug line = 134:2]
  %mag01_cast_cast = select i1 %tmp_7, i64 2567483615, i64 0, !dbg !27 ; [#uses=1 type=i64] [debug line = 135:2]
  %kk_pm_load = load i16* @kk_pm, align 2, !dbg !28 ; [#uses=3 type=i16] [debug line = 136:2]
  %tmp_9 = zext i16 %kk_pm_load to i64, !dbg !28  ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_9, !dbg !28 ; [#uses=2 type=i64*] [debug line = 136:2]
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8, !dbg !28 ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30) ; [#uses=1 type=i30]
  %tmp_s = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_1, i30 %tmp_3), !dbg !28 ; [#uses=1 type=i31] [debug line = 136:2]
  %tmp_cast = zext i31 %tmp_s to i64, !dbg !28    ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load, !dbg !28 ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kk_new = xor i64 %tmp1, %tmp_cast, !dbg !28 ; [#uses=5 type=i64] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !29), !dbg !28 ; [debug line = 136:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8, !dbg !30 ; [debug line = 139:2]
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8, !dbg !31 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8, !dbg !32 ; [debug line = 141:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !33), !dbg !34 ; [debug line = 144:2] [debug variable = y]
  %tmp_2 = call i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64 %mt_kk_new, i32 11, i32 63), !dbg !35 ; [#uses=1 type=i53] [debug line = 145:2]
  %tmp_4 = zext i53 %tmp_2 to i64, !dbg !35       ; [#uses=1 type=i64] [debug line = 145:2]
  %y_1 = xor i64 %tmp_4, %mt_kk_new, !dbg !35     ; [#uses=10 type=i64] [debug line = 145:2]
  call void @llvm.dbg.value(metadata !{i64 %y_1}, i64 0, metadata !33), !dbg !35 ; [debug line = 145:2] [debug variable = y]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 24) ; [#uses=1 type=i1]
  %tmp_11 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_1, i32 19, i32 21) ; [#uses=1 type=i3]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 17) ; [#uses=1 type=i1]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 14) ; [#uses=1 type=i1]
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 11, i32 12) ; [#uses=1 type=i2]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 7) ; [#uses=1 type=i1]
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y_1, i32 5) ; [#uses=1 type=i1]
  %tmp_17 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_1, i32 2, i32 3) ; [#uses=1 type=i2]
  %tmp_23 = trunc i64 %y_1 to i1                  ; [#uses=1 type=i1]
  %tmp_6 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1 %tmp_12, i2 0, i3 %tmp_11, i1 false, i1 %tmp_13, i2 0, i1 %tmp_15, i1 false, i2 %tmp_14, i3 0, i1 %tmp_16, i1 false, i1 %tmp_18, i1 false, i2 %tmp_17, i1 false, i1 %tmp_23, i7 0), !dbg !36 ; [#uses=1 type=i32] [debug line = 146:2]
  %tmp_10_cast = zext i32 %tmp_6 to i64, !dbg !36 ; [#uses=1 type=i64] [debug line = 146:2]
  %y_2 = xor i64 %tmp_10_cast, %y_1, !dbg !36     ; [#uses=4 type=i64] [debug line = 146:2]
  call void @llvm.dbg.value(metadata !{i64 %y_2}, i64 0, metadata !33), !dbg !36 ; [debug line = 146:2] [debug variable = y]
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64 %y_2, i32 14, i32 16) ; [#uses=1 type=i3]
  %tmp_20 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %y_2, i32 7, i32 12) ; [#uses=1 type=i6]
  %tmp_21 = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %y_2, i32 2, i32 3) ; [#uses=1 type=i2]
  %tmp_8 = call i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3 %tmp_19, i1 false, i6 %tmp_20, i3 0, i2 %tmp_21, i17 0), !dbg !37 ; [#uses=1 type=i32] [debug line = 147:2]
  %tmp_12_cast = zext i32 %tmp_8 to i64, !dbg !37 ; [#uses=1 type=i64] [debug line = 147:2]
  %y_3 = xor i64 %tmp_12_cast, %y_2, !dbg !37     ; [#uses=2 type=i64] [debug line = 147:2]
  call void @llvm.dbg.value(metadata !{i64 %y_3}, i64 0, metadata !33), !dbg !37 ; [debug line = 147:2] [debug variable = y]
  %tmp_10 = call i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64 %y_3, i32 18, i32 63), !dbg !38 ; [#uses=1 type=i46] [debug line = 148:2]
  %tmp_22 = zext i46 %tmp_10 to i64, !dbg !38     ; [#uses=1 type=i64] [debug line = 148:2]
  %y_4 = xor i64 %tmp_22, %y_3, !dbg !38          ; [#uses=1 type=i64] [debug line = 148:2]
  call void @llvm.dbg.value(metadata !{i64 %y_4}, i64 0, metadata !33), !dbg !38 ; [debug line = 148:2] [debug variable = y]
  %a_assign = add i16 %kk_load, 1, !dbg !39       ; [#uses=2 type=i16] [debug line = 151:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign}, i64 0, metadata !40), !dbg !45 ; [debug line = 95:37@151:7] [debug variable = a]
  %tmp_i = icmp ugt i16 %a_assign, 623, !dbg !46  ; [#uses=1 type=i1] [debug line = 97:2@151:7]
  %tmp_1_i = add i16 %kk_load, -623, !dbg !48     ; [#uses=1 type=i16] [debug line = 98:3@151:7]
  %a_assign_1 = select i1 %tmp_i, i16 %tmp_1_i, i16 %a_assign, !dbg !46 ; [#uses=1 type=i16] [debug line = 97:2@151:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_1}, i64 0, metadata !40), !dbg !46 ; [debug line = 97:2@151:7] [debug variable = a]
  store i16 %a_assign_1, i16* @kk, align 2, !dbg !39 ; [debug line = 151:7]
  %a_assign_2 = add i16 %kk_p1_load, 1, !dbg !49  ; [#uses=2 type=i16] [debug line = 152:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_2}, i64 0, metadata !50), !dbg !52 ; [debug line = 103:40@152:10] [debug variable = a]
  %tmp_i1 = icmp ugt i16 %a_assign_2, 623, !dbg !53 ; [#uses=1 type=i1] [debug line = 105:2@152:10]
  %tmp_2_i = add i16 %kk_p1_load, -623, !dbg !55  ; [#uses=1 type=i16] [debug line = 106:3@152:10]
  %a_assign_3 = select i1 %tmp_i1, i16 %tmp_2_i, i16 %a_assign_2, !dbg !53 ; [#uses=1 type=i16] [debug line = 105:2@152:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_3}, i64 0, metadata !50), !dbg !53 ; [debug line = 105:2@152:10] [debug variable = a]
  store i16 %a_assign_3, i16* @kk_p1, align 2, !dbg !49 ; [debug line = 152:10]
  %a_assign_4 = add i16 %kk_pm_load, 1, !dbg !56  ; [#uses=2 type=i16] [debug line = 153:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_4}, i64 0, metadata !57), !dbg !59 ; [debug line = 111:40@153:10] [debug variable = a]
  %tmp_i3 = icmp ugt i16 %a_assign_4, 623, !dbg !60 ; [#uses=1 type=i1] [debug line = 113:2@153:10]
  %tmp_3_i = add i16 %kk_pm_load, -623, !dbg !62  ; [#uses=1 type=i16] [debug line = 114:3@153:10]
  %a_assign_5 = select i1 %tmp_i3, i16 %tmp_3_i, i16 %a_assign_4, !dbg !60 ; [#uses=1 type=i16] [debug line = 113:2@153:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_5}, i64 0, metadata !57), !dbg !60 ; [debug line = 113:2@153:10] [debug variable = a]
  store i16 %a_assign_5, i16* @kk_pm, align 2, !dbg !56 ; [debug line = 153:10]
  ret i64 %y_4, !dbg !63                          ; [debug line = 155:2]
}

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
define internal fastcc double @black_scholes_gaussrand2(double %gaussrand_state_V2_read, double %gaussrand_state_S_read, i32 %gaussrand_state_phase_read) {
  %gaussrand_state_phase_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %gaussrand_state_phase_read) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %gaussrand_state_phase_read_1}, i64 0, metadata !64), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.phase]
  %gaussrand_state_S_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_S_read) ; [#uses=2 type=double]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_S_read_1}, i64 0, metadata !85), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.S]
  %gaussrand_state_V2_read_1 = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_V2_read) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_V2_read_1}, i64 0, metadata !89), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.V2]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_V2_read}, i64 0, metadata !89), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.V2]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_S_read}, i64 0, metadata !85), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.S]
  call void @llvm.dbg.value(metadata !{i32 %gaussrand_state_phase_read}, i64 0, metadata !64), !dbg !84 ; [debug line = 18:39] [debug variable = gaussrand_state.phase]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str13) nounwind, !dbg !93 ; [debug line = 24:1]
  call void @llvm.dbg.value(metadata !{i32 %gaussrand_state_phase_read}, i64 0, metadata !95), !dbg !97 ; [debug line = 29:43] [debug variable = phase]
  %tmp = icmp eq i32 %gaussrand_state_phase_read_1, 0, !dbg !98 ; [#uses=1 type=i1] [debug line = 31:3]
  br i1 %tmp, label %.preheader.0, label %1, !dbg !98 ; [debug line = 31:3]

.preheader.0:                                     ; preds = %0
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_11 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_11, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_11, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_32 = zext i59 %a1 to i64, !dbg !106        ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_12 = uitofp i64 %tmp_32 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_13 = fmul double %tmp_12, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33 = zext i58 %b1 to i64, !dbg !106        ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_14 = uitofp i64 %tmp_33 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_15 = fadd double %tmp_13, %tmp_14, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1 = fmul double %tmp_15, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_16 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_16, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_16, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_34 = zext i59 %a2 to i64, !dbg !109        ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_17 = uitofp i64 %tmp_34 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_18 = fmul double %tmp_17, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_35 = zext i58 %b2 to i64, !dbg !109        ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_19 = uitofp i64 %tmp_35 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_27 = fadd double %tmp_18, %tmp_19, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2 = fmul double %tmp_27, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_28 = fmul double %U1, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1 = fadd double %tmp_28, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_29 = fmul double %U2, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1 = fadd double %tmp_29, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_30 = fmul double %V1, %V1, !dbg !112       ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_31 = fmul double %V2_1, %V2_1, !dbg !112   ; [#uses=1 type=double] [debug line = 58:11]
  %S_1 = fadd double %tmp_30, %tmp_31, !dbg !112  ; [#uses=3 type=double] [debug line = 58:11]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_1), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_1 = fcmp oge double %S_1, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_1 = fcmp oeq double %S_1, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_1 = or i1 %tmp_24_1, %tmp_25_1, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_1, label %.preheader.2, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.2:                                     ; preds = %.preheader.0
  %tmp_30_1 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_1, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_1, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_s = zext i59 %a1_1 to i64, !dbg !106    ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_1 = uitofp i64 %tmp_31_s to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_1 = fmul double %tmp_31_1, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_s = zext i58 %b1_1 to i64, !dbg !106    ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_1 = uitofp i64 %tmp_33_s to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_1 = fadd double %tmp_32_1, %tmp_33_1, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_1 = fmul double %tmp_34_1, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_1 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_1 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_1, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_1 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_1, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_s = zext i59 %a2_1 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_1 = uitofp i64 %tmp_36_s to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_1 = fmul double %tmp_36_1, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_s = zext i58 %b2_1 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_1 = uitofp i64 %tmp_38_s to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_1 = fadd double %tmp_37_1, %tmp_38_1, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_1 = fmul double %tmp_39_1, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_1 = fmul double %U1_1, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_1 = fadd double %tmp_40_1, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_1 = fmul double %U2_1, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_1 = fadd double %tmp_41_1, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_1 = fmul double %V1_1, %V1_1, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_1 = fmul double %V2_1_1, %V2_1_1, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_1 = fadd double %tmp_42_1, %tmp_43_1, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_93 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_2), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_2 = fcmp oge double %S_1_1, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_2 = fcmp oeq double %S_1_1, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_2 = or i1 %tmp_24_2, %tmp_25_2, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_2, label %.preheader.3, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.3:                                     ; preds = %.preheader.2
  %tmp_30_2 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_2, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_2, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_10 = zext i59 %a1_2 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_2 = uitofp i64 %tmp_31_10 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_2 = fmul double %tmp_31_2, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_10 = zext i58 %b1_2 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_2 = uitofp i64 %tmp_33_10 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_2 = fadd double %tmp_32_2, %tmp_33_2, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_2 = fmul double %tmp_34_2, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_2 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_2 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_2, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_2 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_2, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_10 = zext i59 %a2_2 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_2 = uitofp i64 %tmp_36_10 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_2 = fmul double %tmp_36_2, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_10 = zext i58 %b2_2 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_2 = uitofp i64 %tmp_38_10 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_2 = fadd double %tmp_37_2, %tmp_38_2, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_2 = fmul double %tmp_39_2, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_2 = fmul double %U1_2, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_2 = fadd double %tmp_40_2, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_2 = fmul double %U2_2, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_2 = fadd double %tmp_41_2, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_2 = fmul double %V1_2, %V1_2, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_2 = fmul double %V2_1_2, %V2_1_2, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_2 = fadd double %tmp_42_2, %tmp_43_2, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_94 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_3), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_3 = fcmp oge double %S_1_2, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_3 = fcmp oeq double %S_1_2, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_3 = or i1 %tmp_24_3, %tmp_25_3, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_3, label %.preheader.4, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.4:                                     ; preds = %.preheader.3
  %tmp_30_3 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_3 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_3, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_3 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_3, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_11 = zext i59 %a1_3 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_3 = uitofp i64 %tmp_31_11 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_3 = fmul double %tmp_31_3, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_11 = zext i58 %b1_3 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_3 = uitofp i64 %tmp_33_11 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_3 = fadd double %tmp_32_3, %tmp_33_3, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_3 = fmul double %tmp_34_3, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_3 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_3 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_3, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_3 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_3, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_11 = zext i59 %a2_3 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_3 = uitofp i64 %tmp_36_11 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_3 = fmul double %tmp_36_3, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_11 = zext i58 %b2_3 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_3 = uitofp i64 %tmp_38_11 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_3 = fadd double %tmp_37_3, %tmp_38_3, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_3 = fmul double %tmp_39_3, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_3 = fmul double %U1_3, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_3 = fadd double %tmp_40_3, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_3 = fmul double %U2_3, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_3 = fadd double %tmp_41_3, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_3 = fmul double %V1_3, %V1_3, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_3 = fmul double %V2_1_3, %V2_1_3, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_3 = fadd double %tmp_42_3, %tmp_43_3, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_95 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_4), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_4 = fcmp oge double %S_1_3, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_4 = fcmp oeq double %S_1_3, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_4 = or i1 %tmp_24_4, %tmp_25_4, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_4, label %.preheader.5, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.5:                                     ; preds = %.preheader.4
  %tmp_30_4 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_4 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_4, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_4 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_4, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_12 = zext i59 %a1_4 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_4 = uitofp i64 %tmp_31_12 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_4 = fmul double %tmp_31_4, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_12 = zext i58 %b1_4 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_4 = uitofp i64 %tmp_33_12 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_4 = fadd double %tmp_32_4, %tmp_33_4, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_4 = fmul double %tmp_34_4, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_4 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_4 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_4, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_4 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_4, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_12 = zext i59 %a2_4 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_4 = uitofp i64 %tmp_36_12 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_4 = fmul double %tmp_36_4, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_12 = zext i58 %b2_4 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_4 = uitofp i64 %tmp_38_12 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_4 = fadd double %tmp_37_4, %tmp_38_4, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_4 = fmul double %tmp_39_4, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_4 = fmul double %U1_4, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_4 = fadd double %tmp_40_4, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_4 = fmul double %U2_4, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_4 = fadd double %tmp_41_4, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_4 = fmul double %V1_4, %V1_4, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_4 = fmul double %V2_1_4, %V2_1_4, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_4 = fadd double %tmp_42_4, %tmp_43_4, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_96 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_5), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_5 = fcmp oge double %S_1_4, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_5 = fcmp oeq double %S_1_4, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_5 = or i1 %tmp_24_5, %tmp_25_5, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_5, label %.preheader.6, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.6:                                     ; preds = %.preheader.5
  %tmp_30_5 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_5 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_5, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_5 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_5, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_13 = zext i59 %a1_5 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_5 = uitofp i64 %tmp_31_13 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_5 = fmul double %tmp_31_5, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_13 = zext i58 %b1_5 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_5 = uitofp i64 %tmp_33_13 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_5 = fadd double %tmp_32_5, %tmp_33_5, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_5 = fmul double %tmp_34_5, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_5 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_5 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_5, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_5 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_5, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_13 = zext i59 %a2_5 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_5 = uitofp i64 %tmp_36_13 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_5 = fmul double %tmp_36_5, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_13 = zext i58 %b2_5 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_5 = uitofp i64 %tmp_38_13 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_5 = fadd double %tmp_37_5, %tmp_38_5, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_5 = fmul double %tmp_39_5, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_5 = fmul double %U1_5, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_5 = fadd double %tmp_40_5, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_5 = fmul double %U2_5, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_5 = fadd double %tmp_41_5, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_5 = fmul double %V1_5, %V1_5, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_5 = fmul double %V2_1_5, %V2_1_5, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_5 = fadd double %tmp_42_5, %tmp_43_5, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_97 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_6), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_6 = fcmp oge double %S_1_5, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_6 = fcmp oeq double %S_1_5, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_6 = or i1 %tmp_24_6, %tmp_25_6, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_6, label %.preheader.7, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.7:                                     ; preds = %.preheader.6
  %tmp_30_6 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_6 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_6, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_6 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_6, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_14 = zext i59 %a1_6 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_6 = uitofp i64 %tmp_31_14 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_6 = fmul double %tmp_31_6, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_14 = zext i58 %b1_6 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_6 = uitofp i64 %tmp_33_14 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_6 = fadd double %tmp_32_6, %tmp_33_6, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_6 = fmul double %tmp_34_6, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_6 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_6 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_6, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_6 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_6, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_14 = zext i59 %a2_6 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_6 = uitofp i64 %tmp_36_14 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_6 = fmul double %tmp_36_6, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_14 = zext i58 %b2_6 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_6 = uitofp i64 %tmp_38_14 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_6 = fadd double %tmp_37_6, %tmp_38_6, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_6 = fmul double %tmp_39_6, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_6 = fmul double %U1_6, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_6 = fadd double %tmp_40_6, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_6 = fmul double %U2_6, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_6 = fadd double %tmp_41_6, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_6 = fmul double %V1_6, %V1_6, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_6 = fmul double %V2_1_6, %V2_1_6, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_6 = fadd double %tmp_42_6, %tmp_43_6, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_98 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_7), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_7 = fcmp oge double %S_1_6, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_7 = fcmp oeq double %S_1_6, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_7 = or i1 %tmp_24_7, %tmp_25_7, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_7, label %.preheader.8, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.8:                                     ; preds = %.preheader.7
  %tmp_30_7 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_7 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_7, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_7 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_7, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_15 = zext i59 %a1_7 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_7 = uitofp i64 %tmp_31_15 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_7 = fmul double %tmp_31_7, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_15 = zext i58 %b1_7 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_7 = uitofp i64 %tmp_33_15 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_7 = fadd double %tmp_32_7, %tmp_33_7, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_7 = fmul double %tmp_34_7, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_7 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_7 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_7, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_7 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_7, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_15 = zext i59 %a2_7 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_7 = uitofp i64 %tmp_36_15 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_7 = fmul double %tmp_36_7, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_15 = zext i58 %b2_7 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_7 = uitofp i64 %tmp_38_15 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_7 = fadd double %tmp_37_7, %tmp_38_7, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_7 = fmul double %tmp_39_7, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_7 = fmul double %U1_7, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_7 = fadd double %tmp_40_7, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_7 = fmul double %U2_7, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_7 = fadd double %tmp_41_7, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_7 = fmul double %V1_7, %V1_7, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_7 = fmul double %V2_1_7, %V2_1_7, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_7 = fadd double %tmp_42_7, %tmp_43_7, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_99 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_8), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_8 = fcmp oge double %S_1_7, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_8 = fcmp oeq double %S_1_7, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_8 = or i1 %tmp_24_8, %tmp_25_8, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_8, label %.preheader.9, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.9:                                     ; preds = %.preheader.8
  %tmp_30_8 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_8 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_8, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_8 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_8, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_16 = zext i59 %a1_8 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_8 = uitofp i64 %tmp_31_16 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_8 = fmul double %tmp_31_8, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_16 = zext i58 %b1_8 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_8 = uitofp i64 %tmp_33_16 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_8 = fadd double %tmp_32_8, %tmp_33_8, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_8 = fmul double %tmp_34_8, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_8 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_8 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_8, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_8 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_8, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_16 = zext i59 %a2_8 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_8 = uitofp i64 %tmp_36_16 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_8 = fmul double %tmp_36_8, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_16 = zext i58 %b2_8 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_8 = uitofp i64 %tmp_38_16 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_8 = fadd double %tmp_37_8, %tmp_38_8, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_8 = fmul double %tmp_39_8, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_8 = fmul double %U1_8, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_8 = fadd double %tmp_40_8, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_8 = fmul double %U2_8, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_8 = fadd double %tmp_41_8, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_8 = fmul double %V1_8, %V1_8, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_8 = fmul double %V2_1_8, %V2_1_8, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_8 = fadd double %tmp_42_8, %tmp_43_8, !dbg !112 ; [#uses=3 type=double] [debug line = 58:11]
  %empty_100 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_9), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24), !dbg !99 ; [#uses=1 type=i32] [debug line = 38:33]
  %tmp_24_9 = fcmp oge double %S_1_8, 1.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp_25_9 = fcmp oeq double %S_1_8, 0.000000e+00, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  %or_cond_9 = or i1 %tmp_24_9, %tmp_25_9, !dbg !114 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or_cond_9, label %.preheader.10, label %.loopexit, !dbg !114 ; [debug line = 45:2]

.preheader.10:                                    ; preds = %.preheader.9
  %tmp_30_9 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !103 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1_9 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_30_9, i32 5, i32 63), !dbg !103 ; [#uses=1 type=i59] [debug line = 46:14]
  %b1_9 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_30_9, i32 6, i32 63), !dbg !105 ; [#uses=1 type=i58] [debug line = 47:11]
  %tmp_31_17 = zext i59 %a1_9 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_31_9 = uitofp i64 %tmp_31_17 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_32_9 = fmul double %tmp_31_9, 0x4190000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_33_17 = zext i58 %b1_9 to i64, !dbg !106   ; [#uses=1 type=i64] [debug line = 49:72]
  %tmp_33_9 = uitofp i64 %tmp_33_17 to double, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_34_9 = fadd double %tmp_32_9, %tmp_33_9, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %U1_9 = fmul double %tmp_34_9, 0x3CA0000000000000, !dbg !106 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp_35_9 = call fastcc i64 @black_scholes_rand_uint32() nounwind, !dbg !107 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2_9 = call i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64 %tmp_35_9, i32 5, i32 63), !dbg !107 ; [#uses=1 type=i59] [debug line = 51:14]
  %b2_9 = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %tmp_35_9, i32 6, i32 63), !dbg !108 ; [#uses=1 type=i58] [debug line = 52:11]
  %tmp_36_17 = zext i59 %a2_9 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_36_9 = uitofp i64 %tmp_36_17 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_37_9 = fmul double %tmp_36_9, 0x4190000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_38_17 = zext i58 %b2_9 to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 54:72]
  %tmp_38_9 = uitofp i64 %tmp_38_17 to double, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_39_9 = fadd double %tmp_37_9, %tmp_38_9, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %U2_9 = fmul double %tmp_39_9, 0x3CA0000000000000, !dbg !109 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp_40_9 = fmul double %U1_9, 2.000000e+00, !dbg !110 ; [#uses=1 type=double] [debug line = 56:11]
  %V1_9 = fadd double %tmp_40_9, -1.000000e+00, !dbg !110 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp_41_9 = fmul double %U2_9, 2.000000e+00, !dbg !111 ; [#uses=1 type=double] [debug line = 57:11]
  %V2_1_9 = fadd double %tmp_41_9, -1.000000e+00, !dbg !111 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp_42_9 = fmul double %V1_9, %V1_9, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp_43_9 = fmul double %V2_1_9, %V2_1_9, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %S_1_9 = fadd double %tmp_42_9, %tmp_43_9, !dbg !112 ; [#uses=1 type=double] [debug line = 58:11]
  %empty_101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_10), !dbg !113 ; [#uses=0 type=i32] [debug line = 62:7]
  br label %.loopexit, !dbg !115                  ; [debug line = 38:12]

.loopexit:                                        ; preds = %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.0
  %gaussrand_state_S_0_lcssa = phi double [ %S_1, %.preheader.0 ], [ %S_1_1, %.preheader.2 ], [ %S_1_2, %.preheader.3 ], [ %S_1_3, %.preheader.4 ], [ %S_1_4, %.preheader.5 ], [ %S_1_5, %.preheader.6 ], [ %S_1_6, %.preheader.7 ], [ %S_1_7, %.preheader.8 ], [ %S_1_8, %.preheader.9 ], [ %S_1_9, %.preheader.10 ] ; [#uses=2 type=double]
  %gaussrand_state_V1_0_lcssa = phi double [ %V1, %.preheader.0 ], [ %V1_1, %.preheader.2 ], [ %V1_2, %.preheader.3 ], [ %V1_3, %.preheader.4 ], [ %V1_4, %.preheader.5 ], [ %V1_5, %.preheader.6 ], [ %V1_6, %.preheader.7 ], [ %V1_7, %.preheader.8 ], [ %V1_8, %.preheader.9 ], [ %V1_9, %.preheader.10 ] ; [#uses=1 type=double]
  %tmp_23 = call double @llvm.log.f64(double %gaussrand_state_S_0_lcssa), !dbg !116 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp_24 = fmul double %tmp_23, -2.000000e+00, !dbg !116 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp_25 = fdiv double %tmp_24, %gaussrand_state_S_0_lcssa, !dbg !116 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp_26 = call double @llvm.sqrt.f64(double %tmp_25), !dbg !116 ; [#uses=1 type=double] [debug line = 81:29]
  %X_1 = fmul double %gaussrand_state_V1_0_lcssa, %tmp_26, !dbg !116 ; [#uses=1 type=double] [debug line = 81:29]
  call void @llvm.dbg.value(metadata !{double %X_1}, i64 0, metadata !117), !dbg !116 ; [debug line = 81:29] [debug variable = X]
  br label %2, !dbg !118                          ; [debug line = 82:5]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_S_read}, i64 0, metadata !119), !dbg !122 ; [debug line = 86:42] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state_V2_read}, i64 0, metadata !123), !dbg !124 ; [debug line = 87:44] [debug variable = V2]
  %tmp_s = call double @llvm.log.f64(double %gaussrand_state_S_read_1), !dbg !125 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp_20 = fmul double %tmp_s, -2.000000e+00, !dbg !125 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp_21 = fdiv double %tmp_20, %gaussrand_state_S_read_1, !dbg !125 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp_22 = call double @llvm.sqrt.f64(double %tmp_21), !dbg !125 ; [#uses=1 type=double] [debug line = 89:29]
  %X = fmul double %tmp_22, %gaussrand_state_V2_read_1, !dbg !125 ; [#uses=1 type=double] [debug line = 89:29]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !117), !dbg !125 ; [debug line = 89:29] [debug variable = X]
  br label %2

; <label>:2                                       ; preds = %1, %.loopexit
  %X2 = phi double [ %X_1, %.loopexit ], [ %X, %1 ] ; [#uses=1 type=double]
  ret double %X2
}

; [#uses=0]
define double @black_scholes(double %S, double %E, double %A, double %B, double %rT, double %gaussrand_state_V1, double %gaussrand_state_V2, double %gaussrand_state_S, i32 %gaussrand_state_phase) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(double %S), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(double %E), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(double %A), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap(double %B), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(double %rT), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_V1), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_V2), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state_S), !map !156
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %gaussrand_state_phase), !map !160
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !164
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  %gaussrand_state_phase_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %gaussrand_state_phase) ; [#uses=1 type=i32]
  %gaussrand_state_S_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_S) ; [#uses=1 type=double]
  %gaussrand_state_V2_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussrand_state_V2) ; [#uses=1 type=double]
  %rT_read = call double @_ssdm_op_Read.ap_auto.double(double %rT) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %rT_read}, i64 0, metadata !170), !dbg !182 ; [debug line = 54:22] [debug variable = rT]
  call void @llvm.dbg.value(metadata !{double %rT_read}, i64 0, metadata !183), !dbg !189 ; [debug line = 33:23@67:10] [debug variable = a]
  %B_read = call double @_ssdm_op_Read.ap_auto.double(double %B) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %B_read}, i64 0, metadata !190), !dbg !191 ; [debug line = 53:22] [debug variable = B]
  call void @llvm.dbg.value(metadata !{double %B_read}, i64 0, metadata !192), !dbg !195 ; [debug line = 27:23@63:8] [debug variable = a]
  %A_read = call double @_ssdm_op_Read.ap_auto.double(double %A) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %A_read}, i64 0, metadata !196), !dbg !197 ; [debug line = 52:22] [debug variable = A]
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %E_read}, i64 0, metadata !198), !dbg !199 ; [debug line = 51:22] [debug variable = E]
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !200), !dbg !201 ; [debug line = 50:22] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !202), !dbg !205 ; [debug line = 30:23@65:10] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !200), !dbg !201 ; [debug line = 50:22] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !198), !dbg !199 ; [debug line = 51:22] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %A}, i64 0, metadata !196), !dbg !197 ; [debug line = 52:22] [debug variable = A]
  call void @llvm.dbg.value(metadata !{double %B}, i64 0, metadata !190), !dbg !191 ; [debug line = 53:22] [debug variable = B]
  call void @llvm.dbg.value(metadata !{double %rT}, i64 0, metadata !170), !dbg !182 ; [debug line = 54:22] [debug variable = rT]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind, !dbg !206 ; [debug line = 58:1]
  %rand_number = call fastcc double @black_scholes_gaussrand2(double %gaussrand_state_V2_read, double %gaussrand_state_S_read, i32 %gaussrand_state_phase_read), !dbg !207 ; [#uses=1 type=double] [debug line = 60:24]
  call void @llvm.dbg.value(metadata !{double %rand_number}, i64 0, metadata !208), !dbg !207 ; [debug line = 60:24] [debug variable = rand_number]
  call void @llvm.dbg.value(metadata !{double %B}, i64 0, metadata !192), !dbg !195 ; [debug line = 27:23@63:8] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %rand_number}, i64 0, metadata !209), !dbg !210 ; [debug line = 27:33@63:8] [debug variable = b]
  %tmp = fmul double %rand_number, %B_read, !dbg !211 ; [#uses=1 type=double] [debug line = 28:3@63:8]
  call void @llvm.dbg.value(metadata !{double %tmp}, i64 0, metadata !213), !dbg !194 ; [debug line = 63:8] [debug variable = tmp]
  %a_assign = fadd double %tmp, %A_read, !dbg !214 ; [#uses=1 type=double] [debug line = 64:10]
  call void @llvm.dbg.value(metadata !{double %a_assign}, i64 0, metadata !215) nounwind, !dbg !219 ; [debug line = 40:21@64:10] [debug variable = a]
  %tmp2 = call double @llvm.exp.f64(double %a_assign) nounwind, !dbg !220 ; [#uses=1 type=double] [debug line = 41:10@64:10]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !222), !dbg !214 ; [debug line = 64:10] [debug variable = tmp2]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !202), !dbg !205 ; [debug line = 30:23@65:10] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !223), !dbg !224 ; [debug line = 30:33@65:10] [debug variable = b]
  %tmp3 = fmul double %tmp2, %S_read, !dbg !225   ; [#uses=1 type=double] [debug line = 31:3@65:10]
  call void @llvm.dbg.value(metadata !{double %tmp3}, i64 0, metadata !227), !dbg !204 ; [debug line = 65:10] [debug variable = tmp3]
  %tmp_27 = fsub double %tmp3, %E_read, !dbg !228 ; [#uses=2 type=double] [debug line = 66:3]
  %tmp_28 = fcmp olt double %tmp_27, 0.000000e+00, !dbg !228 ; [#uses=1 type=i1] [debug line = 66:3]
  %tmp4 = select i1 %tmp_28, double 0.000000e+00, double %tmp_27, !dbg !228 ; [#uses=1 type=double] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{double %tmp4}, i64 0, metadata !229), !dbg !228 ; [debug line = 66:3] [debug variable = tmp4]
  call void @llvm.dbg.value(metadata !{double %rT}, i64 0, metadata !183), !dbg !189 ; [debug line = 33:23@67:10] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %tmp4}, i64 0, metadata !230), !dbg !231 ; [debug line = 33:33@67:10] [debug variable = b]
  %tmp5 = fmul double %tmp4, %rT_read, !dbg !232  ; [#uses=1 type=double] [debug line = 34:3@67:10]
  call void @llvm.dbg.value(metadata !{double %tmp5}, i64 0, metadata !234), !dbg !187 ; [debug line = 67:10] [debug variable = tmp5]
  ret double %tmp5, !dbg !235                     ; [debug line = 69:3]
}

; [#uses=49]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=10]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.log.f64(double) nounwind readonly

; [#uses=1]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=10]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=10]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i3.i1.i6.i3.i2.i17(i3, i1, i6, i3, i2, i17) nounwind readnone {
entry:
  %empty = zext i2 %4 to i19                      ; [#uses=1 type=i19]
  %empty_102 = zext i17 %5 to i19                 ; [#uses=2 type=i19]
  %empty_103 = trunc i19 %empty to i2             ; [#uses=1 type=i2]
  %empty_104 = call i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19 %empty_102, i32 17, i32 18) ; [#uses=1 type=i2]
  %empty_105 = or i2 %empty_103, %empty_104       ; [#uses=1 type=i2]
  %empty_106 = call i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19 %empty_102, i2 %empty_105, i32 17, i32 18) ; [#uses=1 type=i19]
  %empty_107 = zext i3 %3 to i22                  ; [#uses=1 type=i22]
  %empty_108 = zext i19 %empty_106 to i22         ; [#uses=2 type=i22]
  %empty_109 = trunc i22 %empty_107 to i3         ; [#uses=1 type=i3]
  %empty_110 = call i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22 %empty_108, i32 19, i32 21) ; [#uses=1 type=i3]
  %empty_111 = or i3 %empty_109, %empty_110       ; [#uses=1 type=i3]
  %empty_112 = call i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22 %empty_108, i3 %empty_111, i32 19, i32 21) ; [#uses=1 type=i22]
  %empty_113 = zext i6 %2 to i28                  ; [#uses=1 type=i28]
  %empty_114 = zext i22 %empty_112 to i28         ; [#uses=2 type=i28]
  %empty_115 = trunc i28 %empty_113 to i6         ; [#uses=1 type=i6]
  %empty_116 = call i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28 %empty_114, i32 22, i32 27) ; [#uses=1 type=i6]
  %empty_117 = or i6 %empty_115, %empty_116       ; [#uses=1 type=i6]
  %empty_118 = call i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28 %empty_114, i6 %empty_117, i32 22, i32 27) ; [#uses=1 type=i28]
  %empty_119 = zext i1 %1 to i29                  ; [#uses=1 type=i29]
  %empty_120 = zext i28 %empty_118 to i29         ; [#uses=2 type=i29]
  %empty_121 = trunc i29 %empty_119 to i1         ; [#uses=1 type=i1]
  %empty_122 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %empty_120, i32 28) ; [#uses=1 type=i1]
  %empty_123 = or i1 %empty_121, %empty_122       ; [#uses=1 type=i1]
  %empty_124 = call i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29 %empty_120, i1 %empty_123, i32 28, i32 28) ; [#uses=1 type=i29]
  %empty_125 = zext i3 %0 to i32                  ; [#uses=1 type=i32]
  %empty_126 = zext i29 %empty_124 to i32         ; [#uses=2 type=i32]
  %empty_127 = trunc i32 %empty_125 to i3         ; [#uses=1 type=i3]
  %empty_128 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %empty_126, i32 29, i32 31) ; [#uses=1 type=i3]
  %empty_129 = or i3 %empty_127, %empty_128       ; [#uses=1 type=i3]
  %empty_130 = call i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32 %empty_126, i3 %empty_129, i32 29, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_130
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i2.i3.i1.i1.i2.i1.i1.i2.i3.i1.i1.i1.i1.i2.i1.i1.i7(i1, i2, i3, i1, i1, i2, i1, i1, i2, i3, i1, i1, i1, i1, i2, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %16 to i8                      ; [#uses=1 type=i8]
  %empty_131 = zext i7 %17 to i8                  ; [#uses=2 type=i8]
  %empty_132 = trunc i8 %empty to i1              ; [#uses=1 type=i1]
  %empty_133 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_131, i32 7) ; [#uses=1 type=i1]
  %empty_134 = or i1 %empty_132, %empty_133       ; [#uses=1 type=i1]
  %empty_135 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_131, i1 %empty_134, i32 7, i32 7) ; [#uses=1 type=i8]
  %empty_136 = zext i1 %15 to i9                  ; [#uses=1 type=i9]
  %empty_137 = zext i8 %empty_135 to i9           ; [#uses=2 type=i9]
  %empty_138 = trunc i9 %empty_136 to i1          ; [#uses=1 type=i1]
  %empty_139 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_137, i32 8) ; [#uses=1 type=i1]
  %empty_140 = or i1 %empty_138, %empty_139       ; [#uses=1 type=i1]
  %empty_141 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_137, i1 %empty_140, i32 8, i32 8) ; [#uses=1 type=i9]
  %empty_142 = zext i2 %14 to i11                 ; [#uses=1 type=i11]
  %empty_143 = zext i9 %empty_141 to i11          ; [#uses=2 type=i11]
  %empty_144 = trunc i11 %empty_142 to i2         ; [#uses=1 type=i2]
  %empty_145 = call i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11 %empty_143, i32 9, i32 10) ; [#uses=1 type=i2]
  %empty_146 = or i2 %empty_144, %empty_145       ; [#uses=1 type=i2]
  %empty_147 = call i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11 %empty_143, i2 %empty_146, i32 9, i32 10) ; [#uses=1 type=i11]
  %empty_148 = zext i1 %13 to i12                 ; [#uses=1 type=i12]
  %empty_149 = zext i11 %empty_147 to i12         ; [#uses=2 type=i12]
  %empty_150 = trunc i12 %empty_148 to i1         ; [#uses=1 type=i1]
  %empty_151 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %empty_149, i32 11) ; [#uses=1 type=i1]
  %empty_152 = or i1 %empty_150, %empty_151       ; [#uses=1 type=i1]
  %empty_153 = call i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12 %empty_149, i1 %empty_152, i32 11, i32 11) ; [#uses=1 type=i12]
  %empty_154 = zext i1 %12 to i13                 ; [#uses=1 type=i13]
  %empty_155 = zext i12 %empty_153 to i13         ; [#uses=2 type=i13]
  %empty_156 = trunc i13 %empty_154 to i1         ; [#uses=1 type=i1]
  %empty_157 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_155, i32 12) ; [#uses=1 type=i1]
  %empty_158 = or i1 %empty_156, %empty_157       ; [#uses=1 type=i1]
  %empty_159 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_155, i1 %empty_158, i32 12, i32 12) ; [#uses=1 type=i13]
  %empty_160 = zext i1 %11 to i14                 ; [#uses=1 type=i14]
  %empty_161 = zext i13 %empty_159 to i14         ; [#uses=2 type=i14]
  %empty_162 = trunc i14 %empty_160 to i1         ; [#uses=1 type=i1]
  %empty_163 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_161, i32 13) ; [#uses=1 type=i1]
  %empty_164 = or i1 %empty_162, %empty_163       ; [#uses=1 type=i1]
  %empty_165 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_161, i1 %empty_164, i32 13, i32 13) ; [#uses=1 type=i14]
  %empty_166 = zext i1 %10 to i15                 ; [#uses=1 type=i15]
  %empty_167 = zext i14 %empty_165 to i15         ; [#uses=2 type=i15]
  %empty_168 = trunc i15 %empty_166 to i1         ; [#uses=1 type=i1]
  %empty_169 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %empty_167, i32 14) ; [#uses=1 type=i1]
  %empty_170 = or i1 %empty_168, %empty_169       ; [#uses=1 type=i1]
  %empty_171 = call i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15 %empty_167, i1 %empty_170, i32 14, i32 14) ; [#uses=1 type=i15]
  %empty_172 = zext i3 %9 to i18                  ; [#uses=1 type=i18]
  %empty_173 = zext i15 %empty_171 to i18         ; [#uses=2 type=i18]
  %empty_174 = trunc i18 %empty_172 to i3         ; [#uses=1 type=i3]
  %empty_175 = call i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18 %empty_173, i32 15, i32 17) ; [#uses=1 type=i3]
  %empty_176 = or i3 %empty_174, %empty_175       ; [#uses=1 type=i3]
  %empty_177 = call i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18 %empty_173, i3 %empty_176, i32 15, i32 17) ; [#uses=1 type=i18]
  %empty_178 = zext i2 %8 to i20                  ; [#uses=1 type=i20]
  %empty_179 = zext i18 %empty_177 to i20         ; [#uses=2 type=i20]
  %empty_180 = trunc i20 %empty_178 to i2         ; [#uses=1 type=i2]
  %empty_181 = call i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20 %empty_179, i32 18, i32 19) ; [#uses=1 type=i2]
  %empty_182 = or i2 %empty_180, %empty_181       ; [#uses=1 type=i2]
  %empty_183 = call i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20 %empty_179, i2 %empty_182, i32 18, i32 19) ; [#uses=1 type=i20]
  %empty_184 = zext i1 %7 to i21                  ; [#uses=1 type=i21]
  %empty_185 = zext i20 %empty_183 to i21         ; [#uses=2 type=i21]
  %empty_186 = trunc i21 %empty_184 to i1         ; [#uses=1 type=i1]
  %empty_187 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %empty_185, i32 20) ; [#uses=1 type=i1]
  %empty_188 = or i1 %empty_186, %empty_187       ; [#uses=1 type=i1]
  %empty_189 = call i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21 %empty_185, i1 %empty_188, i32 20, i32 20) ; [#uses=1 type=i21]
  %empty_190 = zext i1 %6 to i22                  ; [#uses=1 type=i22]
  %empty_191 = zext i21 %empty_189 to i22         ; [#uses=2 type=i22]
  %empty_192 = trunc i22 %empty_190 to i1         ; [#uses=1 type=i1]
  %empty_193 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %empty_191, i32 21) ; [#uses=1 type=i1]
  %empty_194 = or i1 %empty_192, %empty_193       ; [#uses=1 type=i1]
  %empty_195 = call i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22 %empty_191, i1 %empty_194, i32 21, i32 21) ; [#uses=1 type=i22]
  %empty_196 = zext i2 %5 to i24                  ; [#uses=1 type=i24]
  %empty_197 = zext i22 %empty_195 to i24         ; [#uses=2 type=i24]
  %empty_198 = trunc i24 %empty_196 to i2         ; [#uses=1 type=i2]
  %empty_199 = call i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24 %empty_197, i32 22, i32 23) ; [#uses=1 type=i2]
  %empty_200 = or i2 %empty_198, %empty_199       ; [#uses=1 type=i2]
  %empty_201 = call i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24 %empty_197, i2 %empty_200, i32 22, i32 23) ; [#uses=1 type=i24]
  %empty_202 = zext i1 %4 to i25                  ; [#uses=1 type=i25]
  %empty_203 = zext i24 %empty_201 to i25         ; [#uses=2 type=i25]
  %empty_204 = trunc i25 %empty_202 to i1         ; [#uses=1 type=i1]
  %empty_205 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %empty_203, i32 24) ; [#uses=1 type=i1]
  %empty_206 = or i1 %empty_204, %empty_205       ; [#uses=1 type=i1]
  %empty_207 = call i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25 %empty_203, i1 %empty_206, i32 24, i32 24) ; [#uses=1 type=i25]
  %empty_208 = zext i1 %3 to i26                  ; [#uses=1 type=i26]
  %empty_209 = zext i25 %empty_207 to i26         ; [#uses=2 type=i26]
  %empty_210 = trunc i26 %empty_208 to i1         ; [#uses=1 type=i1]
  %empty_211 = call i1 @_ssdm_op_BitSelect.i1.i26.i32(i26 %empty_209, i32 25) ; [#uses=1 type=i1]
  %empty_212 = or i1 %empty_210, %empty_211       ; [#uses=1 type=i1]
  %empty_213 = call i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26 %empty_209, i1 %empty_212, i32 25, i32 25) ; [#uses=1 type=i26]
  %empty_214 = zext i3 %2 to i29                  ; [#uses=1 type=i29]
  %empty_215 = zext i26 %empty_213 to i29         ; [#uses=2 type=i29]
  %empty_216 = trunc i29 %empty_214 to i3         ; [#uses=1 type=i3]
  %empty_217 = call i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29 %empty_215, i32 26, i32 28) ; [#uses=1 type=i3]
  %empty_218 = or i3 %empty_216, %empty_217       ; [#uses=1 type=i3]
  %empty_219 = call i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29 %empty_215, i3 %empty_218, i32 26, i32 28) ; [#uses=1 type=i29]
  %empty_220 = zext i2 %1 to i31                  ; [#uses=1 type=i31]
  %empty_221 = zext i29 %empty_219 to i31         ; [#uses=2 type=i31]
  %empty_222 = trunc i31 %empty_220 to i2         ; [#uses=1 type=i2]
  %empty_223 = call i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31 %empty_221, i32 29, i32 30) ; [#uses=1 type=i2]
  %empty_224 = or i2 %empty_222, %empty_223       ; [#uses=1 type=i2]
  %empty_225 = call i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31 %empty_221, i2 %empty_224, i32 29, i32 30) ; [#uses=1 type=i31]
  %empty_226 = zext i1 %0 to i32                  ; [#uses=1 type=i32]
  %empty_227 = zext i31 %empty_225 to i32         ; [#uses=2 type=i32]
  %empty_228 = trunc i32 %empty_226 to i1         ; [#uses=1 type=i1]
  %empty_229 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %empty_227, i32 31) ; [#uses=1 type=i1]
  %empty_230 = or i1 %empty_228, %empty_229       ; [#uses=1 type=i1]
  %empty_231 = call i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32 %empty_227, i1 %empty_230, i32 31, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_231
}

; [#uses=1]
define weak i46 @_ssdm_op_PartSelect.i46.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_232 = trunc i64 %empty to i46            ; [#uses=1 type=i46]
  ret i46 %empty_232
}

; [#uses=1]
define weak i53 @_ssdm_op_PartSelect.i53.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_233 = trunc i64 %empty to i53            ; [#uses=1 type=i53]
  ret i53 %empty_233
}

; [#uses=2]
define weak i3 @_ssdm_op_PartSelect.i3.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_234 = trunc i64 %empty to i3             ; [#uses=1 type=i3]
  ret i3 %empty_234
}

; [#uses=1]
define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31                      ; [#uses=1 type=i31]
  %empty_235 = zext i30 %1 to i31                 ; [#uses=2 type=i31]
  %empty_236 = trunc i31 %empty to i1             ; [#uses=1 type=i1]
  %empty_237 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_235, i32 30) ; [#uses=1 type=i1]
  %empty_238 = or i1 %empty_236, %empty_237       ; [#uses=1 type=i1]
  %empty_239 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_235, i1 %empty_238, i32 30, i32 30) ; [#uses=1 type=i31]
  ret i31 %empty_239
}

; [#uses=3]
define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_240 = trunc i64 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_240
}

; [#uses=1]
define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_241 = trunc i64 %empty to i6             ; [#uses=1 type=i6]
  ret i6 %empty_241
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_242 = trunc i64 %empty to i30            ; [#uses=1 type=i30]
  ret i30 %empty_242
}

; [#uses=20]
define weak i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_243 = trunc i64 %empty to i58            ; [#uses=1 type=i58]
  ret i58 %empty_243
}

; [#uses=20]
define weak i59 @_ssdm_op_PartSelect.i59.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_244 = trunc i64 %empty to i59            ; [#uses=1 type=i59]
  ret i59 %empty_244
}

; [#uses=9]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=6]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_245 = shl i64 1, %empty                  ; [#uses=1 type=i64]
  %empty_246 = and i64 %0, %empty_245             ; [#uses=1 type=i64]
  %empty_247 = icmp ne i64 %empty_246, 0          ; [#uses=1 type=i1]
  ret i1 %empty_247
}

; [#uses=8]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_248 = trunc i19 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_248
}

; [#uses=1]
define weak i19 @_ssdm_op_PartSet.i19.i19.i2.i32.i32(i19, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.set.i19.i2(i19 %0, i2 %1, i32 %2, i32 %3) ; [#uses=1 type=i19]
  ret i19 %empty
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; [#uses=1 type=i22]
  %empty_249 = trunc i22 %empty to i3             ; [#uses=1 type=i3]
  ret i3 %empty_249
}

; [#uses=1]
define weak i22 @_ssdm_op_PartSet.i22.i22.i3.i32.i32(i22, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i3(i22 %0, i3 %1, i32 %2, i32 %3) ; [#uses=1 type=i22]
  ret i22 %empty
}

; [#uses=1]
define weak i6 @_ssdm_op_PartSelect.i6.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2) ; [#uses=1 type=i28]
  %empty_250 = trunc i28 %empty to i6             ; [#uses=1 type=i6]
  ret i6 %empty_250
}

; [#uses=1]
define weak i28 @_ssdm_op_PartSet.i28.i28.i6.i32.i32(i28, i6, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.set.i28.i6(i28 %0, i6 %1, i32 %2, i32 %3) ; [#uses=1 type=i28]
  ret i28 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i29.i32.i32(i29, i32, i32) nounwind readnone

; [#uses=1]
define weak i29 @_ssdm_op_PartSet.i29.i29.i1.i32.i32(i29, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i1(i29 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i29]
  ret i29 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i29.i32(i29, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i29                    ; [#uses=1 type=i29]
  %empty_251 = shl i29 1, %empty                  ; [#uses=1 type=i29]
  %empty_252 = and i29 %0, %empty_251             ; [#uses=1 type=i29]
  %empty_253 = icmp ne i29 %empty_252, 0          ; [#uses=1 type=i1]
  ret i1 %empty_253
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_254 = trunc i32 %empty to i3             ; [#uses=1 type=i3]
  ret i3 %empty_254
}

; [#uses=1]
define weak i32 @_ssdm_op_PartSet.i32.i32.i3.i32.i32(i32, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i3(i32 %0, i3 %1, i32 %2, i32 %3) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i1(i8 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_255 = shl i8 1, %empty                   ; [#uses=1 type=i8]
  %empty_256 = and i8 %0, %empty_255              ; [#uses=1 type=i8]
  %empty_257 = icmp ne i8 %empty_256, 0           ; [#uses=1 type=i1]
  ret i1 %empty_257
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=1]
define weak i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i1(i9 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i9]
  ret i9 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_258 = shl i9 1, %empty                   ; [#uses=1 type=i9]
  %empty_259 = and i9 %0, %empty_258              ; [#uses=1 type=i9]
  %empty_260 = icmp ne i9 %empty_259, 0           ; [#uses=1 type=i1]
  ret i1 %empty_260
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_261 = trunc i11 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_261
}

; [#uses=1]
define weak i11 @_ssdm_op_PartSet.i11.i11.i2.i32.i32(i11, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i2(i11 %0, i2 %1, i32 %2, i32 %3) ; [#uses=1 type=i11]
  ret i11 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i12.i32.i32(i12, i32, i32) nounwind readnone

; [#uses=1]
define weak i12 @_ssdm_op_PartSet.i12.i12.i1.i32.i32(i12, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.set.i12.i1(i12 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i12]
  ret i12 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12                    ; [#uses=1 type=i12]
  %empty_262 = shl i12 1, %empty                  ; [#uses=1 type=i12]
  %empty_263 = and i12 %0, %empty_262             ; [#uses=1 type=i12]
  %empty_264 = icmp ne i12 %empty_263, 0          ; [#uses=1 type=i1]
  ret i1 %empty_264
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i13.i32.i32(i13, i32, i32) nounwind readnone

; [#uses=1]
define weak i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i1(i13 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i13]
  ret i13 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13                    ; [#uses=1 type=i13]
  %empty_265 = shl i13 1, %empty                  ; [#uses=1 type=i13]
  %empty_266 = and i13 %0, %empty_265             ; [#uses=1 type=i13]
  %empty_267 = icmp ne i13 %empty_266, 0          ; [#uses=1 type=i1]
  ret i1 %empty_267
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i14.i32.i32(i14, i32, i32) nounwind readnone

; [#uses=1]
define weak i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.set.i14.i1(i14 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i14]
  ret i14 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i14.i32(i14, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i14                    ; [#uses=1 type=i14]
  %empty_268 = shl i14 1, %empty                  ; [#uses=1 type=i14]
  %empty_269 = and i14 %0, %empty_268             ; [#uses=1 type=i14]
  %empty_270 = icmp ne i14 %empty_269, 0          ; [#uses=1 type=i1]
  ret i1 %empty_270
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i15.i32.i32(i15, i32, i32) nounwind readnone

; [#uses=1]
define weak i15 @_ssdm_op_PartSet.i15.i15.i1.i32.i32(i15, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.set.i15.i1(i15 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i15]
  ret i15 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15                    ; [#uses=1 type=i15]
  %empty_271 = shl i15 1, %empty                  ; [#uses=1 type=i15]
  %empty_272 = and i15 %0, %empty_271             ; [#uses=1 type=i15]
  %empty_273 = icmp ne i15 %empty_272, 0          ; [#uses=1 type=i1]
  ret i1 %empty_273
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_274 = trunc i18 %empty to i3             ; [#uses=1 type=i3]
  ret i3 %empty_274
}

; [#uses=1]
define weak i18 @_ssdm_op_PartSet.i18.i18.i3.i32.i32(i18, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i3(i18 %0, i3 %1, i32 %2, i32 %3) ; [#uses=1 type=i18]
  ret i18 %empty
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2) ; [#uses=1 type=i20]
  %empty_275 = trunc i20 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_275
}

; [#uses=1]
define weak i20 @_ssdm_op_PartSet.i20.i20.i2.i32.i32(i20, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.set.i20.i2(i20 %0, i2 %1, i32 %2, i32 %3) ; [#uses=1 type=i20]
  ret i20 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i21.i32.i32(i21, i32, i32) nounwind readnone

; [#uses=1]
define weak i21 @_ssdm_op_PartSet.i21.i21.i1.i32.i32(i21, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.set.i21.i1(i21 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i21]
  ret i21 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i21                    ; [#uses=1 type=i21]
  %empty_276 = shl i21 1, %empty                  ; [#uses=1 type=i21]
  %empty_277 = and i21 %0, %empty_276             ; [#uses=1 type=i21]
  %empty_278 = icmp ne i21 %empty_277, 0          ; [#uses=1 type=i1]
  ret i1 %empty_278
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i22.i32.i32(i22, i32, i32) nounwind readnone

; [#uses=1]
define weak i22 @_ssdm_op_PartSet.i22.i22.i1.i32.i32(i22, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i1(i22 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i22]
  ret i22 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22                    ; [#uses=1 type=i22]
  %empty_279 = shl i22 1, %empty                  ; [#uses=1 type=i22]
  %empty_280 = and i22 %0, %empty_279             ; [#uses=1 type=i22]
  %empty_281 = icmp ne i22 %empty_280, 0          ; [#uses=1 type=i1]
  ret i1 %empty_281
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; [#uses=1 type=i24]
  %empty_282 = trunc i24 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_282
}

; [#uses=1]
define weak i24 @_ssdm_op_PartSet.i24.i24.i2.i32.i32(i24, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i2(i24 %0, i2 %1, i32 %2, i32 %3) ; [#uses=1 type=i24]
  ret i24 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i25.i32.i32(i25, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSet.i25.i25.i1.i32.i32(i25, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.set.i25.i1(i25 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i25]
  ret i25 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25                    ; [#uses=1 type=i25]
  %empty_283 = shl i25 1, %empty                  ; [#uses=1 type=i25]
  %empty_284 = and i25 %0, %empty_283             ; [#uses=1 type=i25]
  %empty_285 = icmp ne i25 %empty_284, 0          ; [#uses=1 type=i1]
  ret i1 %empty_285
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i26.i32.i32(i26, i32, i32) nounwind readnone

; [#uses=1]
define weak i26 @_ssdm_op_PartSet.i26.i26.i1.i32.i32(i26, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i26 @llvm.part.set.i26.i1(i26 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i26]
  ret i26 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i26.i32(i26, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i26                    ; [#uses=1 type=i26]
  %empty_286 = shl i26 1, %empty                  ; [#uses=1 type=i26]
  %empty_287 = and i26 %0, %empty_286             ; [#uses=1 type=i26]
  %empty_288 = icmp ne i26 %empty_287, 0          ; [#uses=1 type=i1]
  ret i1 %empty_288
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_289 = trunc i29 %empty to i3             ; [#uses=1 type=i3]
  ret i3 %empty_289
}

; [#uses=1]
define weak i29 @_ssdm_op_PartSet.i29.i29.i3.i32.i32(i29, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.set.i29.i3(i29 %0, i3 %1, i32 %2, i32 %3) ; [#uses=1 type=i29]
  ret i29 %empty
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2) ; [#uses=1 type=i31]
  %empty_290 = trunc i31 %empty to i2             ; [#uses=1 type=i2]
  ret i2 %empty_290
}

; [#uses=1]
define weak i31 @_ssdm_op_PartSet.i31.i31.i2.i32.i32(i31, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i2(i31 %0, i2 %1, i32 %2, i32 %3) ; [#uses=1 type=i31]
  ret i31 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_PartSet.i32.i32.i1.i32.i32(i32, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i1(i32 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_291 = and i32 %0, %empty                 ; [#uses=1 type=i32]
  %empty_292 = icmp ne i32 %empty_291, 0          ; [#uses=1 type=i1]
  ret i1 %empty_292
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=1]
define weak i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i1(i31 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i31]
  ret i31 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i31.i32(i31, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i31                    ; [#uses=1 type=i31]
  %empty_293 = shl i31 1, %empty                  ; [#uses=1 type=i31]
  %empty_294 = and i31 %0, %empty_293             ; [#uses=1 type=i31]
  %empty_295 = icmp ne i31 %empty_294, 0          ; [#uses=1 type=i1]
  ret i1 %empty_295
}

; [#uses=1]
declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

; [#uses=1]
declare i19 @llvm.part.set.i19.i2(i19, i2, i32, i32) nounwind readnone

; [#uses=1]
declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

; [#uses=1]
declare i22 @llvm.part.set.i22.i3(i22, i3, i32, i32) nounwind readnone

; [#uses=1]
declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

; [#uses=1]
declare i28 @llvm.part.set.i28.i6(i28, i6, i32, i32) nounwind readnone

; [#uses=1]
declare i29 @llvm.part.set.i29.i1(i29, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.set.i32.i3(i32, i3, i32, i32) nounwind readnone

; [#uses=1]
declare i8 @llvm.part.set.i8.i1(i8, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i9 @llvm.part.set.i9.i1(i9, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.set.i11.i2(i11, i2, i32, i32) nounwind readnone

; [#uses=1]
declare i12 @llvm.part.set.i12.i1(i12, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i13 @llvm.part.set.i13.i1(i13, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i14 @llvm.part.set.i14.i1(i14, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i15 @llvm.part.set.i15.i1(i15, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

; [#uses=1]
declare i18 @llvm.part.set.i18.i3(i18, i3, i32, i32) nounwind readnone

; [#uses=1]
declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

; [#uses=1]
declare i20 @llvm.part.set.i20.i2(i20, i2, i32, i32) nounwind readnone

; [#uses=1]
declare i21 @llvm.part.set.i21.i1(i21, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i22 @llvm.part.set.i22.i1(i22, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

; [#uses=1]
declare i24 @llvm.part.set.i24.i2(i24, i2, i32, i32) nounwind readnone

; [#uses=1]
declare i25 @llvm.part.set.i25.i1(i25, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i26 @llvm.part.set.i26.i1(i26, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=1]
declare i29 @llvm.part.set.i29.i3(i29, i3, i32, i32) nounwind readnone

; [#uses=1]
declare i31 @llvm.part.select.i31(i31, i32, i32) nounwind readnone

; [#uses=1]
declare i31 @llvm.part.set.i31.i2(i31, i2, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.set.i32.i1(i32, i1, i32, i32) nounwind readnone

; [#uses=1]
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
!17 = metadata !{i32 128, i32 1, metadata !18, null}
!18 = metadata !{i32 786443, metadata !19, i32 123, i32 1, metadata !20, i32 16} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !20, i32 122, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @black_scholes_rand_uint32, null, null, metadata !24, i32 123} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 134, i32 2, metadata !18, null}
!27 = metadata !{i32 135, i32 2, metadata !18, null}
!28 = metadata !{i32 136, i32 2, metadata !18, null}
!29 = metadata !{i32 786688, metadata !18, metadata !"mt_kk_new", metadata !20, i32 131, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 139, i32 2, metadata !18, null}
!31 = metadata !{i32 140, i32 2, metadata !18, null}
!32 = metadata !{i32 141, i32 2, metadata !18, null}
!33 = metadata !{i32 786688, metadata !18, metadata !"y", metadata !20, i32 131, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 144, i32 2, metadata !18, null}
!35 = metadata !{i32 145, i32 2, metadata !18, null}
!36 = metadata !{i32 146, i32 2, metadata !18, null}
!37 = metadata !{i32 147, i32 2, metadata !18, null}
!38 = metadata !{i32 148, i32 2, metadata !18, null}
!39 = metadata !{i32 151, i32 7, metadata !18, null}
!40 = metadata !{i32 786689, metadata !41, metadata !"a", metadata !20, i32 16777311, metadata !44, i32 0, metadata !39} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !20, i32 95, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 96} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{metadata !44, metadata !44}
!44 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 95, i32 37, metadata !41, metadata !39}
!46 = metadata !{i32 97, i32 2, metadata !47, metadata !39}
!47 = metadata !{i32 786443, metadata !41, i32 96, i32 1, metadata !20, i32 13} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 98, i32 3, metadata !47, metadata !39}
!49 = metadata !{i32 152, i32 10, metadata !18, null}
!50 = metadata !{i32 786689, metadata !51, metadata !"a", metadata !20, i32 16777319, metadata !44, i32 0, metadata !49} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !20, i32 103, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 104} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 103, i32 40, metadata !51, metadata !49}
!53 = metadata !{i32 105, i32 2, metadata !54, metadata !49}
!54 = metadata !{i32 786443, metadata !51, i32 104, i32 1, metadata !20, i32 14} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 106, i32 3, metadata !54, metadata !49}
!56 = metadata !{i32 153, i32 10, metadata !18, null}
!57 = metadata !{i32 786689, metadata !58, metadata !"a", metadata !20, i32 16777327, metadata !44, i32 0, metadata !56} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !20, i32 111, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 112} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 111, i32 40, metadata !58, metadata !56}
!60 = metadata !{i32 113, i32 2, metadata !61, metadata !56}
!61 = metadata !{i32 786443, metadata !58, i32 112, i32 1, metadata !20, i32 15} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 114, i32 3, metadata !61, metadata !56}
!63 = metadata !{i32 155, i32 2, metadata !18, null}
!64 = metadata !{i32 790533, metadata !65, metadata !"gaussrand_state.phase", null, i32 18, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!65 = metadata !{i32 786689, metadata !66, metadata !"gaussrand_state", metadata !67, i32 16777234, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !67, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !67, i32 18, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 19} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !67, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ]
!73 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !74, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!74 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79}
!76 = metadata !{i32 786445, metadata !73, metadata !"V1", metadata !74, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ]
!77 = metadata !{i32 786445, metadata !73, metadata !"V2", metadata !74, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ]
!78 = metadata !{i32 786445, metadata !73, metadata !"S", metadata !74, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ]
!79 = metadata !{i32 786445, metadata !73, metadata !"phase", metadata !74, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ]
!80 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !74, i32 17, i64 32, i64 64, i32 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!83 = metadata !{metadata !79}
!84 = metadata !{i32 18, i32 39, metadata !66, null}
!85 = metadata !{i32 790533, metadata !65, metadata !"gaussrand_state.S", null, i32 18, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!86 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !74, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!88 = metadata !{metadata !78}
!89 = metadata !{i32 790533, metadata !65, metadata !"gaussrand_state.V2", null, i32 18, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !74, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!92 = metadata !{metadata !77}
!93 = metadata !{i32 24, i32 1, metadata !94, null}
!94 = metadata !{i32 786443, metadata !66, i32 19, i32 1, metadata !67, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786688, metadata !94, metadata !"phase", metadata !67, i32 29, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 29, i32 43, metadata !94, null}
!98 = metadata !{i32 31, i32 3, metadata !94, null}
!99 = metadata !{i32 38, i32 33, metadata !100, null}
!100 = metadata !{i32 786443, metadata !101, i32 38, i32 32, metadata !67, i32 5} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !102, i32 38, i32 7, metadata !67, i32 4} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !94, i32 32, i32 5, metadata !67, i32 3} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 46, i32 14, metadata !104, null}
!104 = metadata !{i32 786443, metadata !100, i32 45, i32 24, metadata !67, i32 6} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 47, i32 11, metadata !104, null}
!106 = metadata !{i32 49, i32 72, metadata !104, null}
!107 = metadata !{i32 51, i32 14, metadata !104, null}
!108 = metadata !{i32 52, i32 11, metadata !104, null}
!109 = metadata !{i32 54, i32 72, metadata !104, null}
!110 = metadata !{i32 56, i32 11, metadata !104, null}
!111 = metadata !{i32 57, i32 11, metadata !104, null}
!112 = metadata !{i32 58, i32 11, metadata !104, null}
!113 = metadata !{i32 62, i32 7, metadata !100, null}
!114 = metadata !{i32 45, i32 2, metadata !100, null}
!115 = metadata !{i32 38, i32 12, metadata !101, null}
!116 = metadata !{i32 81, i32 29, metadata !102, null}
!117 = metadata !{i32 786688, metadata !94, metadata !"X", metadata !67, i32 26, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 82, i32 5, metadata !102, null}
!119 = metadata !{i32 786688, metadata !120, metadata !"S", metadata !67, i32 86, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786443, metadata !94, i32 84, i32 5, metadata !67, i32 8} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!122 = metadata !{i32 86, i32 42, metadata !120, null}
!123 = metadata !{i32 786688, metadata !120, metadata !"V2", metadata !67, i32 87, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 87, i32 44, metadata !120, null}
!125 = metadata !{i32 89, i32 29, metadata !120, null}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 63, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"S", metadata !130, metadata !"double"}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 0, i32 0}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 63, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"E", metadata !130, metadata !"double"}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 63, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"A", metadata !130, metadata !"double"}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 63, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"B", metadata !130, metadata !"double"}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 63, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"rT", metadata !130, metadata !"double"}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 63, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"gaussrand_state.V1", metadata !130, metadata !"double"}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 63, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"gaussrand_state.V2", metadata !130, metadata !"double"}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 63, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"gaussrand_state.S", metadata !130, metadata !"double"}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 31, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"gaussrand_state.phase", metadata !130, metadata !"int"}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 63, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"return", metadata !168, metadata !""}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 1, i32 0}
!170 = metadata !{i32 786689, metadata !171, metadata !"rT", metadata !172, i32 83886134, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 786478, i32 0, metadata !172, metadata !"black_scholes", metadata !"black_scholes", metadata !"", metadata !172, i32 49, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 57} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786473, metadata !"black_scholes.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !70, metadata !121, metadata !121, metadata !121, metadata !121, metadata !121, metadata !175}
!175 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !172, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ]
!176 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !74, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181}
!178 = metadata !{i32 786445, metadata !176, metadata !"V1", metadata !74, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ]
!179 = metadata !{i32 786445, metadata !176, metadata !"V2", metadata !74, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ]
!180 = metadata !{i32 786445, metadata !176, metadata !"S", metadata !74, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ]
!181 = metadata !{i32 786445, metadata !176, metadata !"phase", metadata !74, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ]
!182 = metadata !{i32 54, i32 22, metadata !171, null}
!183 = metadata !{i32 786689, metadata !184, metadata !"a", metadata !172, i32 16777249, metadata !70, i32 0, metadata !187} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 786478, i32 0, metadata !172, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !172, i32 33, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 33} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{metadata !70, metadata !70, metadata !70}
!187 = metadata !{i32 67, i32 10, metadata !188, null}
!188 = metadata !{i32 786443, metadata !171, i32 57, i32 1, metadata !172, i32 6} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 33, i32 23, metadata !184, metadata !187}
!190 = metadata !{i32 786689, metadata !171, metadata !"B", metadata !172, i32 67108917, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 53, i32 22, metadata !171, null}
!192 = metadata !{i32 786689, metadata !193, metadata !"a", metadata !172, i32 16777243, metadata !70, i32 0, metadata !194} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 786478, i32 0, metadata !172, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !172, i32 27, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 27} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 63, i32 8, metadata !188, null}
!195 = metadata !{i32 27, i32 23, metadata !193, metadata !194}
!196 = metadata !{i32 786689, metadata !171, metadata !"A", metadata !172, i32 50331700, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 52, i32 22, metadata !171, null}
!198 = metadata !{i32 786689, metadata !171, metadata !"E", metadata !172, i32 33554483, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 51, i32 22, metadata !171, null}
!200 = metadata !{i32 786689, metadata !171, metadata !"S", metadata !172, i32 16777266, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 50, i32 22, metadata !171, null}
!202 = metadata !{i32 786689, metadata !203, metadata !"a", metadata !172, i32 16777246, metadata !70, i32 0, metadata !204} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 786478, i32 0, metadata !172, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !172, i32 30, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 30} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 65, i32 10, metadata !188, null}
!205 = metadata !{i32 30, i32 23, metadata !203, metadata !204}
!206 = metadata !{i32 58, i32 1, metadata !188, null}
!207 = metadata !{i32 60, i32 24, metadata !188, null}
!208 = metadata !{i32 786688, metadata !188, metadata !"rand_number", metadata !172, i32 60, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 786689, metadata !193, metadata !"b", metadata !172, i32 33554459, metadata !70, i32 0, metadata !194} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 27, i32 33, metadata !193, metadata !194}
!211 = metadata !{i32 28, i32 3, metadata !212, metadata !194}
!212 = metadata !{i32 786443, metadata !193, i32 27, i32 35, metadata !172, i32 0} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786688, metadata !188, metadata !"tmp", metadata !172, i32 59, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 64, i32 10, metadata !188, null}
!215 = metadata !{i32 786689, metadata !216, metadata !"a", metadata !172, i32 16777256, metadata !70, i32 0, metadata !214} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 786478, i32 0, metadata !172, metadata !"expo1", metadata !"expo1", metadata !"", metadata !172, i32 40, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 40} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !70, metadata !70}
!219 = metadata !{i32 40, i32 21, metadata !216, metadata !214}
!220 = metadata !{i32 41, i32 10, metadata !221, metadata !214}
!221 = metadata !{i32 786443, metadata !216, i32 40, i32 23, metadata !172, i32 4} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786688, metadata !188, metadata !"tmp2", metadata !172, i32 59, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 786689, metadata !203, metadata !"b", metadata !172, i32 33554462, metadata !70, i32 0, metadata !204} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 30, i32 33, metadata !203, metadata !204}
!225 = metadata !{i32 31, i32 3, metadata !226, metadata !204}
!226 = metadata !{i32 786443, metadata !203, i32 30, i32 35, metadata !172, i32 1} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 786688, metadata !188, metadata !"tmp3", metadata !172, i32 59, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 66, i32 3, metadata !188, null}
!229 = metadata !{i32 786688, metadata !188, metadata !"tmp4", metadata !172, i32 59, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 786689, metadata !184, metadata !"b", metadata !172, i32 33554465, metadata !70, i32 0, metadata !187} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 33, i32 33, metadata !184, metadata !187}
!232 = metadata !{i32 34, i32 3, metadata !233, metadata !187}
!233 = metadata !{i32 786443, metadata !184, i32 33, i32 35, metadata !172, i32 2} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 786688, metadata !188, metadata !"tmp5", metadata !172, i32 59, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 69, i32 3, metadata !188, null}
