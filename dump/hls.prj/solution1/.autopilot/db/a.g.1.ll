; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus.0 = type { double, double, double, i32 }

@kk = global i16 0, align 2                       ; [#uses=2 type=i16*]
@kk_p1 = global i16 1, align 2                    ; [#uses=3 type=i16*]
@kk_pm = global i16 397, align 2                  ; [#uses=3 type=i16*]
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [11 x i8] c"gaussrand2\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=0]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal fastcc zeroext i16 @mod_N(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !98), !dbg !99 ; [debug line = 96:37] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !100          ; [#uses=1 type=i1] [debug line = 98:2]
  %tmp.1 = add i16 %a, -624, !dbg !102            ; [#uses=1 type=i16] [debug line = 99:3]
  %a.assign = select i1 %tmp, i16 %tmp.1, i16 %a, !dbg !100 ; [#uses=1 type=i16] [debug line = 98:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !98), !dbg !100 ; [debug line = 98:2] [debug variable = a]
  ret i16 %a.assign, !dbg !103                    ; [debug line = 102:1]
}

; [#uses=1]
define internal fastcc zeroext i16 @mod_N_p1(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !104), !dbg !105 ; [debug line = 104:40] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !106          ; [#uses=1 type=i1] [debug line = 106:2]
  %tmp.2 = add i16 %a, -624, !dbg !108            ; [#uses=1 type=i16] [debug line = 107:3]
  %a.assign = select i1 %tmp, i16 %tmp.2, i16 %a, !dbg !106 ; [#uses=1 type=i16] [debug line = 106:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !104), !dbg !106 ; [debug line = 106:2] [debug variable = a]
  ret i16 %a.assign, !dbg !109                    ; [debug line = 110:1]
}

; [#uses=1]
define internal fastcc zeroext i16 @mod_N_pm(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !110), !dbg !111 ; [debug line = 112:40] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !112          ; [#uses=1 type=i1] [debug line = 114:2]
  %tmp.3 = add i16 %a, -624, !dbg !114            ; [#uses=1 type=i16] [debug line = 115:3]
  %a.assign = select i1 %tmp, i16 %tmp.3, i16 %a, !dbg !112 ; [#uses=1 type=i16] [debug line = 114:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !110), !dbg !112 ; [debug line = 114:2] [debug variable = a]
  ret i16 %a.assign, !dbg !115                    ; [debug line = 118:1]
}

; [#uses=4]
define internal fastcc i64 @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 129:1]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 1, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 130:1]
  %kk.load = load i16* @kk, align 2, !dbg !119    ; [#uses=2 type=i16] [debug line = 135:2]
  %tmp = zext i16 %kk.load to i64, !dbg !119      ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kk.addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !119 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kk.load = load i64* %mt_kk.addr, align 8, !dbg !119 ; [#uses=2 type=i64] [debug line = 135:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kk.load) nounwind
  %tmp.4 = and i64 %mt_kk.load, 2147483648, !dbg !119 ; [#uses=1 type=i64] [debug line = 135:2]
  %kk_p1.load = load i16* @kk_p1, align 2, !dbg !119 ; [#uses=1 type=i16] [debug line = 135:2]
  %tmp.5 = zext i16 %kk_p1.load to i64, !dbg !119 ; [#uses=1 type=i64] [debug line = 135:2]
  %mt_kkp1.addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp.5, !dbg !119 ; [#uses=2 type=i64*] [debug line = 135:2]
  %mt_kkp1.load = load i64* %mt_kkp1.addr, align 8, !dbg !119 ; [#uses=3 type=i64] [debug line = 135:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kkp1.load) nounwind
  %tmp.6 = and i64 %mt_kkp1.load, 2147483646, !dbg !119 ; [#uses=1 type=i64] [debug line = 135:2]
  %y = or i64 %tmp.6, %tmp.4, !dbg !119           ; [#uses=1 type=i64] [debug line = 135:2]
  call void @llvm.dbg.value(metadata !{i64 %y}, i64 0, metadata !120), !dbg !119 ; [debug line = 135:2] [debug variable = y]
  %tmp.7 = and i64 %mt_kkp1.load, 1, !dbg !121    ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp.8 = icmp eq i64 %tmp.7, 0, !dbg !121       ; [#uses=1 type=i1] [debug line = 136:2]
  %mag01 = select i1 %tmp.8, i64 0, i64 2567483615, !dbg !121 ; [#uses=1 type=i64] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{i64 %mag01}, i64 0, metadata !122), !dbg !121 ; [debug line = 136:2] [debug variable = mag01]
  %kk_pm.load = load i16* @kk_pm, align 2, !dbg !123 ; [#uses=1 type=i16] [debug line = 137:2]
  %tmp.9 = zext i16 %kk_pm.load to i64, !dbg !123 ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kkpm.addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp.9, !dbg !123 ; [#uses=2 type=i64*] [debug line = 137:2]
  %mt_kkpm.load = load i64* %mt_kkpm.addr, align 8, !dbg !123 ; [#uses=2 type=i64] [debug line = 137:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kkpm.load) nounwind
  %tmp.10 = lshr exact i64 %y, 1, !dbg !123       ; [#uses=1 type=i64] [debug line = 137:2]
  %tmp.11 = xor i64 %tmp.10, %mag01, !dbg !123    ; [#uses=1 type=i64] [debug line = 137:2]
  %mt_kk_new = xor i64 %tmp.11, %mt_kkpm.load, !dbg !123 ; [#uses=5 type=i64] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !124), !dbg !123 ; [debug line = 137:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk.addr, align 8, !dbg !125 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkp1.addr, align 8, !dbg !126 ; [debug line = 141:2]
  store i64 %mt_kk_new, i64* %mt_kkpm.addr, align 8, !dbg !127 ; [debug line = 142:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !120), !dbg !128 ; [debug line = 145:2] [debug variable = y]
  %tmp.12 = lshr i64 %mt_kk_new, 11, !dbg !129    ; [#uses=1 type=i64] [debug line = 146:2]
  %y.2 = xor i64 %tmp.12, %mt_kk_new, !dbg !129   ; [#uses=2 type=i64] [debug line = 146:2]
  call void @llvm.dbg.value(metadata !{i64 %y.2}, i64 0, metadata !120), !dbg !129 ; [debug line = 146:2] [debug variable = y]
  %tmp.13 = shl i64 %y.2, 7, !dbg !130            ; [#uses=1 type=i64] [debug line = 147:2]
  %tmp.14 = and i64 %tmp.13, 2636928640, !dbg !130 ; [#uses=1 type=i64] [debug line = 147:2]
  %y.3 = xor i64 %tmp.14, %y.2, !dbg !130         ; [#uses=2 type=i64] [debug line = 147:2]
  call void @llvm.dbg.value(metadata !{i64 %y.3}, i64 0, metadata !120), !dbg !130 ; [debug line = 147:2] [debug variable = y]
  %tmp.15 = shl i64 %y.3, 15, !dbg !131           ; [#uses=1 type=i64] [debug line = 148:2]
  %tmp.16 = and i64 %tmp.15, 4022730752, !dbg !131 ; [#uses=1 type=i64] [debug line = 148:2]
  %y.4 = xor i64 %tmp.16, %y.3, !dbg !131         ; [#uses=2 type=i64] [debug line = 148:2]
  call void @llvm.dbg.value(metadata !{i64 %y.4}, i64 0, metadata !120), !dbg !131 ; [debug line = 148:2] [debug variable = y]
  %tmp.17 = lshr i64 %y.4, 18, !dbg !132          ; [#uses=1 type=i64] [debug line = 149:2]
  %y.6 = xor i64 %tmp.17, %y.4, !dbg !132         ; [#uses=1 type=i64] [debug line = 149:2]
  call void @llvm.dbg.value(metadata !{i64 %y.6}, i64 0, metadata !120), !dbg !132 ; [debug line = 149:2] [debug variable = y]
  %tmp.18 = add i16 %kk.load, 1, !dbg !133        ; [#uses=1 type=i16] [debug line = 152:7]
  %tmp.19 = call fastcc zeroext i16 @mod_N(i16 zeroext %tmp.18), !dbg !133 ; [#uses=1 type=i16] [debug line = 152:7]
  store i16 %tmp.19, i16* @kk, align 2, !dbg !133 ; [debug line = 152:7]
  %kk_p1.load.1 = load i16* @kk_p1, align 2, !dbg !134 ; [#uses=1 type=i16] [debug line = 153:10]
  %tmp.20 = add i16 %kk_p1.load.1, 1, !dbg !134   ; [#uses=1 type=i16] [debug line = 153:10]
  %tmp.21 = call fastcc zeroext i16 @mod_N_p1(i16 zeroext %tmp.20), !dbg !134 ; [#uses=1 type=i16] [debug line = 153:10]
  store i16 %tmp.21, i16* @kk_p1, align 2, !dbg !134 ; [debug line = 153:10]
  %kk_pm.load.1 = load i16* @kk_pm, align 2, !dbg !135 ; [#uses=1 type=i16] [debug line = 154:10]
  %tmp.22 = add i16 %kk_pm.load.1, 1, !dbg !135   ; [#uses=1 type=i16] [debug line = 154:10]
  %tmp.23 = call fastcc zeroext i16 @mod_N_pm(i16 zeroext %tmp.22), !dbg !135 ; [#uses=1 type=i16] [debug line = 154:10]
  store i16 %tmp.23, i16* @kk_pm, align 2, !dbg !135 ; [debug line = 154:10]
  ret i64 %y.6, !dbg !136                         ; [debug line = 156:2]
}

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=0]
define double @gaussrand2(%struct._IO_FILE_plus.0* %gaussrand_state) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !137
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE_plus.0* %gaussrand_state}, i64 0, metadata !143), !dbg !144 ; [debug line = 6:39] [debug variable = gaussrand_state]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !145 ; [debug line = 12:1]
  %gaussrand_state.addr = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 3, !dbg !147 ; [#uses=2 type=i32*] [debug line = 17:43]
  %phase = load i32* %gaussrand_state.addr, align 4, !dbg !147 ; [#uses=3 type=i32] [debug line = 17:43]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %phase) nounwind
  call void @llvm.dbg.value(metadata !{i32 %phase}, i64 0, metadata !148), !dbg !147 ; [debug line = 17:43] [debug variable = phase]
  %tmp = icmp eq i32 %phase, 0, !dbg !150         ; [#uses=1 type=i1] [debug line = 19:3]
  br i1 %tmp, label %.preheader.preheader, label %6, !dbg !150 ; [debug line = 19:3]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !151                 ; [debug line = 25:12]

.preheader:                                       ; preds = %1, %.preheader.preheader
  %S1 = phi double [ 5.000000e-01, %1 ], [ 0.000000e+00, %.preheader.preheader ] ; [#uses=1 type=double]
  %i = phi i32 [ %i.1, %1 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 1, !dbg !151        ; [#uses=1 type=i1] [debug line = 25:12]
  br i1 %exitcond, label %.loopexit, label %1, !dbg !151 ; [debug line = 25:12]

; <label>:1                                       ; preds = %.preheader
  %2 = call fastcc i64 @rand_uint32() nounwind, !dbg !154 ; [#uses=0 type=i64] [debug line = 27:16]
  %3 = call fastcc i64 @rand_uint32() nounwind, !dbg !157 ; [#uses=0 type=i64] [debug line = 28:16]
  %4 = call fastcc i64 @rand_uint32() nounwind, !dbg !158 ; [#uses=0 type=i64] [debug line = 33:16]
  %5 = call fastcc i64 @rand_uint32() nounwind, !dbg !159 ; [#uses=0 type=i64] [debug line = 34:16]
  %i.1 = add nsw i32 %i, 1, !dbg !160             ; [#uses=1 type=i32] [debug line = 25:27]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !161), !dbg !160 ; [debug line = 25:27] [debug variable = i]
  br label %.preheader, !dbg !160                 ; [debug line = 25:27]

.loopexit:                                        ; preds = %.preheader
  %S.0.lcssa = phi double [ %S1, %.preheader ]    ; [#uses=3 type=double]
  %gaussrand_state.addr.3 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 2, !dbg !162 ; [#uses=1 type=double*] [debug line = 51:7]
  store double %S.0.lcssa, double* %gaussrand_state.addr.3, align 8, !dbg !162 ; [debug line = 51:7]
  %gaussrand_state.addr.4 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 0, !dbg !163 ; [#uses=1 type=double*] [debug line = 52:7]
  store double -5.000000e-01, double* %gaussrand_state.addr.4, align 8, !dbg !163 ; [debug line = 52:7]
  %gaussrand_state.addr.5 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 1, !dbg !164 ; [#uses=1 type=double*] [debug line = 53:7]
  store double 5.000000e-01, double* %gaussrand_state.addr.5, align 8, !dbg !164 ; [debug line = 53:7]
  %tmp.33 = fptrunc double %S.0.lcssa to float, !dbg !165 ; [#uses=1 type=float] [debug line = 55:30]
  %tmp.34 = call float @llvm.log.f32(float %tmp.33), !dbg !165 ; [#uses=1 type=float] [debug line = 55:30]
  %tmp.35 = fpext float %tmp.34 to double, !dbg !165 ; [#uses=1 type=double] [debug line = 55:30]
  %tmp.36 = fmul double %tmp.35, -2.000000e+00, !dbg !165 ; [#uses=1 type=double] [debug line = 55:30]
  %tmp.37 = fdiv double %tmp.36, %S.0.lcssa, !dbg !165 ; [#uses=1 type=double] [debug line = 55:30]
  %tmp.38 = fptrunc double %tmp.37 to float, !dbg !165 ; [#uses=1 type=float] [debug line = 55:30]
  %tmp.39 = call float @llvm.sqrt.f32(float %tmp.38), !dbg !165 ; [#uses=1 type=float] [debug line = 55:30]
  %tmp.40 = fpext float %tmp.39 to double, !dbg !165 ; [#uses=1 type=double] [debug line = 55:30]
  %X.1 = fmul double %tmp.40, -5.000000e-01, !dbg !165 ; [#uses=1 type=double] [debug line = 55:30]
  call void @llvm.dbg.value(metadata !{double %X.1}, i64 0, metadata !166), !dbg !165 ; [debug line = 55:30] [debug variable = X]
  br label %7, !dbg !167                          ; [debug line = 56:5]

; <label>:6                                       ; preds = %0
  %gaussrand_state.addr.1 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 2, !dbg !168 ; [#uses=1 type=double*] [debug line = 60:42]
  %S = load double* %gaussrand_state.addr.1, align 8, !dbg !168 ; [#uses=3 type=double] [debug line = 60:42]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %S) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !170), !dbg !168 ; [debug line = 60:42] [debug variable = S]
  %gaussrand_state.addr.2 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 1, !dbg !171 ; [#uses=1 type=double*] [debug line = 61:44]
  %V2 = load double* %gaussrand_state.addr.2, align 8, !dbg !171 ; [#uses=2 type=double] [debug line = 61:44]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %V2) nounwind
  call void @llvm.dbg.value(metadata !{double %V2}, i64 0, metadata !172), !dbg !171 ; [debug line = 61:44] [debug variable = V2]
  %tmp.24 = fptrunc double %S to float, !dbg !173 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.25 = call float @llvm.log.f32(float %tmp.24), !dbg !173 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.26 = fpext float %tmp.25 to double, !dbg !173 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.27 = fmul double %tmp.26, -2.000000e+00, !dbg !173 ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.28 = fdiv double %tmp.27, %S, !dbg !173    ; [#uses=1 type=double] [debug line = 63:30]
  %tmp.29 = fptrunc double %tmp.28 to float, !dbg !173 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.30 = call float @llvm.sqrt.f32(float %tmp.29), !dbg !173 ; [#uses=1 type=float] [debug line = 63:30]
  %tmp.31 = fpext float %tmp.30 to double, !dbg !173 ; [#uses=1 type=double] [debug line = 63:30]
  %X = fmul double %V2, %tmp.31, !dbg !173        ; [#uses=1 type=double] [debug line = 63:30]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !166), !dbg !173 ; [debug line = 63:30] [debug variable = X]
  br label %7

; <label>:7                                       ; preds = %6, %.loopexit
  %X2 = phi double [ %X.1, %.loopexit ], [ %X, %6 ] ; [#uses=1 type=double]
  %tmp.43 = sub nsw i32 1, %phase, !dbg !174      ; [#uses=1 type=i32] [debug line = 67:3]
  store i32 %tmp.43, i32* %gaussrand_state.addr, align 4, !dbg !174 ; [debug line = 67:3]
  ret double %X2, !dbg !175                       ; [debug line = 68:3]
}

; [#uses=0]
declare float @sqrtf(float) nounwind readnone

; [#uses=0]
declare float @logf(float) nounwind

; [#uses=0]
declare double @exp(double) nounwind

; [#uses=0]
declare double @sqrt(double) nounwind readnone

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @init_genrand(i64) nounwind uwtable

; [#uses=0]
declare void @init_by_array(i64*, i32) nounwind uwtable

; [#uses=0]
declare void @shadow_state() nounwind uwtable

; [#uses=0]
declare double @mult2_1(double, double) nounwind uwtable

; [#uses=0]
declare double @mult2_2(double, double) nounwind uwtable

; [#uses=0]
declare double @mult2_3(double, double) nounwind uwtable

; [#uses=0]
declare double @div_1(double, double) nounwind uwtable

; [#uses=0]
declare double @expo1(double) nounwind uwtable

; [#uses=0]
declare double @sqrt1(double) nounwind uwtable

; [#uses=0]
declare double @black_scholes(double, double, double, double, double, %struct._IO_FILE_plus.0* byval align 8) nounwind uwtable

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=0]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0, !41, !72}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/mt19937ar.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !17, metadata !20, metadata !24, metadata !25, metadata !26}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_genrand", metadata !"init_genrand", metadata !"", metadata !6, i32 24, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @init_genrand, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_by_array", metadata !"init_by_array", metadata !"", metadata !6, i32 43, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i32)* @init_by_array, null, null, metadata !10, i32 44} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"shadow_state", metadata !"shadow_state", metadata !"", metadata !6, i32 79, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @shadow_state, null, null, metadata !10, i32 79} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !6, i32 96, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N, null, null, metadata !10, i32 97} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !6, i32 104, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N_p1, null, null, metadata !10, i32 105} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !6, i32 112, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N_pm, null, null, metadata !10, i32 113} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !6, i32 123, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @rand_uint32, null, null, metadata !10, i32 124} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{metadata !9}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !39, metadata !40}
!31 = metadata !{i32 786484, i32 0, null, metadata !"kk", metadata !"kk", metadata !"", metadata !6, i32 19, metadata !23, i32 0, i32 1, i16* @kk} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"kk_p1", metadata !"kk_p1", metadata !"", metadata !6, i32 20, metadata !23, i32 0, i32 1, i16* @kk_p1} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"kk_pm", metadata !"kk_pm", metadata !"", metadata !6, i32 21, metadata !23, i32 0, i32 1, i16* @kk_pm} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"mt_kk", metadata !"mt_kk", metadata !"", metadata !6, i32 13, metadata !35, i32 1, i32 1, [624 x i64]* @mt_kk} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 39936, i64 64, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 623}      ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkp1", metadata !"mt_kkp1", metadata !"", metadata !6, i32 14, metadata !35, i32 1, i32 1, [624 x i64]* @mt_kkp1} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkpm", metadata !"mt_kkpm", metadata !"", metadata !6, i32 15, metadata !35, i32 1, i32 1, [624 x i64]* @mt_kkpm} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"mti", metadata !"mti", metadata !"", metadata !6, i32 16, metadata !16, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/gaussian.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !42, metadata !58} ; [ DW_TAG_compile_unit ]
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786478, i32 0, metadata !45, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !45, i32 6, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct._IO_FILE_plus.0*)* @gaussrand2, null, null, metadata !10, i32 7} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !45, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !52, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!52 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786445, metadata !51, metadata !"V1", metadata !52, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ]
!55 = metadata !{i32 786445, metadata !51, metadata !"V2", metadata !52, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ]
!56 = metadata !{i32 786445, metadata !51, metadata !"S", metadata !52, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ]
!57 = metadata !{i32 786445, metadata !51, metadata !"phase", metadata !52, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !60, metadata !62, metadata !63, metadata !65, metadata !68, metadata !69, metadata !70}
!60 = metadata !{i32 786484, i32 0, metadata !45, metadata !"U1", metadata !"U1", metadata !"U1", metadata !45, i32 30, metadata !61, i32 1, i32 1, double 2.500000e-01} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ]
!62 = metadata !{i32 786484, i32 0, metadata !45, metadata !"U2", metadata !"U2", metadata !"U2", metadata !45, i32 36, metadata !61, i32 1, i32 1, double 7.500000e-01} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !64, i32 157, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !66, i32 343, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !66, i32 341, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !66, i32 344, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !66, i32 345, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !71, i32 27, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!72 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/black_scholes.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !73, metadata !96} ; [ DW_TAG_compile_unit ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86}
!75 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !76, i32 27, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_1, null, null, metadata !10, i32 27} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786473, metadata !"black_scholes.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !48, metadata !48, metadata !48}
!79 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !76, i32 30, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_2, null, null, metadata !10, i32 30} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !76, i32 33, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_3, null, null, metadata !10, i32 33} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !76, metadata !"div_1", metadata !"div_1", metadata !"", metadata !76, i32 36, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @div_1, null, null, metadata !10, i32 36} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786478, i32 0, metadata !76, metadata !"expo1", metadata !"expo1", metadata !"", metadata !76, i32 40, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @expo1, null, null, metadata !10, i32 40} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !48, metadata !48}
!85 = metadata !{i32 786478, i32 0, metadata !76, metadata !"sqrt1", metadata !"sqrt1", metadata !"", metadata !76, i32 44, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sqrt1, null, null, metadata !10, i32 44} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes", metadata !"black_scholes", metadata !"", metadata !76, i32 49, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double, double, double, double, %struct._IO_FILE_plus.0*)* @black_scholes, null, null, metadata !10, i32 57} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !48, metadata !61, metadata !61, metadata !61, metadata !61, metadata !61, metadata !89}
!89 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !76, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ]
!90 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !52, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95}
!92 = metadata !{i32 786445, metadata !90, metadata !"V1", metadata !52, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ]
!93 = metadata !{i32 786445, metadata !90, metadata !"V2", metadata !52, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ]
!94 = metadata !{i32 786445, metadata !90, metadata !"S", metadata !52, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ]
!95 = metadata !{i32 786445, metadata !90, metadata !"phase", metadata !52, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !63, metadata !65, metadata !68, metadata !69, metadata !70}
!98 = metadata !{i32 786689, metadata !20, metadata !"a", metadata !6, i32 16777312, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 96, i32 37, metadata !20, null}
!100 = metadata !{i32 98, i32 2, metadata !101, null}
!101 = metadata !{i32 786443, metadata !20, i32 97, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 99, i32 3, metadata !101, null}
!103 = metadata !{i32 102, i32 1, metadata !101, null}
!104 = metadata !{i32 786689, metadata !24, metadata !"a", metadata !6, i32 16777320, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 104, i32 40, metadata !24, null}
!106 = metadata !{i32 106, i32 2, metadata !107, null}
!107 = metadata !{i32 786443, metadata !24, i32 105, i32 1, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 107, i32 3, metadata !107, null}
!109 = metadata !{i32 110, i32 1, metadata !107, null}
!110 = metadata !{i32 786689, metadata !25, metadata !"a", metadata !6, i32 16777328, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 112, i32 40, metadata !25, null}
!112 = metadata !{i32 114, i32 2, metadata !113, null}
!113 = metadata !{i32 786443, metadata !25, i32 113, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 115, i32 3, metadata !113, null}
!115 = metadata !{i32 118, i32 1, metadata !113, null}
!116 = metadata !{i32 129, i32 1, metadata !117, null}
!117 = metadata !{i32 786443, metadata !26, i32 124, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 130, i32 1, metadata !117, null}
!119 = metadata !{i32 135, i32 2, metadata !117, null}
!120 = metadata !{i32 786688, metadata !117, metadata !"y", metadata !6, i32 132, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 136, i32 2, metadata !117, null}
!122 = metadata !{i32 786688, metadata !117, metadata !"mag01", metadata !6, i32 132, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 137, i32 2, metadata !117, null}
!124 = metadata !{i32 786688, metadata !117, metadata !"mt_kk_new", metadata !6, i32 132, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 140, i32 2, metadata !117, null}
!126 = metadata !{i32 141, i32 2, metadata !117, null}
!127 = metadata !{i32 142, i32 2, metadata !117, null}
!128 = metadata !{i32 145, i32 2, metadata !117, null}
!129 = metadata !{i32 146, i32 2, metadata !117, null}
!130 = metadata !{i32 147, i32 2, metadata !117, null}
!131 = metadata !{i32 148, i32 2, metadata !117, null}
!132 = metadata !{i32 149, i32 2, metadata !117, null}
!133 = metadata !{i32 152, i32 7, metadata !117, null}
!134 = metadata !{i32 153, i32 10, metadata !117, null}
!135 = metadata !{i32 154, i32 10, metadata !117, null}
!136 = metadata !{i32 156, i32 2, metadata !117, null}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 63, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"return", metadata !141, metadata !""}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 1, i32 0}
!143 = metadata !{i32 786689, metadata !44, metadata !"gaussrand_state", metadata !45, i32 16777222, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 6, i32 39, metadata !44, null}
!145 = metadata !{i32 12, i32 1, metadata !146, null}
!146 = metadata !{i32 786443, metadata !44, i32 7, i32 1, metadata !45, i32 0} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 17, i32 43, metadata !146, null}
!148 = metadata !{i32 786688, metadata !146, metadata !"phase", metadata !45, i32 17, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!150 = metadata !{i32 19, i32 3, metadata !146, null}
!151 = metadata !{i32 25, i32 12, metadata !152, null}
!152 = metadata !{i32 786443, metadata !153, i32 25, i32 7, metadata !45, i32 2} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786443, metadata !146, i32 20, i32 5, metadata !45, i32 1} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 27, i32 16, metadata !155, null}
!155 = metadata !{i32 786443, metadata !156, i32 26, i32 31, metadata !45, i32 4} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !152, i32 25, i32 32, metadata !45, i32 3} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 28, i32 16, metadata !155, null}
!158 = metadata !{i32 33, i32 16, metadata !155, null}
!159 = metadata !{i32 34, i32 16, metadata !155, null}
!160 = metadata !{i32 25, i32 27, metadata !152, null}
!161 = metadata !{i32 786688, metadata !153, metadata !"i", metadata !45, i32 22, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 51, i32 7, metadata !153, null}
!163 = metadata !{i32 52, i32 7, metadata !153, null}
!164 = metadata !{i32 53, i32 7, metadata !153, null}
!165 = metadata !{i32 55, i32 30, metadata !153, null}
!166 = metadata !{i32 786688, metadata !146, metadata !"X", metadata !45, i32 14, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 56, i32 5, metadata !153, null}
!168 = metadata !{i32 60, i32 42, metadata !169, null}
!169 = metadata !{i32 786443, metadata !146, i32 58, i32 5, metadata !45, i32 6} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786688, metadata !169, metadata !"S", metadata !45, i32 60, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 61, i32 44, metadata !169, null}
!172 = metadata !{i32 786688, metadata !169, metadata !"V2", metadata !45, i32 61, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 63, i32 30, metadata !169, null}
!174 = metadata !{i32 67, i32 3, metadata !146, null}
!175 = metadata !{i32 68, i32 3, metadata !146, null}
