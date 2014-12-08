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
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [11 x i8] c"gaussrand2\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=4]
define internal fastcc void @gaussrand2_rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !17 ; [debug line = 129:1]
  %kk_load = load i16* @kk, align 2, !dbg !26     ; [#uses=3 type=i16] [debug line = 135:2]
  %tmp = zext i16 %kk_load to i64, !dbg !26       ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !26 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kk_load = load i64* %mt_kk_addr, align 8, !dbg !26 ; [#uses=1 type=i64] [debug line = 135:2]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31) ; [#uses=1 type=i1]
  %kk_p1_load = load i16* @kk_p1, align 2, !dbg !26 ; [#uses=3 type=i16] [debug line = 135:2]
  %tmp_5 = zext i16 %kk_p1_load to i64, !dbg !26  ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_5, !dbg !26 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8, !dbg !26 ; [#uses=2 type=i64] [debug line = 135:2]
  %tmp_3 = trunc i64 %mt_kkp1_load to i1, !dbg !26 ; [#uses=1 type=i1] [debug line = 135:2]
  %mag01_cast_cast = select i1 %tmp_3, i64 2567483615, i64 0, !dbg !27 ; [#uses=1 type=i64] [debug line = 136:2]
  %kk_pm_load = load i16* @kk_pm, align 2, !dbg !28 ; [#uses=3 type=i16] [debug line = 137:2]
  %tmp_9 = zext i16 %kk_pm_load to i64, !dbg !28  ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_9, !dbg !28 ; [#uses=2 type=i64*] [debug line = 137:2]
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8, !dbg !28 ; [#uses=1 type=i64] [debug line = 137:2]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30) ; [#uses=1 type=i30]
  %tmp_s = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_1, i30 %tmp_2), !dbg !28 ; [#uses=1 type=i31] [debug line = 137:2]
  %tmp_cast = zext i31 %tmp_s to i64, !dbg !28    ; [#uses=1 type=i64] [debug line = 137:2]
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load, !dbg !28 ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kk_new = xor i64 %tmp1, %tmp_cast, !dbg !28 ; [#uses=3 type=i64] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !29), !dbg !28 ; [debug line = 137:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8, !dbg !30 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8, !dbg !31 ; [debug line = 141:2]
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8, !dbg !32 ; [debug line = 142:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !33), !dbg !34 ; [debug line = 145:2] [debug variable = y]
  %a_assign = add i16 %kk_load, 1, !dbg !35       ; [#uses=2 type=i16] [debug line = 152:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign}, i64 0, metadata !36), !dbg !41 ; [debug line = 96:37@152:7] [debug variable = a]
  %tmp_i = icmp ugt i16 %a_assign, 623, !dbg !42  ; [#uses=1 type=i1] [debug line = 98:2@152:7]
  %tmp_1_i = add i16 %kk_load, -623, !dbg !44     ; [#uses=1 type=i16] [debug line = 99:3@152:7]
  %a_assign_1 = select i1 %tmp_i, i16 %tmp_1_i, i16 %a_assign, !dbg !42 ; [#uses=1 type=i16] [debug line = 98:2@152:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_1}, i64 0, metadata !36), !dbg !42 ; [debug line = 98:2@152:7] [debug variable = a]
  store i16 %a_assign_1, i16* @kk, align 2, !dbg !35 ; [debug line = 152:7]
  %a_assign_2 = add i16 %kk_p1_load, 1, !dbg !45  ; [#uses=2 type=i16] [debug line = 153:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_2}, i64 0, metadata !46), !dbg !48 ; [debug line = 104:40@153:10] [debug variable = a]
  %tmp_i1 = icmp ugt i16 %a_assign_2, 623, !dbg !49 ; [#uses=1 type=i1] [debug line = 106:2@153:10]
  %tmp_2_i = add i16 %kk_p1_load, -623, !dbg !51  ; [#uses=1 type=i16] [debug line = 107:3@153:10]
  %a_assign_3 = select i1 %tmp_i1, i16 %tmp_2_i, i16 %a_assign_2, !dbg !49 ; [#uses=1 type=i16] [debug line = 106:2@153:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_3}, i64 0, metadata !46), !dbg !49 ; [debug line = 106:2@153:10] [debug variable = a]
  store i16 %a_assign_3, i16* @kk_p1, align 2, !dbg !45 ; [debug line = 153:10]
  %a_assign_4 = add i16 %kk_pm_load, 1, !dbg !52  ; [#uses=2 type=i16] [debug line = 154:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_4}, i64 0, metadata !53), !dbg !55 ; [debug line = 112:40@154:10] [debug variable = a]
  %tmp_i3 = icmp ugt i16 %a_assign_4, 623, !dbg !56 ; [#uses=1 type=i1] [debug line = 114:2@154:10]
  %tmp_3_i = add i16 %kk_pm_load, -623, !dbg !58  ; [#uses=1 type=i16] [debug line = 115:3@154:10]
  %a_assign_5 = select i1 %tmp_i3, i16 %tmp_3_i, i16 %a_assign_4, !dbg !56 ; [#uses=1 type=i16] [debug line = 114:2@154:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_5}, i64 0, metadata !53), !dbg !56 ; [debug line = 114:2@154:10] [debug variable = a]
  store i16 %a_assign_5, i16* @kk_pm, align 2, !dbg !52 ; [debug line = 154:10]
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=0]
define double @gaussrand2(double* %gaussrand_state_V1, double* %gaussrand_state_V2, double* %gaussrand_state_S, i32* %gaussrand_state_phase) {
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_V1), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_V2), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state_S), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gaussrand_state_phase), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state_V1}, i64 0, metadata !81), !dbg !101 ; [debug line = 6:39] [debug variable = gaussrand_state.V1]
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state_V2}, i64 0, metadata !102), !dbg !101 ; [debug line = 6:39] [debug variable = gaussrand_state.V2]
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state_S}, i64 0, metadata !106), !dbg !101 ; [debug line = 6:39] [debug variable = gaussrand_state.S]
  call void @llvm.dbg.value(metadata !{i32* %gaussrand_state_phase}, i64 0, metadata !110), !dbg !101 ; [debug line = 6:39] [debug variable = gaussrand_state.phase]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !114 ; [debug line = 12:1]
  %phase = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %gaussrand_state_phase), !dbg !116 ; [#uses=2 type=i32] [debug line = 17:43]
  call void @llvm.dbg.value(metadata !{i32 %phase}, i64 0, metadata !117), !dbg !116 ; [debug line = 17:43] [debug variable = phase]
  %tmp = icmp eq i32 %phase, 0, !dbg !119         ; [#uses=1 type=i1] [debug line = 19:3]
  br i1 %tmp, label %.preheader.0, label %1, !dbg !119 ; [debug line = 19:3]

.preheader.0:                                     ; preds = %0
  call fastcc void @gaussrand2_rand_uint32() nounwind, !dbg !120 ; [debug line = 27:16]
  call fastcc void @gaussrand2_rand_uint32() nounwind, !dbg !125 ; [debug line = 28:16]
  call fastcc void @gaussrand2_rand_uint32() nounwind, !dbg !126 ; [debug line = 33:16]
  call fastcc void @gaussrand2_rand_uint32() nounwind, !dbg !127 ; [debug line = 34:16]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_S, double 5.000000e-01), !dbg !128 ; [debug line = 51:7]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_V1, double -5.000000e-01), !dbg !129 ; [debug line = 52:7]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %gaussrand_state_V2, double 5.000000e-01), !dbg !130 ; [debug line = 53:7]
  br label %2, !dbg !131                          ; [debug line = 56:5]

; <label>:1                                       ; preds = %0
  %S = call double @_ssdm_op_Read.ap_auto.doubleP(double* %gaussrand_state_S), !dbg !132 ; [#uses=2 type=double] [debug line = 60:42]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !134), !dbg !132 ; [debug line = 60:42] [debug variable = S]
  %V2 = call double @_ssdm_op_Read.ap_auto.doubleP(double* %gaussrand_state_V2), !dbg !136 ; [#uses=1 type=double] [debug line = 61:44]
  call void @llvm.dbg.value(metadata !{double %V2}, i64 0, metadata !137), !dbg !136 ; [debug line = 61:44] [debug variable = V2]
  %tmp_s = fptrunc double %S to float, !dbg !138  ; [#uses=1 type=float] [debug line = 63:30]
  %tmp_4 = call float @llvm.log.f32(float %tmp_s), !dbg !138 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp_5 = fpext float %tmp_4 to double, !dbg !138 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp_6 = fmul double %tmp_5, -2.000000e+00, !dbg !138 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp_7 = fdiv double %tmp_6, %S, !dbg !138      ; [#uses=1 type=double] [debug line = 63:30]
  %tmp_8 = fptrunc double %tmp_7 to float, !dbg !138 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp_9 = call float @llvm.sqrt.f32(float %tmp_8), !dbg !138 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp_1 = fpext float %tmp_9 to double, !dbg !138 ; [#uses=1 type=double] [debug line = 63:30]
  %X = fmul double %V2, %tmp_1, !dbg !138         ; [#uses=1 type=double] [debug line = 63:30]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !139), !dbg !138 ; [debug line = 63:30] [debug variable = X]
  br label %2

; <label>:2                                       ; preds = %1, %.preheader.0
  %X2 = phi double [ 0xBFEAA449A0000000, %.preheader.0 ], [ %X, %1 ] ; [#uses=1 type=double]
  %tmp_2 = sub nsw i32 1, %phase, !dbg !140       ; [#uses=1 type=i32] [debug line = 67:3]
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %gaussrand_state_phase, i32 %tmp_2), !dbg !140 ; [debug line = 67:3]
  ret double %X2, !dbg !141                       ; [debug line = 68:3]
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=1]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=1]
define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31                      ; [#uses=1 type=i31]
  %empty_7 = zext i30 %1 to i31                   ; [#uses=2 type=i31]
  %empty_8 = trunc i31 %empty to i1               ; [#uses=1 type=i1]
  %empty_9 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_7, i32 30) ; [#uses=1 type=i1]
  %empty_10 = or i1 %empty_8, %empty_9            ; [#uses=1 type=i1]
  %empty_11 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_7, i1 %empty_10, i32 30, i32 30) ; [#uses=1 type=i31]
  ret i31 %empty_11
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_12 = trunc i64 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_12
}

; [#uses=3]
define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

; [#uses=2]
define weak double @_ssdm_op_Read.ap_auto.doubleP(double*) {
entry:
  %empty = load double* %0                        ; [#uses=1 type=double]
  ret double %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_13 = shl i64 1, %empty                   ; [#uses=1 type=i64]
  %empty_14 = and i64 %0, %empty_13               ; [#uses=1 type=i64]
  %empty_15 = icmp ne i64 %empty_14, 0            ; [#uses=1 type=i1]
  ret i1 %empty_15
}

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

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
  %empty_16 = shl i31 1, %empty                   ; [#uses=1 type=i31]
  %empty_17 = and i31 %0, %empty_16               ; [#uses=1 type=i31]
  %empty_18 = icmp ne i31 %empty_17, 0            ; [#uses=1 type=i1]
  ret i1 %empty_18
}

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
!17 = metadata !{i32 129, i32 1, metadata !18, null}
!18 = metadata !{i32 786443, metadata !19, i32 124, i32 1, metadata !20, i32 16} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !20, i32 123, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !24, i32 124} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 135, i32 2, metadata !18, null}
!27 = metadata !{i32 136, i32 2, metadata !18, null}
!28 = metadata !{i32 137, i32 2, metadata !18, null}
!29 = metadata !{i32 786688, metadata !18, metadata !"mt_kk_new", metadata !20, i32 132, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 140, i32 2, metadata !18, null}
!31 = metadata !{i32 141, i32 2, metadata !18, null}
!32 = metadata !{i32 142, i32 2, metadata !18, null}
!33 = metadata !{i32 786688, metadata !18, metadata !"y", metadata !20, i32 132, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 145, i32 2, metadata !18, null}
!35 = metadata !{i32 152, i32 7, metadata !18, null}
!36 = metadata !{i32 786689, metadata !37, metadata !"a", metadata !20, i32 16777312, metadata !40, i32 0, metadata !35} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !20, i32 96, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 97} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{metadata !40, metadata !40}
!40 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 96, i32 37, metadata !37, metadata !35}
!42 = metadata !{i32 98, i32 2, metadata !43, metadata !35}
!43 = metadata !{i32 786443, metadata !37, i32 97, i32 1, metadata !20, i32 13} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 99, i32 3, metadata !43, metadata !35}
!45 = metadata !{i32 153, i32 10, metadata !18, null}
!46 = metadata !{i32 786689, metadata !47, metadata !"a", metadata !20, i32 16777320, metadata !40, i32 0, metadata !45} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !20, i32 104, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 105} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 104, i32 40, metadata !47, metadata !45}
!49 = metadata !{i32 106, i32 2, metadata !50, metadata !45}
!50 = metadata !{i32 786443, metadata !47, i32 105, i32 1, metadata !20, i32 14} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 107, i32 3, metadata !50, metadata !45}
!52 = metadata !{i32 154, i32 10, metadata !18, null}
!53 = metadata !{i32 786689, metadata !54, metadata !"a", metadata !20, i32 16777328, metadata !40, i32 0, metadata !52} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786478, i32 0, metadata !20, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !20, i32 112, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 113} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 112, i32 40, metadata !54, metadata !52}
!56 = metadata !{i32 114, i32 2, metadata !57, metadata !52}
!57 = metadata !{i32 786443, metadata !54, i32 113, i32 1, metadata !20, i32 15} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 115, i32 3, metadata !57, metadata !52}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 63, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"gaussrand_state.V1", metadata !5, metadata !"double"}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 63, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"gaussrand_state.V2", metadata !5, metadata !"double"}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 63, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"gaussrand_state.S", metadata !5, metadata !"double"}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"gaussrand_state.phase", metadata !5, metadata !"int"}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 63, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"return", metadata !79, metadata !""}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 1, i32 0}
!81 = metadata !{i32 790531, metadata !82, metadata !"gaussrand_state.V1", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!82 = metadata !{i32 786689, metadata !83, metadata !"gaussrand_state", metadata !84, i32 16777222, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786478, i32 0, metadata !84, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !84, i32 6, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 7} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{metadata !87, metadata !88}
!87 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !84, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ]
!90 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !91, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!91 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96}
!93 = metadata !{i32 786445, metadata !90, metadata !"V1", metadata !91, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ]
!94 = metadata !{i32 786445, metadata !90, metadata !"V2", metadata !91, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ]
!95 = metadata !{i32 786445, metadata !90, metadata !"S", metadata !91, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ]
!96 = metadata !{i32 786445, metadata !90, metadata !"phase", metadata !91, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !97} ; [ DW_TAG_member ]
!97 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !91, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!100 = metadata !{metadata !93}
!101 = metadata !{i32 6, i32 39, metadata !83, null}
!102 = metadata !{i32 790531, metadata !82, metadata !"gaussrand_state.V2", null, i32 6, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !91, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!105 = metadata !{metadata !94}
!106 = metadata !{i32 790531, metadata !82, metadata !"gaussrand_state.S", null, i32 6, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !91, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!109 = metadata !{metadata !95}
!110 = metadata !{i32 790531, metadata !82, metadata !"gaussrand_state.phase", null, i32 6, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !91, i32 17, i64 32, i64 64, i32 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!113 = metadata !{metadata !96}
!114 = metadata !{i32 12, i32 1, metadata !115, null}
!115 = metadata !{i32 786443, metadata !83, i32 7, i32 1, metadata !84, i32 0} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 17, i32 43, metadata !115, null}
!117 = metadata !{i32 786688, metadata !115, metadata !"phase", metadata !84, i32 17, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ]
!119 = metadata !{i32 19, i32 3, metadata !115, null}
!120 = metadata !{i32 27, i32 16, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 26, i32 31, metadata !84, i32 4} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 25, i32 32, metadata !84, i32 3} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 25, i32 7, metadata !84, i32 2} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !115, i32 20, i32 5, metadata !84, i32 1} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 28, i32 16, metadata !121, null}
!126 = metadata !{i32 33, i32 16, metadata !121, null}
!127 = metadata !{i32 34, i32 16, metadata !121, null}
!128 = metadata !{i32 51, i32 7, metadata !124, null}
!129 = metadata !{i32 52, i32 7, metadata !124, null}
!130 = metadata !{i32 53, i32 7, metadata !124, null}
!131 = metadata !{i32 56, i32 5, metadata !124, null}
!132 = metadata !{i32 60, i32 42, metadata !133, null}
!133 = metadata !{i32 786443, metadata !115, i32 58, i32 5, metadata !84, i32 6} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786688, metadata !133, metadata !"S", metadata !84, i32 60, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_const_type ]
!136 = metadata !{i32 61, i32 44, metadata !133, null}
!137 = metadata !{i32 786688, metadata !133, metadata !"V2", metadata !84, i32 61, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 63, i32 30, metadata !133, null}
!139 = metadata !{i32 786688, metadata !115, metadata !"X", metadata !84, i32 14, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 67, i32 3, metadata !115, null}
!141 = metadata !{i32 68, i32 3, metadata !115, null}
