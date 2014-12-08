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
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = internal constant [11 x i8] c"gaussrand2\00"

define internal fastcc void @gaussrand2_rand_uint32() nounwind uwtable {
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

define double @gaussrand2(double* %gaussrand_state_V1, double* %gaussrand_state_V2, double* %gaussrand_state_S, i32* %gaussrand_state_phase) {
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_V1), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_V2), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_S), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gaussrand_state_phase), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %phase = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %gaussrand_state_phase)
  %tmp = icmp eq i32 %phase, 0
  br i1 %tmp, label %.preheader.0, label %1

.preheader.0:                                     ; preds = %0
  call fastcc void @gaussrand2_rand_uint32() nounwind
  call fastcc void @gaussrand2_rand_uint32() nounwind
  call fastcc void @gaussrand2_rand_uint32() nounwind
  call fastcc void @gaussrand2_rand_uint32() nounwind
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_S, double 5.000000e-01)
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_V1, double -5.000000e-01)
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_V2, double 5.000000e-01)
  br label %2

; <label>:1                                       ; preds = %0
  %S = call double @_ssdm_op_Read.ap_auto.doubleP(double* %gaussrand_state_S)
  %V2 = call double @_ssdm_op_Read.ap_auto.doubleP(double* %gaussrand_state_V2)
  %tmp_s = fptrunc double %S to float
  %tmp_4 = call float @llvm.log.f32(float %tmp_s)
  %tmp_5 = fpext float %tmp_4 to double
  %tmp_6 = fmul double %tmp_5, -2.000000e+00
  %tmp_7 = fdiv double %tmp_6, %S
  %tmp_8 = fptrunc double %tmp_7 to float
  %tmp_9 = call float @llvm.sqrt.f32(float %tmp_8)
  %tmp_1 = fpext float %tmp_9 to double
  %X = fmul double %V2, %tmp_1
  br label %2

; <label>:2                                       ; preds = %1, %.preheader.0
  %X2 = phi double [ 0xBFEAA449A0000000, %.preheader.0 ], [ %X, %1 ]
  %tmp_2 = sub nsw i32 1, %phase
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %gaussrand_state_phase, i32 %tmp_2)
  ret double %X2
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

declare float @llvm.sqrt.f32(float) nounwind readonly

declare float @llvm.log.f32(float) nounwind readonly

define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31
  %empty_7 = zext i30 %1 to i31
  %empty_8 = trunc i31 %empty to i1
  %empty_9 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_7, i32 30)
  %empty_10 = or i1 %empty_8, %empty_9
  %empty_11 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_7, i1 %empty_10, i32 30, i32 30)
  ret i31 %empty_11
}

define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_12 = trunc i64 %empty to i30
  ret i30 %empty_12
}

define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

define weak double @_ssdm_op_Read.ap_auto.doubleP(double*) {
entry:
  %empty = load double* %0
  ret double %empty
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_13 = shl i64 1, %empty
  %empty_14 = and i64 %0, %empty_13
  %empty_15 = icmp ne i64 %empty_14, 0
  ret i1 %empty_15
}

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
  %empty_16 = shl i31 1, %empty
  %empty_17 = and i31 %0, %empty_16
  %empty_18 = icmp ne i31 %empty_17, 0
  ret i1 %empty_18
}

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
!20 = metadata !{metadata !"gaussrand_state.V1", metadata !5, metadata !"double"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 63, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"gaussrand_state.V2", metadata !5, metadata !"double"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 63, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"gaussrand_state.S", metadata !5, metadata !"double"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"gaussrand_state.phase", metadata !5, metadata !"int"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 63, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"return", metadata !37, metadata !""}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 1, i32 0}
