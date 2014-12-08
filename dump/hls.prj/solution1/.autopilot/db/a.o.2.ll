; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2                       ; [#uses=2 type=i16*]
@kk_p1 = global i16 1, align 2                    ; [#uses=2 type=i16*]
@kk_pm = global i16 397, align 2                  ; [#uses=2 type=i16*]
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [11 x i8] c"gaussrand2\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=4]
define internal fastcc void @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !34 ; [debug line = 129:1]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 1, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !41 ; [debug line = 130:1]
  %kk.load = load i16* @kk, align 2, !dbg !42     ; [#uses=3 type=i16] [debug line = 135:2]
  %tmp = zext i16 %kk.load to i64, !dbg !42       ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kk.addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !42 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kk.load = load i64* %mt_kk.addr, align 8, !dbg !42 ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kk.load.cast = trunc i64 %mt_kk.load to i32, !dbg !42 ; [#uses=1 type=i32] [debug line = 135:2]
  %tmp.4 = and i32 %mt_kk.load.cast, -2147483648, !dbg !42 ; [#uses=1 type=i32] [debug line = 135:2]
  %kk_p1.load = load i16* @kk_p1, align 2, !dbg !42 ; [#uses=3 type=i16] [debug line = 135:2]
  %tmp.5 = zext i16 %kk_p1.load to i64, !dbg !42  ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kkp1.addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp.5, !dbg !42 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kkp1.load = load i64* %mt_kkp1.addr, align 8, !dbg !42 ; [#uses=2 type=i64] [debug line = 135:2]
  %mt_kkp1.load.cast2 = trunc i64 %mt_kkp1.load to i1, !dbg !42 ; [#uses=1 type=i1] [debug line = 135:2]
  %mt_kkp1.load.cast = trunc i64 %mt_kkp1.load to i31, !dbg !42 ; [#uses=1 type=i31] [debug line = 135:2]
  %tmp.1 = call i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32 %tmp.4, i32 31, i32 31) ; [#uses=1 type=i1]
  %y = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %tmp.1, i31 %mt_kkp1.load.cast), !dbg !42 ; [#uses=1 type=i32] [debug line = 135:2]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !43), !dbg !42 ; [debug line = 135:2] [debug variable = y]
  %mag01.cast = select i1 %mt_kkp1.load.cast2, i64 2567483615, i64 0, !dbg !44 ; [#uses=1 type=i64] [debug line = 136:2]
  %kk_pm.load = load i16* @kk_pm, align 2, !dbg !45 ; [#uses=3 type=i16] [debug line = 137:2]
  %tmp.9 = zext i16 %kk_pm.load to i64, !dbg !45  ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kkpm.addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp.9, !dbg !45 ; [#uses=2 type=i64*] [debug line = 137:2]
  %mt_kkpm.load = load i64* %mt_kkpm.addr, align 8, !dbg !45 ; [#uses=1 type=i64] [debug line = 137:2]
  %tmp. = lshr i32 %y, 1, !dbg !45                ; [#uses=1 type=i32] [debug line = 137:2]
  %tmp..cast = zext i32 %tmp. to i64, !dbg !45    ; [#uses=1 type=i64] [debug line = 137:2]
  %tmp1 = xor i64 %mag01.cast, %mt_kkpm.load, !dbg !45 ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kk_new = xor i64 %tmp1, %tmp..cast, !dbg !45 ; [#uses=3 type=i64] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !46), !dbg !45 ; [debug line = 137:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk.addr, align 8, !dbg !47 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkp1.addr, align 8, !dbg !48 ; [debug line = 141:2]
  store i64 %mt_kk_new, i64* %mt_kkpm.addr, align 8, !dbg !49 ; [debug line = 142:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !43), !dbg !50 ; [debug line = 145:2] [debug variable = y]
  %a.assign = add i16 %kk.load, 1, !dbg !51       ; [#uses=2 type=i16] [debug line = 152:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !52), !dbg !56 ; [debug line = 96:37@152:7] [debug variable = a]
  %tmp.i = icmp ugt i16 %a.assign, 623, !dbg !57  ; [#uses=1 type=i1] [debug line = 98:2@152:7]
  %tmp.1.i = add i16 %kk.load, -623, !dbg !59     ; [#uses=1 type=i16] [debug line = 99:3@152:7]
  %a.assign.1 = select i1 %tmp.i, i16 %tmp.1.i, i16 %a.assign, !dbg !57 ; [#uses=1 type=i16] [debug line = 98:2@152:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.1}, i64 0, metadata !52), !dbg !57 ; [debug line = 98:2@152:7] [debug variable = a]
  store i16 %a.assign.1, i16* @kk, align 2, !dbg !51 ; [debug line = 152:7]
  %a.assign.2 = add i16 %kk_p1.load, 1, !dbg !60  ; [#uses=2 type=i16] [debug line = 153:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.2}, i64 0, metadata !61), !dbg !63 ; [debug line = 104:40@153:10] [debug variable = a]
  %tmp.i1 = icmp ugt i16 %a.assign.2, 623, !dbg !64 ; [#uses=1 type=i1] [debug line = 106:2@153:10]
  %tmp.2.i = add i16 %kk_p1.load, -623, !dbg !66  ; [#uses=1 type=i16] [debug line = 107:3@153:10]
  %a.assign.3 = select i1 %tmp.i1, i16 %tmp.2.i, i16 %a.assign.2, !dbg !64 ; [#uses=1 type=i16] [debug line = 106:2@153:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.3}, i64 0, metadata !61), !dbg !64 ; [debug line = 106:2@153:10] [debug variable = a]
  store i16 %a.assign.3, i16* @kk_p1, align 2, !dbg !60 ; [debug line = 153:10]
  %a.assign.4 = add i16 %kk_pm.load, 1, !dbg !67  ; [#uses=2 type=i16] [debug line = 154:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.4}, i64 0, metadata !68), !dbg !70 ; [debug line = 112:40@154:10] [debug variable = a]
  %tmp.i3 = icmp ugt i16 %a.assign.4, 623, !dbg !71 ; [#uses=1 type=i1] [debug line = 114:2@154:10]
  %tmp.3.i = add i16 %kk_pm.load, -623, !dbg !73  ; [#uses=1 type=i16] [debug line = 115:3@154:10]
  %a.assign.5 = select i1 %tmp.i3, i16 %tmp.3.i, i16 %a.assign.4, !dbg !71 ; [#uses=1 type=i16] [debug line = 114:2@154:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.5}, i64 0, metadata !68), !dbg !71 ; [debug line = 114:2@154:10] [debug variable = a]
  store i16 %a.assign.5, i16* @kk_pm, align 2, !dbg !67 ; [debug line = 154:10]
  ret void
}

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=0]
define double @gaussrand2(double* %gaussrand_state.V1, double* %gaussrand_state.V2, double* %gaussrand_state.S, i32* %gaussrand_state.phase) {
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state.V1), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state.V2), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(double* %gaussrand_state.S), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gaussrand_state.phase), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !90
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state.V1}, i64 0, metadata !96), !dbg !115 ; [debug line = 6:39] [debug variable = gaussrand_state.V1]
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state.V2}, i64 0, metadata !116), !dbg !115 ; [debug line = 6:39] [debug variable = gaussrand_state.V2]
  call void @llvm.dbg.value(metadata !{double* %gaussrand_state.S}, i64 0, metadata !120), !dbg !115 ; [debug line = 6:39] [debug variable = gaussrand_state.S]
  call void @llvm.dbg.value(metadata !{i32* %gaussrand_state.phase}, i64 0, metadata !124), !dbg !115 ; [debug line = 6:39] [debug variable = gaussrand_state.phase]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !128 ; [debug line = 12:1]
  %phase = load i32* %gaussrand_state.phase, align 4, !dbg !130 ; [#uses=2 type=i32] [debug line = 17:43]
  call void @llvm.dbg.value(metadata !{i32 %phase}, i64 0, metadata !131), !dbg !130 ; [debug line = 17:43] [debug variable = phase]
  %tmp = icmp eq i32 %phase, 0, !dbg !133         ; [#uses=1 type=i1] [debug line = 19:3]
  br i1 %tmp, label %.preheader.0, label %1, !dbg !133 ; [debug line = 19:3]

.preheader.0:                                     ; preds = %0
  call fastcc void @rand_uint32() nounwind, !dbg !134 ; [debug line = 27:16]
  call fastcc void @rand_uint32() nounwind, !dbg !139 ; [debug line = 28:16]
  call fastcc void @rand_uint32() nounwind, !dbg !140 ; [debug line = 33:16]
  call fastcc void @rand_uint32() nounwind, !dbg !141 ; [debug line = 34:16]
  store double 5.000000e-01, double* %gaussrand_state.S, align 8, !dbg !142 ; [debug line = 51:7]
  store double -5.000000e-01, double* %gaussrand_state.V1, align 8, !dbg !143 ; [debug line = 52:7]
  store double 5.000000e-01, double* %gaussrand_state.V2, align 8, !dbg !144 ; [debug line = 53:7]
  br label %2, !dbg !145                          ; [debug line = 56:5]

; <label>:1                                       ; preds = %0
  %S = load double* %gaussrand_state.S, align 8, !dbg !146 ; [#uses=2 type=double] [debug line = 60:42]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !148), !dbg !146 ; [debug line = 60:42] [debug variable = S]
  %V2 = load double* %gaussrand_state.V2, align 8, !dbg !150 ; [#uses=1 type=double] [debug line = 61:44]
  call void @llvm.dbg.value(metadata !{double %V2}, i64 0, metadata !151), !dbg !150 ; [debug line = 61:44] [debug variable = V2]
  %tmp. = fptrunc double %S to float, !dbg !152   ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.4 = call float @llvm.log.f32(float %tmp.), !dbg !152 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.5 = fpext float %tmp.4 to double, !dbg !152 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.6 = fmul double %tmp.5, -2.000000e+00, !dbg !152 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.7 = fdiv double %tmp.6, %S, !dbg !152      ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.8 = fptrunc double %tmp.7 to float, !dbg !152 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.9 = call float @llvm.sqrt.f32(float %tmp.8), !dbg !152 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.1 = fpext float %tmp.9 to double, !dbg !152 ; [#uses=1 type=double] [debug line = 63:30]
  %X = fmul double %V2, %tmp.1, !dbg !152         ; [#uses=1 type=double] [debug line = 63:30]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !153), !dbg !152 ; [debug line = 63:30] [debug variable = X]
  br label %2

; <label>:2                                       ; preds = %1, %.preheader.0
  %X2 = phi double [ 0xBFEAA449A0000000, %.preheader.0 ], [ %X, %1 ] ; [#uses=1 type=double]
  %tmp.2 = sub nsw i32 1, %phase, !dbg !154       ; [#uses=1 type=i32] [debug line = 67:3]
  store i32 %tmp.2, i32* %gaussrand_state.phase, align 4, !dbg !154 ; [debug line = 67:3]
  ret double %X2, !dbg !155                       ; [debug line = 68:3]
}

; [#uses=17]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=1]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=1]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone

!llvm.map.gv = !{!0, !7, !12}
!llvm.dbg.cu = !{!17}

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
!17 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/mt19937ar.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !18} ; [ DW_TAG_compile_unit ]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!20 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkp1", metadata !"mt_kkp1", metadata !"", metadata !21, i32 14, metadata !22, i32 1, i32 1, [624 x i64]* @mt_kkp1} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 39936, i64 64, i32 0, i32 0, metadata !23, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 623}      ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"kk_pm", metadata !"kk_pm", metadata !"", metadata !21, i32 21, metadata !27, i32 0, i32 1, i16* @kk_pm} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"kk", metadata !"kk", metadata !"", metadata !21, i32 19, metadata !27, i32 0, i32 1, i16* @kk} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"kk_p1", metadata !"kk_p1", metadata !"", metadata !21, i32 20, metadata !27, i32 0, i32 1, i16* @kk_p1} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkpm", metadata !"mt_kkpm", metadata !"", metadata !21, i32 15, metadata !22, i32 1, i32 1, [624 x i64]* @mt_kkpm} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"mt_kk", metadata !"mt_kk", metadata !"", metadata !21, i32 13, metadata !22, i32 1, i32 1, [624 x i64]* @mt_kk} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"mti", metadata !"mti", metadata !"", metadata !21, i32 16, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 129, i32 1, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 124, i32 1, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786478, i32 0, metadata !21, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !21, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !39, i32 124} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !23}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 130, i32 1, metadata !35, null}
!42 = metadata !{i32 135, i32 2, metadata !35, null}
!43 = metadata !{i32 786688, metadata !35, metadata !"y", metadata !21, i32 132, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 136, i32 2, metadata !35, null}
!45 = metadata !{i32 137, i32 2, metadata !35, null}
!46 = metadata !{i32 786688, metadata !35, metadata !"mt_kk_new", metadata !21, i32 132, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 140, i32 2, metadata !35, null}
!48 = metadata !{i32 141, i32 2, metadata !35, null}
!49 = metadata !{i32 142, i32 2, metadata !35, null}
!50 = metadata !{i32 145, i32 2, metadata !35, null}
!51 = metadata !{i32 152, i32 7, metadata !35, null}
!52 = metadata !{i32 786689, metadata !53, metadata !"a", metadata !21, i32 16777312, metadata !27, i32 0, metadata !51} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !21, i32 96, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 97} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{metadata !27, metadata !27}
!56 = metadata !{i32 96, i32 37, metadata !53, metadata !51}
!57 = metadata !{i32 98, i32 2, metadata !58, metadata !51}
!58 = metadata !{i32 786443, metadata !53, i32 97, i32 1, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 99, i32 3, metadata !58, metadata !51}
!60 = metadata !{i32 153, i32 10, metadata !35, null}
!61 = metadata !{i32 786689, metadata !62, metadata !"a", metadata !21, i32 16777320, metadata !27, i32 0, metadata !60} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !21, i32 104, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 104, i32 40, metadata !62, metadata !60}
!64 = metadata !{i32 106, i32 2, metadata !65, metadata !60}
!65 = metadata !{i32 786443, metadata !62, i32 105, i32 1, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 107, i32 3, metadata !65, metadata !60}
!67 = metadata !{i32 154, i32 10, metadata !35, null}
!68 = metadata !{i32 786689, metadata !69, metadata !"a", metadata !21, i32 16777328, metadata !27, i32 0, metadata !67} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !21, i32 112, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 113} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 112, i32 40, metadata !69, metadata !67}
!71 = metadata !{i32 114, i32 2, metadata !72, metadata !67}
!72 = metadata !{i32 786443, metadata !69, i32 113, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 115, i32 3, metadata !72, metadata !67}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 63, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"gaussrand_state.V1", metadata !5, metadata !"double"}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 63, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"gaussrand_state.V2", metadata !5, metadata !"double"}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 63, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"gaussrand_state.S", metadata !5, metadata !"double"}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 31, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"gaussrand_state.phase", metadata !5, metadata !"int"}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 63, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"return", metadata !94, metadata !""}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 1, i32 0}
!96 = metadata !{i32 790531, metadata !97, metadata !"gaussrand_state.V1", null, i32 6, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!97 = metadata !{i32 786689, metadata !98, metadata !"gaussrand_state", metadata !99, i32 16777222, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 786478, i32 0, metadata !99, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !99, i32 6, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 7} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !102, metadata !103}
!102 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !99, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ]
!105 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !106, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!106 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111}
!108 = metadata !{i32 786445, metadata !105, metadata !"V1", metadata !106, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ]
!109 = metadata !{i32 786445, metadata !105, metadata !"V2", metadata !106, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ]
!110 = metadata !{i32 786445, metadata !105, metadata !"S", metadata !106, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ]
!111 = metadata !{i32 786445, metadata !105, metadata !"phase", metadata !106, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ]
!112 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !106, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!114 = metadata !{metadata !108}
!115 = metadata !{i32 6, i32 39, metadata !98, null}
!116 = metadata !{i32 790531, metadata !97, metadata !"gaussrand_state.V2", null, i32 6, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !106, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!119 = metadata !{metadata !109}
!120 = metadata !{i32 790531, metadata !97, metadata !"gaussrand_state.S", null, i32 6, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ]
!122 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !106, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!123 = metadata !{metadata !110}
!124 = metadata !{i32 790531, metadata !97, metadata !"gaussrand_state.phase", null, i32 6, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !106, i32 17, i64 32, i64 64, i32 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!127 = metadata !{metadata !111}
!128 = metadata !{i32 12, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !98, i32 7, i32 1, metadata !99, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 17, i32 43, metadata !129, null}
!131 = metadata !{i32 786688, metadata !129, metadata !"phase", metadata !99, i32 17, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!133 = metadata !{i32 19, i32 3, metadata !129, null}
!134 = metadata !{i32 27, i32 16, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 26, i32 31, metadata !99, i32 4} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !137, i32 25, i32 32, metadata !99, i32 3} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 786443, metadata !138, i32 25, i32 7, metadata !99, i32 2} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !129, i32 20, i32 5, metadata !99, i32 1} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 28, i32 16, metadata !135, null}
!140 = metadata !{i32 33, i32 16, metadata !135, null}
!141 = metadata !{i32 34, i32 16, metadata !135, null}
!142 = metadata !{i32 51, i32 7, metadata !138, null}
!143 = metadata !{i32 52, i32 7, metadata !138, null}
!144 = metadata !{i32 53, i32 7, metadata !138, null}
!145 = metadata !{i32 56, i32 5, metadata !138, null}
!146 = metadata !{i32 60, i32 42, metadata !147, null}
!147 = metadata !{i32 786443, metadata !129, i32 58, i32 5, metadata !99, i32 6} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786688, metadata !147, metadata !"S", metadata !99, i32 60, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_const_type ]
!150 = metadata !{i32 61, i32 44, metadata !147, null}
!151 = metadata !{i32 786688, metadata !147, metadata !"V2", metadata !99, i32 61, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 63, i32 30, metadata !147, null}
!153 = metadata !{i32 786688, metadata !129, metadata !"X", metadata !99, i32 14, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 67, i32 3, metadata !129, null}
!155 = metadata !{i32 68, i32 3, metadata !129, null}
