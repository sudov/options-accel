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
@.str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str24 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [14 x i8] c"black_scholes\00" ; [#uses=1 type=[14 x i8]*]

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal fastcc zeroext i16 @mod_N(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !97), !dbg !98 ; [debug line = 95:37] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !99           ; [#uses=1 type=i1] [debug line = 97:2]
  %tmp.1 = add i16 %a, -624, !dbg !101            ; [#uses=1 type=i16] [debug line = 98:3]
  %a.assign = select i1 %tmp, i16 %tmp.1, i16 %a, !dbg !99 ; [#uses=1 type=i16] [debug line = 97:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !97), !dbg !99 ; [debug line = 97:2] [debug variable = a]
  ret i16 %a.assign, !dbg !102                    ; [debug line = 101:1]
}

; [#uses=1]
define internal fastcc zeroext i16 @mod_N_p1(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !103), !dbg !104 ; [debug line = 103:40] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !105          ; [#uses=1 type=i1] [debug line = 105:2]
  %tmp.2 = add i16 %a, -624, !dbg !107            ; [#uses=1 type=i16] [debug line = 106:3]
  %a.assign = select i1 %tmp, i16 %tmp.2, i16 %a, !dbg !105 ; [#uses=1 type=i16] [debug line = 105:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !103), !dbg !105 ; [debug line = 105:2] [debug variable = a]
  ret i16 %a.assign, !dbg !108                    ; [debug line = 109:1]
}

; [#uses=1]
define internal fastcc zeroext i16 @mod_N_pm(i16 zeroext %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16 %a}, i64 0, metadata !109), !dbg !110 ; [debug line = 111:40] [debug variable = a]
  %tmp = icmp ugt i16 %a, 623, !dbg !111          ; [#uses=1 type=i1] [debug line = 113:2]
  %tmp.3 = add i16 %a, -624, !dbg !113            ; [#uses=1 type=i16] [debug line = 114:3]
  %a.assign = select i1 %tmp, i16 %tmp.3, i16 %a, !dbg !111 ; [#uses=1 type=i16] [debug line = 113:2]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !109), !dbg !111 ; [debug line = 113:2] [debug variable = a]
  ret i16 %a.assign, !dbg !114                    ; [debug line = 117:1]
}

; [#uses=2]
define internal fastcc i64 @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !115 ; [debug line = 128:1]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 1, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 129:1]
  %kk.load = load i16* @kk, align 2, !dbg !118    ; [#uses=2 type=i16] [debug line = 134:2]
  %tmp = zext i16 %kk.load to i64, !dbg !118      ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kk.addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !118 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kk.load = load i64* %mt_kk.addr, align 8, !dbg !118 ; [#uses=2 type=i64] [debug line = 134:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kk.load) nounwind
  %tmp.4 = and i64 %mt_kk.load, 2147483648, !dbg !118 ; [#uses=1 type=i64] [debug line = 134:2]
  %kk_p1.load = load i16* @kk_p1, align 2, !dbg !118 ; [#uses=1 type=i16] [debug line = 134:2]
  %tmp.5 = zext i16 %kk_p1.load to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kkp1.addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp.5, !dbg !118 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kkp1.load = load i64* %mt_kkp1.addr, align 8, !dbg !118 ; [#uses=3 type=i64] [debug line = 134:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kkp1.load) nounwind
  %tmp.6 = and i64 %mt_kkp1.load, 2147483646, !dbg !118 ; [#uses=1 type=i64] [debug line = 134:2]
  %y = or i64 %tmp.6, %tmp.4, !dbg !118           ; [#uses=1 type=i64] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i64 %y}, i64 0, metadata !119), !dbg !118 ; [debug line = 134:2] [debug variable = y]
  %tmp.7 = and i64 %mt_kkp1.load, 1, !dbg !120    ; [#uses=1 type=i64] [debug line = 135:2]
  %tmp.8 = icmp eq i64 %tmp.7, 0, !dbg !120       ; [#uses=1 type=i1] [debug line = 135:2]
  %mag01 = select i1 %tmp.8, i64 0, i64 2567483615, !dbg !120 ; [#uses=1 type=i64] [debug line = 135:2]
  call void @llvm.dbg.value(metadata !{i64 %mag01}, i64 0, metadata !121), !dbg !120 ; [debug line = 135:2] [debug variable = mag01]
  %kk_pm.load = load i16* @kk_pm, align 2, !dbg !122 ; [#uses=1 type=i16] [debug line = 136:2]
  %tmp.9 = zext i16 %kk_pm.load to i64, !dbg !122 ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kkpm.addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp.9, !dbg !122 ; [#uses=2 type=i64*] [debug line = 136:2]
  %mt_kkpm.load = load i64* %mt_kkpm.addr, align 8, !dbg !122 ; [#uses=2 type=i64] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %mt_kkpm.load) nounwind
  %tmp.10 = lshr exact i64 %y, 1, !dbg !122       ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp.11 = xor i64 %tmp.10, %mag01, !dbg !122    ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kk_new = xor i64 %tmp.11, %mt_kkpm.load, !dbg !122 ; [#uses=5 type=i64] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !123), !dbg !122 ; [debug line = 136:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk.addr, align 8, !dbg !124 ; [debug line = 139:2]
  store i64 %mt_kk_new, i64* %mt_kkp1.addr, align 8, !dbg !125 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkpm.addr, align 8, !dbg !126 ; [debug line = 141:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !119), !dbg !127 ; [debug line = 144:2] [debug variable = y]
  %tmp.12 = lshr i64 %mt_kk_new, 11, !dbg !128    ; [#uses=1 type=i64] [debug line = 145:2]
  %y.2 = xor i64 %tmp.12, %mt_kk_new, !dbg !128   ; [#uses=2 type=i64] [debug line = 145:2]
  call void @llvm.dbg.value(metadata !{i64 %y.2}, i64 0, metadata !119), !dbg !128 ; [debug line = 145:2] [debug variable = y]
  %tmp.13 = shl i64 %y.2, 7, !dbg !129            ; [#uses=1 type=i64] [debug line = 146:2]
  %tmp.14 = and i64 %tmp.13, 2636928640, !dbg !129 ; [#uses=1 type=i64] [debug line = 146:2]
  %y.3 = xor i64 %tmp.14, %y.2, !dbg !129         ; [#uses=2 type=i64] [debug line = 146:2]
  call void @llvm.dbg.value(metadata !{i64 %y.3}, i64 0, metadata !119), !dbg !129 ; [debug line = 146:2] [debug variable = y]
  %tmp.15 = shl i64 %y.3, 15, !dbg !130           ; [#uses=1 type=i64] [debug line = 147:2]
  %tmp.16 = and i64 %tmp.15, 4022730752, !dbg !130 ; [#uses=1 type=i64] [debug line = 147:2]
  %y.4 = xor i64 %tmp.16, %y.3, !dbg !130         ; [#uses=2 type=i64] [debug line = 147:2]
  call void @llvm.dbg.value(metadata !{i64 %y.4}, i64 0, metadata !119), !dbg !130 ; [debug line = 147:2] [debug variable = y]
  %tmp.17 = lshr i64 %y.4, 18, !dbg !131          ; [#uses=1 type=i64] [debug line = 148:2]
  %y.6 = xor i64 %tmp.17, %y.4, !dbg !131         ; [#uses=1 type=i64] [debug line = 148:2]
  call void @llvm.dbg.value(metadata !{i64 %y.6}, i64 0, metadata !119), !dbg !131 ; [debug line = 148:2] [debug variable = y]
  %tmp.18 = add i16 %kk.load, 1, !dbg !132        ; [#uses=1 type=i16] [debug line = 151:7]
  %tmp.19 = call fastcc zeroext i16 @mod_N(i16 zeroext %tmp.18), !dbg !132 ; [#uses=1 type=i16] [debug line = 151:7]
  store i16 %tmp.19, i16* @kk, align 2, !dbg !132 ; [debug line = 151:7]
  %kk_p1.load.1 = load i16* @kk_p1, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 152:10]
  %tmp.20 = add i16 %kk_p1.load.1, 1, !dbg !133   ; [#uses=1 type=i16] [debug line = 152:10]
  %tmp.21 = call fastcc zeroext i16 @mod_N_p1(i16 zeroext %tmp.20), !dbg !133 ; [#uses=1 type=i16] [debug line = 152:10]
  store i16 %tmp.21, i16* @kk_p1, align 2, !dbg !133 ; [debug line = 152:10]
  %kk_pm.load.1 = load i16* @kk_pm, align 2, !dbg !134 ; [#uses=1 type=i16] [debug line = 153:10]
  %tmp.22 = add i16 %kk_pm.load.1, 1, !dbg !134   ; [#uses=1 type=i16] [debug line = 153:10]
  %tmp.23 = call fastcc zeroext i16 @mod_N_pm(i16 zeroext %tmp.22), !dbg !134 ; [#uses=1 type=i16] [debug line = 153:10]
  store i16 %tmp.23, i16* @kk_pm, align 2, !dbg !134 ; [debug line = 153:10]
  ret i64 %y.6, !dbg !135                         ; [debug line = 155:2]
}

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=0]
declare i32 @printf(i8*, ...)

; [#uses=1]
define internal fastcc double @gaussrand2(%struct._IO_FILE_plus.0* %gaussrand_state) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE_plus.0* %gaussrand_state}, i64 0, metadata !136), !dbg !137 ; [debug line = 18:39] [debug variable = gaussrand_state]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !138 ; [debug line = 24:1]
  %gaussrand_state.addr = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 3, !dbg !140 ; [#uses=2 type=i32*] [debug line = 29:43]
  %phase = load i32* %gaussrand_state.addr, align 4, !dbg !140 ; [#uses=3 type=i32] [debug line = 29:43]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %phase) nounwind
  call void @llvm.dbg.value(metadata !{i32 %phase}, i64 0, metadata !141), !dbg !140 ; [debug line = 29:43] [debug variable = phase]
  %tmp = icmp eq i32 %phase, 0, !dbg !143         ; [#uses=1 type=i1] [debug line = 31:3]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !143 ; [debug line = 31:3]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !144                 ; [debug line = 38:12]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %V2. = phi double [ %V2.2, %2 ], [ undef, %.preheader.preheader ] ; [#uses=2 type=double]
  %V1. = phi double [ %V1, %2 ], [ undef, %.preheader.preheader ] ; [#uses=2 type=double]
  %S1 = phi double [ %S.2, %2 ], [ 0.000000e+00, %.preheader.preheader ] ; [#uses=4 type=double]
  %b2. = phi i64 [ %b2, %2 ], [ undef, %.preheader.preheader ] ; [#uses=1 type=i64]
  %a2. = phi i64 [ %a2, %2 ], [ undef, %.preheader.preheader ] ; [#uses=1 type=i64]
  %b1. = phi i64 [ %b1, %2 ], [ undef, %.preheader.preheader ] ; [#uses=1 type=i64]
  %a1. = phi i64 [ %a1, %2 ], [ undef, %.preheader.preheader ] ; [#uses=1 type=i64]
  %i = phi i32 [ %i.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i32]
  %tmp.29 = icmp slt i32 %i, 10, !dbg !144        ; [#uses=1 type=i1] [debug line = 38:12]
  br i1 %tmp.29, label %1, label %.loopexit, !dbg !144 ; [debug line = 38:12]

; <label>:1                                       ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0)) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !149 ; [debug line = 39:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a1., i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !150 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1., i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !151 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2., i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !152 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2., i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !153 ; [debug line = 43:1]
  %tmp.30 = fcmp oge double %S1, 1.000000e+00, !dbg !154 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.31 = fcmp oeq double %S1, 0.000000e+00, !dbg !154 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond = or i1 %tmp.30, %tmp.31, !dbg !154    ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond, label %2, label %.loopexit, !dbg !154 ; [debug line = 45:2]

; <label>:2                                       ; preds = %1
  %tmp.37 = call fastcc i64 @rand_uint32() nounwind, !dbg !155 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1 = lshr i64 %tmp.37, 5, !dbg !155            ; [#uses=2 type=i64] [debug line = 46:14]
  call void @llvm.dbg.value(metadata !{i64 %a1}, i64 0, metadata !157), !dbg !155 ; [debug line = 46:14] [debug variable = a1]
  %b1 = lshr i64 %tmp.37, 6, !dbg !158            ; [#uses=2 type=i64] [debug line = 47:11]
  call void @llvm.dbg.value(metadata !{i64 %b1}, i64 0, metadata !159), !dbg !158 ; [debug line = 47:11] [debug variable = b1]
  %tmp.38 = uitofp i64 %a1 to double, !dbg !160   ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.39 = fmul double %tmp.38, 0x4190000000000000, !dbg !160 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.40 = uitofp i64 %b1 to double, !dbg !160   ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.41 = fadd double %tmp.39, %tmp.40, !dbg !160 ; [#uses=1 type=double] [debug line = 49:72]
  %U1 = fmul double %tmp.41, 0x3CA0000000000000, !dbg !160 ; [#uses=1 type=double] [debug line = 49:72]
  call void @llvm.dbg.value(metadata !{double %U1}, i64 0, metadata !161), !dbg !160 ; [debug line = 49:72] [debug variable = U1]
  %tmp.42 = call fastcc i64 @rand_uint32() nounwind, !dbg !162 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2 = lshr i64 %tmp.42, 5, !dbg !162            ; [#uses=2 type=i64] [debug line = 51:14]
  call void @llvm.dbg.value(metadata !{i64 %a2}, i64 0, metadata !163), !dbg !162 ; [debug line = 51:14] [debug variable = a2]
  %b2 = lshr i64 %tmp.42, 6, !dbg !164            ; [#uses=2 type=i64] [debug line = 52:11]
  call void @llvm.dbg.value(metadata !{i64 %b2}, i64 0, metadata !165), !dbg !164 ; [debug line = 52:11] [debug variable = b2]
  %tmp.43 = uitofp i64 %a2 to double, !dbg !166   ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.44 = fmul double %tmp.43, 0x4190000000000000, !dbg !166 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.45 = uitofp i64 %b2 to double, !dbg !166   ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.46 = fadd double %tmp.44, %tmp.45, !dbg !166 ; [#uses=1 type=double] [debug line = 54:72]
  %U2 = fmul double %tmp.46, 0x3CA0000000000000, !dbg !166 ; [#uses=1 type=double] [debug line = 54:72]
  call void @llvm.dbg.value(metadata !{double %U2}, i64 0, metadata !167), !dbg !166 ; [debug line = 54:72] [debug variable = U2]
  %tmp.47 = fmul double %U1, 2.000000e+00, !dbg !168 ; [#uses=1 type=double] [debug line = 56:11]
  %V1 = fadd double %tmp.47, -1.000000e+00, !dbg !168 ; [#uses=3 type=double] [debug line = 56:11]
  call void @llvm.dbg.value(metadata !{double %V1}, i64 0, metadata !169), !dbg !168 ; [debug line = 56:11] [debug variable = V1]
  %tmp.48 = fmul double %U2, 2.000000e+00, !dbg !170 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.2 = fadd double %tmp.48, -1.000000e+00, !dbg !170 ; [#uses=3 type=double] [debug line = 57:11]
  call void @llvm.dbg.value(metadata !{double %V2.2}, i64 0, metadata !171), !dbg !170 ; [debug line = 57:11] [debug variable = V2]
  %tmp.49 = fmul double %V1, %V1, !dbg !172       ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.50 = fmul double %V2.2, %V2.2, !dbg !172   ; [#uses=1 type=double] [debug line = 58:11]
  %S.2 = fadd double %tmp.49, %tmp.50, !dbg !172  ; [#uses=1 type=double] [debug line = 58:11]
  call void @llvm.dbg.value(metadata !{double %S.2}, i64 0, metadata !173), !dbg !172 ; [debug line = 58:11] [debug variable = S]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !174 ; [#uses=0 type=i32] [debug line = 62:7]
  %i.1 = add nsw i32 %i, 1, !dbg !175             ; [#uses=1 type=i32] [debug line = 38:27]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !176), !dbg !175 ; [debug line = 38:27] [debug variable = i]
  br label %.preheader, !dbg !175                 ; [debug line = 38:27]

.loopexit:                                        ; preds = %1, %.preheader
  %S.0.lcssa = phi double [ %S1, %1 ], [ %S1, %.preheader ] ; [#uses=3 type=double]
  %V1.05.lcssa = phi double [ %V1., %1 ], [ %V1., %.preheader ] ; [#uses=2 type=double]
  %V2.06.lcssa = phi double [ %V2., %1 ], [ %V2., %.preheader ] ; [#uses=1 type=double]
  %gaussrand_state.addr.3 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 2, !dbg !177 ; [#uses=1 type=double*] [debug line = 77:7]
  store double %S.0.lcssa, double* %gaussrand_state.addr.3, align 8, !dbg !177 ; [debug line = 77:7]
  %gaussrand_state.addr.4 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 0, !dbg !178 ; [#uses=1 type=double*] [debug line = 78:7]
  store double %V1.05.lcssa, double* %gaussrand_state.addr.4, align 8, !dbg !178 ; [debug line = 78:7]
  %gaussrand_state.addr.5 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 1, !dbg !179 ; [#uses=1 type=double*] [debug line = 79:7]
  store double %V2.06.lcssa, double* %gaussrand_state.addr.5, align 8, !dbg !179 ; [debug line = 79:7]
  %tmp.32 = call double @llvm.log.f64(double %S.0.lcssa), !dbg !180 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.33 = fmul double %tmp.32, -2.000000e+00, !dbg !180 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.34 = fdiv double %tmp.33, %S.0.lcssa, !dbg !180 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.35 = call double @llvm.sqrt.f64(double %tmp.34), !dbg !180 ; [#uses=1 type=double] [debug line = 81:29]
  %X.1 = fmul double %V1.05.lcssa, %tmp.35, !dbg !180 ; [#uses=1 type=double] [debug line = 81:29]
  call void @llvm.dbg.value(metadata !{double %X.1}, i64 0, metadata !181), !dbg !180 ; [debug line = 81:29] [debug variable = X]
  br label %4, !dbg !182                          ; [debug line = 82:5]

; <label>:3                                       ; preds = %0
  %gaussrand_state.addr.1 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 2, !dbg !183 ; [#uses=1 type=double*] [debug line = 86:42]
  %S = load double* %gaussrand_state.addr.1, align 8, !dbg !183 ; [#uses=3 type=double] [debug line = 86:42]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %S) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !185), !dbg !183 ; [debug line = 86:42] [debug variable = S]
  %gaussrand_state.addr.2 = getelementptr inbounds %struct._IO_FILE_plus.0* %gaussrand_state, i64 0, i32 1, !dbg !186 ; [#uses=1 type=double*] [debug line = 87:44]
  %V2 = load double* %gaussrand_state.addr.2, align 8, !dbg !186 ; [#uses=2 type=double] [debug line = 87:44]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %V2) nounwind
  call void @llvm.dbg.value(metadata !{double %V2}, i64 0, metadata !187), !dbg !186 ; [debug line = 87:44] [debug variable = V2]
  %tmp.24 = call double @llvm.log.f64(double %S), !dbg !188 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.25 = fmul double %tmp.24, -2.000000e+00, !dbg !188 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.26 = fdiv double %tmp.25, %S, !dbg !188    ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.27 = call double @llvm.sqrt.f64(double %tmp.26), !dbg !188 ; [#uses=1 type=double] [debug line = 89:29]
  %X = fmul double %V2, %tmp.27, !dbg !188        ; [#uses=1 type=double] [debug line = 89:29]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !181), !dbg !188 ; [debug line = 89:29] [debug variable = X]
  br label %4

; <label>:4                                       ; preds = %3, %.loopexit
  %X2 = phi double [ %X.1, %.loopexit ], [ %X, %3 ] ; [#uses=1 type=double]
  %tmp.53 = sub nsw i32 1, %phase, !dbg !189      ; [#uses=1 type=i32] [debug line = 93:3]
  store i32 %tmp.53, i32* %gaussrand_state.addr, align 4, !dbg !189 ; [debug line = 93:3]
  ret double %X2, !dbg !190                       ; [debug line = 94:3]
}

; [#uses=0]
declare double @sqrt(double) nounwind readnone

; [#uses=0]
declare double @log(double) nounwind

; [#uses=1]
define internal fastcc double @mult2_1(double %a, double %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !191), !dbg !192 ; [debug line = 27:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !193), !dbg !194 ; [debug line = 27:33] [debug variable = b]
  %tmp = fmul double %a, %b, !dbg !195            ; [#uses=1 type=double] [debug line = 28:3]
  ret double %tmp, !dbg !195                      ; [debug line = 28:3]
}

; [#uses=1]
define internal fastcc double @mult2_2(double %a, double %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !197), !dbg !198 ; [debug line = 30:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !199), !dbg !200 ; [debug line = 30:33] [debug variable = b]
  %tmp = fmul double %a, %b, !dbg !201            ; [#uses=1 type=double] [debug line = 31:3]
  ret double %tmp, !dbg !201                      ; [debug line = 31:3]
}

; [#uses=1]
define internal fastcc double @mult2_3(double %a, double %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !203), !dbg !204 ; [debug line = 33:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !205), !dbg !206 ; [debug line = 33:33] [debug variable = b]
  %tmp = fmul double %a, %b, !dbg !207            ; [#uses=1 type=double] [debug line = 34:3]
  ret double %tmp, !dbg !207                      ; [debug line = 34:3]
}

; [#uses=1]
define internal fastcc double @expo1(double %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !209), !dbg !210 ; [debug line = 40:21] [debug variable = a]
  %tmp = call double @llvm.exp.f64(double %a), !dbg !211 ; [#uses=1 type=double] [debug line = 41:10]
  ret double %tmp, !dbg !211                      ; [debug line = 41:10]
}

; [#uses=0]
declare double @exp(double) nounwind

; [#uses=0]
define double @black_scholes(double %S, double %E, double %A, double %B, double %rT, %struct._IO_FILE_plus.0* byval align 8 %gaussrand_state) nounwind uwtable {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !213
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !219), !dbg !220 ; [debug line = 50:22] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !221), !dbg !222 ; [debug line = 51:22] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %A}, i64 0, metadata !223), !dbg !224 ; [debug line = 52:22] [debug variable = A]
  call void @llvm.dbg.value(metadata !{double %B}, i64 0, metadata !225), !dbg !226 ; [debug line = 53:22] [debug variable = B]
  call void @llvm.dbg.value(metadata !{double %rT}, i64 0, metadata !227), !dbg !228 ; [debug line = 54:22] [debug variable = rT]
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE_plus.0* %gaussrand_state}, metadata !229), !dbg !230 ; [debug line = 55:27] [debug variable = gaussrand_state]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !231 ; [debug line = 58:1]
  %rand_number = call fastcc double @gaussrand2(%struct._IO_FILE_plus.0* %gaussrand_state), !dbg !233 ; [#uses=2 type=double] [debug line = 60:24]
  call void @llvm.dbg.value(metadata !{double %rand_number}, i64 0, metadata !234), !dbg !233 ; [debug line = 60:24] [debug variable = rand_number]
  call void (...)* @_ssdm_SpecDependence(double %rand_number, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !235 ; [debug line = 61:1]
  %tmp = call fastcc double @mult2_1(double %B, double %rand_number), !dbg !236 ; [#uses=1 type=double] [debug line = 63:8]
  call void @llvm.dbg.value(metadata !{double %tmp}, i64 0, metadata !237), !dbg !236 ; [debug line = 63:8] [debug variable = tmp]
  %tmp.54 = fadd double %tmp, %A, !dbg !238       ; [#uses=1 type=double] [debug line = 64:10]
  %tmp2 = call fastcc double @expo1(double %tmp.54), !dbg !238 ; [#uses=1 type=double] [debug line = 64:10]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !239), !dbg !238 ; [debug line = 64:10] [debug variable = tmp2]
  %tmp3 = call fastcc double @mult2_2(double %S, double %tmp2), !dbg !240 ; [#uses=1 type=double] [debug line = 65:10]
  call void @llvm.dbg.value(metadata !{double %tmp3}, i64 0, metadata !241), !dbg !240 ; [debug line = 65:10] [debug variable = tmp3]
  %tmp.55 = fsub double %tmp3, %E, !dbg !242      ; [#uses=2 type=double] [debug line = 66:3]
  %tmp.56 = fcmp olt double %tmp.55, 0.000000e+00, !dbg !242 ; [#uses=1 type=i1] [debug line = 66:3]
  %tmp4 = select i1 %tmp.56, double 0.000000e+00, double %tmp.55, !dbg !242 ; [#uses=1 type=double] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{double %tmp4}, i64 0, metadata !243), !dbg !242 ; [debug line = 66:3] [debug variable = tmp4]
  %tmp5 = call fastcc double @mult2_3(double %rT, double %tmp4), !dbg !244 ; [#uses=1 type=double] [debug line = 67:10]
  call void @llvm.dbg.value(metadata !{double %tmp5}, i64 0, metadata !245), !dbg !244 ; [debug line = 67:10] [debug variable = tmp5]
  ret double %tmp5, !dbg !246                     ; [debug line = 69:3]
}

; [#uses=48]
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
declare void @init_gaussrand_state(%struct._IO_FILE_plus.0*) nounwind uwtable

; [#uses=0]
declare double @div_1(double, double) nounwind uwtable

; [#uses=0]
declare double @sqrt1(double) nounwind uwtable

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=2]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.log.f64(double) nounwind readonly

; [#uses=1]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
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
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !6, i32 95, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N, null, null, metadata !10, i32 96} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !6, i32 103, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N_p1, null, null, metadata !10, i32 104} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !6, i32 111, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @mod_N_pm, null, null, metadata !10, i32 112} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !6, i32 122, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @rand_uint32, null, null, metadata !10, i32 123} ; [ DW_TAG_subprogram ]
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
!41 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/gaussian.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !42, metadata !61} ; [ DW_TAG_compile_unit ]
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44, metadata !58}
!44 = metadata !{i32 786478, i32 0, metadata !45, metadata !"init_gaussrand_state", metadata !"init_gaussrand_state", metadata !"", metadata !45, i32 7, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE_plus.0*)* @init_gaussrand_state, null, null, metadata !10, i32 8} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !48}
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !45, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !51, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!51 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!52 = metadata !{metadata !53, metadata !55, metadata !56, metadata !57}
!53 = metadata !{i32 786445, metadata !50, metadata !"V1", metadata !51, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786445, metadata !50, metadata !"V2", metadata !51, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ]
!56 = metadata !{i32 786445, metadata !50, metadata !"S", metadata !51, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !54} ; [ DW_TAG_member ]
!57 = metadata !{i32 786445, metadata !50, metadata !"phase", metadata !51, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!58 = metadata !{i32 786478, i32 0, metadata !45, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !45, i32 18, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct._IO_FILE_plus.0*)* @gaussrand2, null, null, metadata !10, i32 19} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !54, metadata !48}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !63, metadata !65, metadata !68, metadata !69, metadata !70}
!63 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !64, i32 157, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !66, i32 343, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !66, i32 341, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !66, i32 344, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !66, i32 345, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !71, i32 27, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!72 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump/hls.prj/solution1/.autopilot/db/black_scholes.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !73, metadata !61} ; [ DW_TAG_compile_unit ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86}
!75 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !76, i32 27, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_1, null, null, metadata !10, i32 27} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786473, metadata !"black_scholes.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !54, metadata !54, metadata !54}
!79 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !76, i32 30, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_2, null, null, metadata !10, i32 30} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !76, i32 33, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_3, null, null, metadata !10, i32 33} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !76, metadata !"div_1", metadata !"div_1", metadata !"", metadata !76, i32 36, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @div_1, null, null, metadata !10, i32 36} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786478, i32 0, metadata !76, metadata !"expo1", metadata !"expo1", metadata !"", metadata !76, i32 40, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @expo1, null, null, metadata !10, i32 40} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !54, metadata !54}
!85 = metadata !{i32 786478, i32 0, metadata !76, metadata !"sqrt1", metadata !"sqrt1", metadata !"", metadata !76, i32 44, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sqrt1, null, null, metadata !10, i32 44} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes", metadata !"black_scholes", metadata !"", metadata !76, i32 49, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double, double, double, double, %struct._IO_FILE_plus.0*)* @black_scholes, null, null, metadata !10, i32 57} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !54, metadata !89, metadata !89, metadata !89, metadata !89, metadata !89, metadata !90}
!89 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ]
!90 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !76, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ]
!91 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !51, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96}
!93 = metadata !{i32 786445, metadata !91, metadata !"V1", metadata !51, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ]
!94 = metadata !{i32 786445, metadata !91, metadata !"V2", metadata !51, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ]
!95 = metadata !{i32 786445, metadata !91, metadata !"S", metadata !51, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !54} ; [ DW_TAG_member ]
!96 = metadata !{i32 786445, metadata !91, metadata !"phase", metadata !51, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!97 = metadata !{i32 786689, metadata !20, metadata !"a", metadata !6, i32 16777311, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 95, i32 37, metadata !20, null}
!99 = metadata !{i32 97, i32 2, metadata !100, null}
!100 = metadata !{i32 786443, metadata !20, i32 96, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 98, i32 3, metadata !100, null}
!102 = metadata !{i32 101, i32 1, metadata !100, null}
!103 = metadata !{i32 786689, metadata !24, metadata !"a", metadata !6, i32 16777319, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 103, i32 40, metadata !24, null}
!105 = metadata !{i32 105, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !24, i32 104, i32 1, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 106, i32 3, metadata !106, null}
!108 = metadata !{i32 109, i32 1, metadata !106, null}
!109 = metadata !{i32 786689, metadata !25, metadata !"a", metadata !6, i32 16777327, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 111, i32 40, metadata !25, null}
!111 = metadata !{i32 113, i32 2, metadata !112, null}
!112 = metadata !{i32 786443, metadata !25, i32 112, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 114, i32 3, metadata !112, null}
!114 = metadata !{i32 117, i32 1, metadata !112, null}
!115 = metadata !{i32 128, i32 1, metadata !116, null}
!116 = metadata !{i32 786443, metadata !26, i32 123, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 129, i32 1, metadata !116, null}
!118 = metadata !{i32 134, i32 2, metadata !116, null}
!119 = metadata !{i32 786688, metadata !116, metadata !"y", metadata !6, i32 131, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 135, i32 2, metadata !116, null}
!121 = metadata !{i32 786688, metadata !116, metadata !"mag01", metadata !6, i32 131, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 136, i32 2, metadata !116, null}
!123 = metadata !{i32 786688, metadata !116, metadata !"mt_kk_new", metadata !6, i32 131, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 139, i32 2, metadata !116, null}
!125 = metadata !{i32 140, i32 2, metadata !116, null}
!126 = metadata !{i32 141, i32 2, metadata !116, null}
!127 = metadata !{i32 144, i32 2, metadata !116, null}
!128 = metadata !{i32 145, i32 2, metadata !116, null}
!129 = metadata !{i32 146, i32 2, metadata !116, null}
!130 = metadata !{i32 147, i32 2, metadata !116, null}
!131 = metadata !{i32 148, i32 2, metadata !116, null}
!132 = metadata !{i32 151, i32 7, metadata !116, null}
!133 = metadata !{i32 152, i32 10, metadata !116, null}
!134 = metadata !{i32 153, i32 10, metadata !116, null}
!135 = metadata !{i32 155, i32 2, metadata !116, null}
!136 = metadata !{i32 786689, metadata !58, metadata !"gaussrand_state", metadata !45, i32 16777234, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 18, i32 39, metadata !58, null}
!138 = metadata !{i32 24, i32 1, metadata !139, null}
!139 = metadata !{i32 786443, metadata !58, i32 19, i32 1, metadata !45, i32 2} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 29, i32 43, metadata !139, null}
!141 = metadata !{i32 786688, metadata !139, metadata !"phase", metadata !45, i32 29, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!143 = metadata !{i32 31, i32 3, metadata !139, null}
!144 = metadata !{i32 38, i32 12, metadata !145, null}
!145 = metadata !{i32 786443, metadata !146, i32 38, i32 7, metadata !45, i32 4} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !139, i32 32, i32 5, metadata !45, i32 3} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 38, i32 33, metadata !148, null}
!148 = metadata !{i32 786443, metadata !145, i32 38, i32 32, metadata !45, i32 5} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 39, i32 1, metadata !148, null}
!150 = metadata !{i32 40, i32 1, metadata !148, null}
!151 = metadata !{i32 41, i32 1, metadata !148, null}
!152 = metadata !{i32 42, i32 1, metadata !148, null}
!153 = metadata !{i32 43, i32 1, metadata !148, null}
!154 = metadata !{i32 45, i32 2, metadata !148, null}
!155 = metadata !{i32 46, i32 14, metadata !156, null}
!156 = metadata !{i32 786443, metadata !148, i32 45, i32 24, metadata !45, i32 6} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786688, metadata !139, metadata !"a1", metadata !45, i32 27, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 47, i32 11, metadata !156, null}
!159 = metadata !{i32 786688, metadata !139, metadata !"b1", metadata !45, i32 27, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 49, i32 72, metadata !156, null}
!161 = metadata !{i32 786688, metadata !156, metadata !"U1", metadata !45, i32 49, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 51, i32 14, metadata !156, null}
!163 = metadata !{i32 786688, metadata !139, metadata !"a2", metadata !45, i32 27, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 52, i32 11, metadata !156, null}
!165 = metadata !{i32 786688, metadata !139, metadata !"b2", metadata !45, i32 27, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 54, i32 72, metadata !156, null}
!167 = metadata !{i32 786688, metadata !156, metadata !"U2", metadata !45, i32 54, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 56, i32 11, metadata !156, null}
!169 = metadata !{i32 786688, metadata !146, metadata !"V1", metadata !45, i32 33, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 57, i32 11, metadata !156, null}
!171 = metadata !{i32 786688, metadata !146, metadata !"V2", metadata !45, i32 33, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 58, i32 11, metadata !156, null}
!173 = metadata !{i32 786688, metadata !146, metadata !"S", metadata !45, i32 33, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 62, i32 7, metadata !148, null}
!175 = metadata !{i32 38, i32 27, metadata !145, null}
!176 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !45, i32 34, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 77, i32 7, metadata !146, null}
!178 = metadata !{i32 78, i32 7, metadata !146, null}
!179 = metadata !{i32 79, i32 7, metadata !146, null}
!180 = metadata !{i32 81, i32 29, metadata !146, null}
!181 = metadata !{i32 786688, metadata !139, metadata !"X", metadata !45, i32 26, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 82, i32 5, metadata !146, null}
!183 = metadata !{i32 86, i32 42, metadata !184, null}
!184 = metadata !{i32 786443, metadata !139, i32 84, i32 5, metadata !45, i32 8} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !184, metadata !"S", metadata !45, i32 86, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 87, i32 44, metadata !184, null}
!187 = metadata !{i32 786688, metadata !184, metadata !"V2", metadata !45, i32 87, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 89, i32 29, metadata !184, null}
!189 = metadata !{i32 93, i32 3, metadata !139, null}
!190 = metadata !{i32 94, i32 3, metadata !139, null}
!191 = metadata !{i32 786689, metadata !75, metadata !"a", metadata !76, i32 16777243, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 27, i32 23, metadata !75, null}
!193 = metadata !{i32 786689, metadata !75, metadata !"b", metadata !76, i32 33554459, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 27, i32 33, metadata !75, null}
!195 = metadata !{i32 28, i32 3, metadata !196, null}
!196 = metadata !{i32 786443, metadata !75, i32 27, i32 35, metadata !76, i32 0} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786689, metadata !79, metadata !"a", metadata !76, i32 16777246, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 30, i32 23, metadata !79, null}
!199 = metadata !{i32 786689, metadata !79, metadata !"b", metadata !76, i32 33554462, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 30, i32 33, metadata !79, null}
!201 = metadata !{i32 31, i32 3, metadata !202, null}
!202 = metadata !{i32 786443, metadata !79, i32 30, i32 35, metadata !76, i32 1} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 786689, metadata !80, metadata !"a", metadata !76, i32 16777249, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 33, i32 23, metadata !80, null}
!205 = metadata !{i32 786689, metadata !80, metadata !"b", metadata !76, i32 33554465, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 33, i32 33, metadata !80, null}
!207 = metadata !{i32 34, i32 3, metadata !208, null}
!208 = metadata !{i32 786443, metadata !80, i32 33, i32 35, metadata !76, i32 2} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 786689, metadata !82, metadata !"a", metadata !76, i32 16777256, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 40, i32 21, metadata !82, null}
!211 = metadata !{i32 41, i32 10, metadata !212, null}
!212 = metadata !{i32 786443, metadata !82, i32 40, i32 23, metadata !76, i32 4} ; [ DW_TAG_lexical_block ]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 63, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"return", metadata !217, metadata !""}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 1, i32 0}
!219 = metadata !{i32 786689, metadata !86, metadata !"S", metadata !76, i32 16777266, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 50, i32 22, metadata !86, null}
!221 = metadata !{i32 786689, metadata !86, metadata !"E", metadata !76, i32 33554483, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 51, i32 22, metadata !86, null}
!223 = metadata !{i32 786689, metadata !86, metadata !"A", metadata !76, i32 50331700, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 52, i32 22, metadata !86, null}
!225 = metadata !{i32 786689, metadata !86, metadata !"B", metadata !76, i32 67108917, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!226 = metadata !{i32 53, i32 22, metadata !86, null}
!227 = metadata !{i32 786689, metadata !86, metadata !"rT", metadata !76, i32 83886134, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 54, i32 22, metadata !86, null}
!229 = metadata !{i32 786689, metadata !86, metadata !"gaussrand_state", metadata !76, i32 100663351, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!230 = metadata !{i32 55, i32 27, metadata !86, null}
!231 = metadata !{i32 58, i32 1, metadata !232, null}
!232 = metadata !{i32 786443, metadata !86, i32 57, i32 1, metadata !76, i32 6} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 60, i32 24, metadata !232, null}
!234 = metadata !{i32 786688, metadata !232, metadata !"rand_number", metadata !76, i32 60, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 61, i32 1, metadata !232, null}
!236 = metadata !{i32 63, i32 8, metadata !232, null}
!237 = metadata !{i32 786688, metadata !232, metadata !"tmp", metadata !76, i32 59, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 64, i32 10, metadata !232, null}
!239 = metadata !{i32 786688, metadata !232, metadata !"tmp2", metadata !76, i32 59, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 65, i32 10, metadata !232, null}
!241 = metadata !{i32 786688, metadata !232, metadata !"tmp3", metadata !76, i32 59, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 66, i32 3, metadata !232, null}
!243 = metadata !{i32 786688, metadata !232, metadata !"tmp4", metadata !76, i32 59, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 67, i32 10, metadata !232, null}
!245 = metadata !{i32 786688, metadata !232, metadata !"tmp5", metadata !76, i32 59, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 69, i32 3, metadata !232, null}
