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
@.str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str24 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=20 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [14 x i8] c"black_scholes\00" ; [#uses=1 type=[14 x i8]*]

; [#uses=20]
define internal fastcc i64 @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !34 ; [debug line = 128:1]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 1, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !41 ; [debug line = 129:1]
  %kk.load = load i16* @kk, align 2, !dbg !42     ; [#uses=3 type=i16] [debug line = 134:2]
  %tmp = zext i16 %kk.load to i64, !dbg !42       ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kk.addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !42 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kk.load = load i64* %mt_kk.addr, align 8, !dbg !42 ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kk.load.cast = trunc i64 %mt_kk.load to i32, !dbg !42 ; [#uses=1 type=i32] [debug line = 134:2]
  %tmp.4 = and i32 %mt_kk.load.cast, -2147483648, !dbg !42 ; [#uses=1 type=i32] [debug line = 134:2]
  %kk_p1.load = load i16* @kk_p1, align 2, !dbg !42 ; [#uses=3 type=i16] [debug line = 134:2]
  %tmp.5 = zext i16 %kk_p1.load to i64, !dbg !42  ; [#uses=1 type=i64] [debug line = 134:2]
  %mt_kkp1.addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp.5, !dbg !42 ; [#uses=2 type=i64*] [debug line = 134:2]
  %mt_kkp1.load = load i64* %mt_kkp1.addr, align 8, !dbg !42 ; [#uses=2 type=i64] [debug line = 134:2]
  %mt_kkp1.load.cast2 = trunc i64 %mt_kkp1.load to i1, !dbg !42 ; [#uses=1 type=i1] [debug line = 134:2]
  %mt_kkp1.load.cast = trunc i64 %mt_kkp1.load to i31, !dbg !42 ; [#uses=1 type=i31] [debug line = 134:2]
  %tmp.1 = call i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32 %tmp.4, i32 31, i32 31) ; [#uses=1 type=i1]
  %y = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %tmp.1, i31 %mt_kkp1.load.cast), !dbg !42 ; [#uses=1 type=i32] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !43), !dbg !42 ; [debug line = 134:2] [debug variable = y]
  %mag01.cast = select i1 %mt_kkp1.load.cast2, i64 2567483615, i64 0, !dbg !44 ; [#uses=1 type=i64] [debug line = 135:2]
  %kk_pm.load = load i16* @kk_pm, align 2, !dbg !45 ; [#uses=3 type=i16] [debug line = 136:2]
  %tmp.9 = zext i16 %kk_pm.load to i64, !dbg !45  ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kkpm.addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp.9, !dbg !45 ; [#uses=2 type=i64*] [debug line = 136:2]
  %mt_kkpm.load = load i64* %mt_kkpm.addr, align 8, !dbg !45 ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp. = lshr i32 %y, 1, !dbg !45                ; [#uses=1 type=i32] [debug line = 136:2]
  %tmp..cast = zext i32 %tmp. to i64, !dbg !45    ; [#uses=1 type=i64] [debug line = 136:2]
  %tmp1 = xor i64 %mag01.cast, %mt_kkpm.load, !dbg !45 ; [#uses=1 type=i64] [debug line = 136:2]
  %mt_kk_new = xor i64 %tmp1, %tmp..cast, !dbg !45 ; [#uses=5 type=i64] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !46), !dbg !45 ; [debug line = 136:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk.addr, align 8, !dbg !47 ; [debug line = 139:2]
  store i64 %mt_kk_new, i64* %mt_kkp1.addr, align 8, !dbg !48 ; [debug line = 140:2]
  store i64 %mt_kk_new, i64* %mt_kkpm.addr, align 8, !dbg !49 ; [debug line = 141:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !43), !dbg !50 ; [debug line = 144:2] [debug variable = y]
  %tmp.2 = lshr i64 %mt_kk_new, 11, !dbg !51      ; [#uses=1 type=i64] [debug line = 145:2]
  %y.2 = xor i64 %tmp.2, %mt_kk_new, !dbg !51     ; [#uses=2 type=i64] [debug line = 145:2]
  %y.2.cast = trunc i64 %y.2 to i32, !dbg !51     ; [#uses=1 type=i32] [debug line = 145:2]
  call void @llvm.dbg.value(metadata !{i64 %y.2}, i64 0, metadata !43), !dbg !51 ; [debug line = 145:2] [debug variable = y]
  %tmp.3 = shl i32 %y.2.cast, 7, !dbg !52         ; [#uses=1 type=i32] [debug line = 146:2]
  %tmp.6 = and i32 %tmp.3, -1658038656, !dbg !52  ; [#uses=1 type=i32] [debug line = 146:2]
  %tmp.10.cast = zext i32 %tmp.6 to i64, !dbg !52 ; [#uses=1 type=i64] [debug line = 146:2]
  %y.3 = xor i64 %tmp.10.cast, %y.2, !dbg !52     ; [#uses=2 type=i64] [debug line = 146:2]
  %y.3.cast = trunc i64 %y.3 to i32, !dbg !52     ; [#uses=1 type=i32] [debug line = 146:2]
  call void @llvm.dbg.value(metadata !{i64 %y.3}, i64 0, metadata !43), !dbg !52 ; [debug line = 146:2] [debug variable = y]
  %tmp.7 = shl i32 %y.3.cast, 15, !dbg !53        ; [#uses=1 type=i32] [debug line = 147:2]
  %tmp.8 = and i32 %tmp.7, -272236544, !dbg !53   ; [#uses=1 type=i32] [debug line = 147:2]
  %tmp.12.cast = zext i32 %tmp.8 to i64, !dbg !53 ; [#uses=1 type=i64] [debug line = 147:2]
  %y.4 = xor i64 %tmp.12.cast, %y.3, !dbg !53     ; [#uses=2 type=i64] [debug line = 147:2]
  call void @llvm.dbg.value(metadata !{i64 %y.4}, i64 0, metadata !43), !dbg !53 ; [debug line = 147:2] [debug variable = y]
  %tmp.10 = lshr i64 %y.4, 18, !dbg !54           ; [#uses=1 type=i64] [debug line = 148:2]
  %y.5 = xor i64 %tmp.10, %y.4, !dbg !54          ; [#uses=1 type=i64] [debug line = 148:2]
  call void @llvm.dbg.value(metadata !{i64 %y.5}, i64 0, metadata !43), !dbg !54 ; [debug line = 148:2] [debug variable = y]
  %a.assign = add i16 %kk.load, 1, !dbg !55       ; [#uses=2 type=i16] [debug line = 151:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !56), !dbg !60 ; [debug line = 95:37@151:7] [debug variable = a]
  %tmp.i = icmp ugt i16 %a.assign, 623, !dbg !61  ; [#uses=1 type=i1] [debug line = 97:2@151:7]
  %tmp.1.i = add i16 %kk.load, -623, !dbg !63     ; [#uses=1 type=i16] [debug line = 98:3@151:7]
  %a.assign.1 = select i1 %tmp.i, i16 %tmp.1.i, i16 %a.assign, !dbg !61 ; [#uses=1 type=i16] [debug line = 97:2@151:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.1}, i64 0, metadata !56), !dbg !61 ; [debug line = 97:2@151:7] [debug variable = a]
  store i16 %a.assign.1, i16* @kk, align 2, !dbg !55 ; [debug line = 151:7]
  %a.assign.2 = add i16 %kk_p1.load, 1, !dbg !64  ; [#uses=2 type=i16] [debug line = 152:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.2}, i64 0, metadata !65), !dbg !67 ; [debug line = 103:40@152:10] [debug variable = a]
  %tmp.i1 = icmp ugt i16 %a.assign.2, 623, !dbg !68 ; [#uses=1 type=i1] [debug line = 105:2@152:10]
  %tmp.2.i = add i16 %kk_p1.load, -623, !dbg !70  ; [#uses=1 type=i16] [debug line = 106:3@152:10]
  %a.assign.3 = select i1 %tmp.i1, i16 %tmp.2.i, i16 %a.assign.2, !dbg !68 ; [#uses=1 type=i16] [debug line = 105:2@152:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.3}, i64 0, metadata !65), !dbg !68 ; [debug line = 105:2@152:10] [debug variable = a]
  store i16 %a.assign.3, i16* @kk_p1, align 2, !dbg !64 ; [debug line = 152:10]
  %a.assign.4 = add i16 %kk_pm.load, 1, !dbg !71  ; [#uses=2 type=i16] [debug line = 153:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.4}, i64 0, metadata !72), !dbg !74 ; [debug line = 111:40@153:10] [debug variable = a]
  %tmp.i3 = icmp ugt i16 %a.assign.4, 623, !dbg !75 ; [#uses=1 type=i1] [debug line = 113:2@153:10]
  %tmp.3.i = add i16 %kk_pm.load, -623, !dbg !77  ; [#uses=1 type=i16] [debug line = 114:3@153:10]
  %a.assign.5 = select i1 %tmp.i3, i16 %tmp.3.i, i16 %a.assign.4, !dbg !75 ; [#uses=1 type=i16] [debug line = 113:2@153:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.5}, i64 0, metadata !72), !dbg !75 ; [debug line = 113:2@153:10] [debug variable = a]
  store i16 %a.assign.5, i16* @kk_pm, align 2, !dbg !71 ; [debug line = 153:10]
  ret i64 %y.5, !dbg !78                          ; [debug line = 155:2]
}

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=42]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
define internal fastcc double @gaussrand2(double %gaussrand_state.V2.read, double %gaussrand_state.S.read, i32 %gaussrand_state.phase.read) {
  call void @llvm.dbg.value(metadata !{double %gaussrand_state.V2.read}, i64 0, metadata !79), !dbg !98 ; [debug line = 18:39] [debug variable = gaussrand_state.V2]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state.S.read}, i64 0, metadata !99), !dbg !98 ; [debug line = 18:39] [debug variable = gaussrand_state.S]
  call void @llvm.dbg.value(metadata !{i32 %gaussrand_state.phase.read}, i64 0, metadata !103), !dbg !98 ; [debug line = 18:39] [debug variable = gaussrand_state.phase]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str13) nounwind, !dbg !107 ; [debug line = 24:1]
  call void @llvm.dbg.value(metadata !{i32 %gaussrand_state.phase.read}, i64 0, metadata !109), !dbg !111 ; [debug line = 29:43] [debug variable = phase]
  %tmp = icmp eq i32 %gaussrand_state.phase.read, 0, !dbg !112 ; [#uses=1 type=i1] [debug line = 31:3]
  br i1 %tmp, label %.preheader.0, label %11, !dbg !112 ; [debug line = 31:3]

.preheader.0:                                     ; preds = %0
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 undef, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 undef, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 undef, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 undef, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.11 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1 = lshr i64 %tmp.11, 5, !dbg !121            ; [#uses=2 type=i64] [debug line = 46:14]
  %b1 = lshr i64 %tmp.11, 6, !dbg !123            ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.12 = uitofp i64 %a1 to double, !dbg !124   ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.13 = fmul double %tmp.12, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.14 = uitofp i64 %b1 to double, !dbg !124   ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.15 = fadd double %tmp.13, %tmp.14, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1 = fmul double %tmp.15, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.16 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2 = lshr i64 %tmp.16, 5, !dbg !125            ; [#uses=2 type=i64] [debug line = 51:14]
  %b2 = lshr i64 %tmp.16, 6, !dbg !126            ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.17 = uitofp i64 %a2 to double, !dbg !127   ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.18 = fmul double %tmp.17, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.19 = uitofp i64 %b2 to double, !dbg !127   ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.27 = fadd double %tmp.18, %tmp.19, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2 = fmul double %tmp.27, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.28 = fmul double %U1, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1 = fadd double %tmp.28, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.29 = fmul double %U2, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1 = fadd double %tmp.29, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.30 = fmul double %V1, %V1, !dbg !130       ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.31 = fmul double %V2.1, %V2.1, !dbg !130   ; [#uses=1 type=double] [debug line = 58:11]
  %S.1 = fadd double %tmp.30, %tmp.31, !dbg !130  ; [#uses=3 type=double] [debug line = 58:11]
  %1 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.1), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.1 = fcmp oge double %S.1, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.1 = fcmp oeq double %S.1, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.1 = or i1 %tmp.24.1, %tmp.25.1, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.1, label %.preheader.2, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.2:                                     ; preds = %.preheader.0
  %tmp.30.1 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.1 = lshr i64 %tmp.30.1, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.1 = lshr i64 %tmp.30.1, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.1 = uitofp i64 %a1.1 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.1 = fmul double %tmp.31.1, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.1 = uitofp i64 %b1.1 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.1 = fadd double %tmp.32.1, %tmp.33.1, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.1 = fmul double %tmp.34.1, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.1 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.1 = lshr i64 %tmp.35.1, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.1 = lshr i64 %tmp.35.1, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.1 = uitofp i64 %a2.1 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.1 = fmul double %tmp.36.1, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.1 = uitofp i64 %b2.1 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.1 = fadd double %tmp.37.1, %tmp.38.1, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.1 = fmul double %tmp.39.1, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.1 = fmul double %U1.1, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.1 = fadd double %tmp.40.1, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.1 = fmul double %U2.1, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.1 = fadd double %tmp.41.1, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.1 = fmul double %V1.1, %V1.1, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.1 = fmul double %V2.1.1, %V2.1.1, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.1 = fadd double %tmp.42.1, %tmp.43.1, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.2), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.1, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.2 = fcmp oge double %S.1.1, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.2 = fcmp oeq double %S.1.1, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.2 = or i1 %tmp.24.2, %tmp.25.2, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.2, label %.preheader.3, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.3:                                     ; preds = %.preheader.2
  %tmp.30.2 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.2 = lshr i64 %tmp.30.2, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.2 = lshr i64 %tmp.30.2, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.2 = uitofp i64 %a1.2 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.2 = fmul double %tmp.31.2, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.2 = uitofp i64 %b1.2 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.2 = fadd double %tmp.32.2, %tmp.33.2, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.2 = fmul double %tmp.34.2, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.2 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.2 = lshr i64 %tmp.35.2, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.2 = lshr i64 %tmp.35.2, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.2 = uitofp i64 %a2.2 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.2 = fmul double %tmp.36.2, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.2 = uitofp i64 %b2.2 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.2 = fadd double %tmp.37.2, %tmp.38.2, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.2 = fmul double %tmp.39.2, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.2 = fmul double %U1.2, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.2 = fadd double %tmp.40.2, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.2 = fmul double %U2.2, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.2 = fadd double %tmp.41.2, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.2 = fmul double %V1.2, %V1.2, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.2 = fmul double %V2.1.2, %V2.1.2, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.2 = fadd double %tmp.42.2, %tmp.43.2, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.3), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.2, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.3 = fcmp oge double %S.1.2, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.3 = fcmp oeq double %S.1.2, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.3 = or i1 %tmp.24.3, %tmp.25.3, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.3, label %.preheader.4, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.4:                                     ; preds = %.preheader.3
  %tmp.30.3 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.3 = lshr i64 %tmp.30.3, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.3 = lshr i64 %tmp.30.3, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.3 = uitofp i64 %a1.3 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.3 = fmul double %tmp.31.3, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.3 = uitofp i64 %b1.3 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.3 = fadd double %tmp.32.3, %tmp.33.3, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.3 = fmul double %tmp.34.3, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.3 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.3 = lshr i64 %tmp.35.3, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.3 = lshr i64 %tmp.35.3, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.3 = uitofp i64 %a2.3 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.3 = fmul double %tmp.36.3, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.3 = uitofp i64 %b2.3 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.3 = fadd double %tmp.37.3, %tmp.38.3, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.3 = fmul double %tmp.39.3, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.3 = fmul double %U1.3, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.3 = fadd double %tmp.40.3, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.3 = fmul double %U2.3, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.3 = fadd double %tmp.41.3, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.3 = fmul double %V1.3, %V1.3, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.3 = fmul double %V2.1.3, %V2.1.3, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.3 = fadd double %tmp.42.3, %tmp.43.3, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.4), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.3, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.3, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.3, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.3, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.4 = fcmp oge double %S.1.3, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.4 = fcmp oeq double %S.1.3, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.4 = or i1 %tmp.24.4, %tmp.25.4, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.4, label %.preheader.5, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.5:                                     ; preds = %.preheader.4
  %tmp.30.4 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.4 = lshr i64 %tmp.30.4, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.4 = lshr i64 %tmp.30.4, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.4 = uitofp i64 %a1.4 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.4 = fmul double %tmp.31.4, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.4 = uitofp i64 %b1.4 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.4 = fadd double %tmp.32.4, %tmp.33.4, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.4 = fmul double %tmp.34.4, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.4 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.4 = lshr i64 %tmp.35.4, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.4 = lshr i64 %tmp.35.4, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.4 = uitofp i64 %a2.4 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.4 = fmul double %tmp.36.4, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.4 = uitofp i64 %b2.4 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.4 = fadd double %tmp.37.4, %tmp.38.4, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.4 = fmul double %tmp.39.4, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.4 = fmul double %U1.4, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.4 = fadd double %tmp.40.4, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.4 = fmul double %U2.4, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.4 = fadd double %tmp.41.4, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.4 = fmul double %V1.4, %V1.4, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.4 = fmul double %V2.1.4, %V2.1.4, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.4 = fadd double %tmp.42.4, %tmp.43.4, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.5), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.4, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.4, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.4, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.4, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.5 = fcmp oge double %S.1.4, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.5 = fcmp oeq double %S.1.4, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.5 = or i1 %tmp.24.5, %tmp.25.5, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.5, label %.preheader.6, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.6:                                     ; preds = %.preheader.5
  %tmp.30.5 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.5 = lshr i64 %tmp.30.5, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.5 = lshr i64 %tmp.30.5, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.5 = uitofp i64 %a1.5 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.5 = fmul double %tmp.31.5, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.5 = uitofp i64 %b1.5 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.5 = fadd double %tmp.32.5, %tmp.33.5, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.5 = fmul double %tmp.34.5, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.5 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.5 = lshr i64 %tmp.35.5, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.5 = lshr i64 %tmp.35.5, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.5 = uitofp i64 %a2.5 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.5 = fmul double %tmp.36.5, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.5 = uitofp i64 %b2.5 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.5 = fadd double %tmp.37.5, %tmp.38.5, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.5 = fmul double %tmp.39.5, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.5 = fmul double %U1.5, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.5 = fadd double %tmp.40.5, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.5 = fmul double %U2.5, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.5 = fadd double %tmp.41.5, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.5 = fmul double %V1.5, %V1.5, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.5 = fmul double %V2.1.5, %V2.1.5, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.5 = fadd double %tmp.42.5, %tmp.43.5, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.6), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.5, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.5, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.5, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.5, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.6 = fcmp oge double %S.1.5, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.6 = fcmp oeq double %S.1.5, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.6 = or i1 %tmp.24.6, %tmp.25.6, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.6, label %.preheader.7, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.7:                                     ; preds = %.preheader.6
  %tmp.30.6 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.6 = lshr i64 %tmp.30.6, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.6 = lshr i64 %tmp.30.6, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.6 = uitofp i64 %a1.6 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.6 = fmul double %tmp.31.6, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.6 = uitofp i64 %b1.6 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.6 = fadd double %tmp.32.6, %tmp.33.6, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.6 = fmul double %tmp.34.6, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.6 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.6 = lshr i64 %tmp.35.6, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.6 = lshr i64 %tmp.35.6, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.6 = uitofp i64 %a2.6 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.6 = fmul double %tmp.36.6, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.6 = uitofp i64 %b2.6 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.6 = fadd double %tmp.37.6, %tmp.38.6, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.6 = fmul double %tmp.39.6, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.6 = fmul double %U1.6, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.6 = fadd double %tmp.40.6, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.6 = fmul double %U2.6, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.6 = fadd double %tmp.41.6, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.6 = fmul double %V1.6, %V1.6, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.6 = fmul double %V2.1.6, %V2.1.6, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.6 = fadd double %tmp.42.6, %tmp.43.6, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.7), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.6, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.6, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.6, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.6, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.7 = fcmp oge double %S.1.6, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.7 = fcmp oeq double %S.1.6, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.7 = or i1 %tmp.24.7, %tmp.25.7, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.7, label %.preheader.8, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.8:                                     ; preds = %.preheader.7
  %tmp.30.7 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.7 = lshr i64 %tmp.30.7, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.7 = lshr i64 %tmp.30.7, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.7 = uitofp i64 %a1.7 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.7 = fmul double %tmp.31.7, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.7 = uitofp i64 %b1.7 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.7 = fadd double %tmp.32.7, %tmp.33.7, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.7 = fmul double %tmp.34.7, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.7 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.7 = lshr i64 %tmp.35.7, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.7 = lshr i64 %tmp.35.7, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.7 = uitofp i64 %a2.7 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.7 = fmul double %tmp.36.7, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.7 = uitofp i64 %b2.7 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.7 = fadd double %tmp.37.7, %tmp.38.7, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.7 = fmul double %tmp.39.7, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.7 = fmul double %U1.7, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.7 = fadd double %tmp.40.7, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.7 = fmul double %U2.7, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.7 = fadd double %tmp.41.7, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.7 = fmul double %V1.7, %V1.7, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.7 = fmul double %V2.1.7, %V2.1.7, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.7 = fadd double %tmp.42.7, %tmp.43.7, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.8), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.7, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.7, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.7, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.7, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.8 = fcmp oge double %S.1.7, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.8 = fcmp oeq double %S.1.7, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.8 = or i1 %tmp.24.8, %tmp.25.8, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.8, label %.preheader.9, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.9:                                     ; preds = %.preheader.8
  %tmp.30.8 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.8 = lshr i64 %tmp.30.8, 5, !dbg !121        ; [#uses=2 type=i64] [debug line = 46:14]
  %b1.8 = lshr i64 %tmp.30.8, 6, !dbg !123        ; [#uses=2 type=i64] [debug line = 47:11]
  %tmp.31.8 = uitofp i64 %a1.8 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.8 = fmul double %tmp.31.8, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.8 = uitofp i64 %b1.8 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.8 = fadd double %tmp.32.8, %tmp.33.8, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.8 = fmul double %tmp.34.8, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.8 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.8 = lshr i64 %tmp.35.8, 5, !dbg !125        ; [#uses=2 type=i64] [debug line = 51:14]
  %b2.8 = lshr i64 %tmp.35.8, 6, !dbg !126        ; [#uses=2 type=i64] [debug line = 52:11]
  %tmp.36.8 = uitofp i64 %a2.8 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.8 = fmul double %tmp.36.8, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.8 = uitofp i64 %b2.8 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.8 = fadd double %tmp.37.8, %tmp.38.8, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.8 = fmul double %tmp.39.8, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.8 = fmul double %U1.8, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.8 = fadd double %tmp.40.8, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.8 = fmul double %U2.8, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.8 = fadd double %tmp.41.8, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.8 = fmul double %V1.8, %V1.8, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.8 = fmul double %V2.1.8, %V2.1.8, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.8 = fadd double %tmp.42.8, %tmp.43.8, !dbg !130 ; [#uses=3 type=double] [debug line = 58:11]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.9), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  %tmp.10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str24), !dbg !113 ; [#uses=1 type=i32] [debug line = 38:33]
  call void (...)* @_ssdm_SpecDependence(i64 %a1.8, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !117 ; [debug line = 40:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b1.8, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !118 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecDependence(i64 %a2.8, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !119 ; [debug line = 42:1]
  call void (...)* @_ssdm_SpecDependence(i64 %b2.8, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !120 ; [debug line = 43:1]
  %tmp.24.9 = fcmp oge double %S.1.8, 1.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %tmp.25.9 = fcmp oeq double %S.1.8, 0.000000e+00, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  %or.cond.9 = or i1 %tmp.24.9, %tmp.25.9, !dbg !132 ; [#uses=1 type=i1] [debug line = 45:2]
  br i1 %or.cond.9, label %.preheader.10, label %.loopexit, !dbg !132 ; [debug line = 45:2]

.preheader.10:                                    ; preds = %.preheader.9
  %tmp.30.9 = call fastcc i64 @rand_uint32() nounwind, !dbg !121 ; [#uses=2 type=i64] [debug line = 46:14]
  %a1.9 = lshr i64 %tmp.30.9, 5, !dbg !121        ; [#uses=1 type=i64] [debug line = 46:14]
  %b1.9 = lshr i64 %tmp.30.9, 6, !dbg !123        ; [#uses=1 type=i64] [debug line = 47:11]
  %tmp.31.9 = uitofp i64 %a1.9 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.32.9 = fmul double %tmp.31.9, 0x4190000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.33.9 = uitofp i64 %b1.9 to double, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.34.9 = fadd double %tmp.32.9, %tmp.33.9, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %U1.9 = fmul double %tmp.34.9, 0x3CA0000000000000, !dbg !124 ; [#uses=1 type=double] [debug line = 49:72]
  %tmp.35.9 = call fastcc i64 @rand_uint32() nounwind, !dbg !125 ; [#uses=2 type=i64] [debug line = 51:14]
  %a2.9 = lshr i64 %tmp.35.9, 5, !dbg !125        ; [#uses=1 type=i64] [debug line = 51:14]
  %b2.9 = lshr i64 %tmp.35.9, 6, !dbg !126        ; [#uses=1 type=i64] [debug line = 52:11]
  %tmp.36.9 = uitofp i64 %a2.9 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.37.9 = fmul double %tmp.36.9, 0x4190000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.38.9 = uitofp i64 %b2.9 to double, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.39.9 = fadd double %tmp.37.9, %tmp.38.9, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %U2.9 = fmul double %tmp.39.9, 0x3CA0000000000000, !dbg !127 ; [#uses=1 type=double] [debug line = 54:72]
  %tmp.40.9 = fmul double %U1.9, 2.000000e+00, !dbg !128 ; [#uses=1 type=double] [debug line = 56:11]
  %V1.9 = fadd double %tmp.40.9, -1.000000e+00, !dbg !128 ; [#uses=3 type=double] [debug line = 56:11]
  %tmp.41.9 = fmul double %U2.9, 2.000000e+00, !dbg !129 ; [#uses=1 type=double] [debug line = 57:11]
  %V2.1.9 = fadd double %tmp.41.9, -1.000000e+00, !dbg !129 ; [#uses=2 type=double] [debug line = 57:11]
  %tmp.42.9 = fmul double %V1.9, %V1.9, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %tmp.43.9 = fmul double %V2.1.9, %V2.1.9, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %S.1.9 = fadd double %tmp.42.9, %tmp.43.9, !dbg !130 ; [#uses=1 type=double] [debug line = 58:11]
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str24, i32 %tmp.10), !dbg !131 ; [#uses=0 type=i32] [debug line = 62:7]
  br label %.loopexit, !dbg !133                  ; [debug line = 38:12]

.loopexit:                                        ; preds = %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.0
  %gaussrand_state.S.0.lcssa = phi double [ %S.1, %.preheader.0 ], [ %S.1.1, %.preheader.2 ], [ %S.1.2, %.preheader.3 ], [ %S.1.3, %.preheader.4 ], [ %S.1.4, %.preheader.5 ], [ %S.1.5, %.preheader.6 ], [ %S.1.6, %.preheader.7 ], [ %S.1.7, %.preheader.8 ], [ %S.1.8, %.preheader.9 ], [ %S.1.9, %.preheader.10 ] ; [#uses=2 type=double]
  %gaussrand_state.V1.0.lcssa = phi double [ %V1, %.preheader.0 ], [ %V1.1, %.preheader.2 ], [ %V1.2, %.preheader.3 ], [ %V1.3, %.preheader.4 ], [ %V1.4, %.preheader.5 ], [ %V1.5, %.preheader.6 ], [ %V1.6, %.preheader.7 ], [ %V1.7, %.preheader.8 ], [ %V1.8, %.preheader.9 ], [ %V1.9, %.preheader.10 ] ; [#uses=1 type=double]
  %tmp.23 = call double @llvm.log.f64(double %gaussrand_state.S.0.lcssa), !dbg !134 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.24 = fmul double %tmp.23, -2.000000e+00, !dbg !134 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.25 = fdiv double %tmp.24, %gaussrand_state.S.0.lcssa, !dbg !134 ; [#uses=1 type=double] [debug line = 81:29]
  %tmp.26 = call double @llvm.sqrt.f64(double %tmp.25), !dbg !134 ; [#uses=1 type=double] [debug line = 81:29]
  %X.1 = fmul double %gaussrand_state.V1.0.lcssa, %tmp.26, !dbg !134 ; [#uses=1 type=double] [debug line = 81:29]
  call void @llvm.dbg.value(metadata !{double %X.1}, i64 0, metadata !135), !dbg !134 ; [debug line = 81:29] [debug variable = X]
  br label %12, !dbg !136                         ; [debug line = 82:5]

; <label>:11                                      ; preds = %0
  call void @llvm.dbg.value(metadata !{double %gaussrand_state.S.read}, i64 0, metadata !137), !dbg !140 ; [debug line = 86:42] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %gaussrand_state.V2.read}, i64 0, metadata !141), !dbg !142 ; [debug line = 87:44] [debug variable = V2]
  %tmp. = call double @llvm.log.f64(double %gaussrand_state.S.read), !dbg !143 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.20 = fmul double %tmp., -2.000000e+00, !dbg !143 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.21 = fdiv double %tmp.20, %gaussrand_state.S.read, !dbg !143 ; [#uses=1 type=double] [debug line = 89:29]
  %tmp.22 = call double @llvm.sqrt.f64(double %tmp.21), !dbg !143 ; [#uses=1 type=double] [debug line = 89:29]
  %X = fmul double %tmp.22, %gaussrand_state.V2.read, !dbg !143 ; [#uses=1 type=double] [debug line = 89:29]
  call void @llvm.dbg.value(metadata !{double %X}, i64 0, metadata !135), !dbg !143 ; [debug line = 89:29] [debug variable = X]
  br label %12

; <label>:12                                      ; preds = %11, %.loopexit
  %X2 = phi double [ %X.1, %.loopexit ], [ %X, %11 ] ; [#uses=1 type=double]
  ret double %X2
}

; [#uses=0]
define double @black_scholes(double %S, double %E, double %A, double %B, double %rT, double %gaussrand_state.V1, double %gaussrand_state.V2, double %gaussrand_state.S, i32 %gaussrand_state.phase) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(double %S), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(double %E), !map !150
  call void (...)* @_ssdm_op_SpecBitsMap(double %A), !map !154
  call void (...)* @_ssdm_op_SpecBitsMap(double %B), !map !158
  call void (...)* @_ssdm_op_SpecBitsMap(double %rT), !map !162
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state.V1), !map !166
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state.V2), !map !170
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussrand_state.S), !map !174
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %gaussrand_state.phase), !map !178
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !182
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !188), !dbg !200 ; [debug line = 50:22] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !201), !dbg !202 ; [debug line = 51:22] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %A}, i64 0, metadata !203), !dbg !204 ; [debug line = 52:22] [debug variable = A]
  call void @llvm.dbg.value(metadata !{double %B}, i64 0, metadata !205), !dbg !206 ; [debug line = 53:22] [debug variable = B]
  call void @llvm.dbg.value(metadata !{double %rT}, i64 0, metadata !207), !dbg !208 ; [debug line = 54:22] [debug variable = rT]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str5) nounwind, !dbg !209 ; [debug line = 58:1]
  %rand_number = call fastcc double @gaussrand2(double %gaussrand_state.V2, double %gaussrand_state.S, i32 %gaussrand_state.phase), !dbg !211 ; [#uses=2 type=double] [debug line = 60:24]
  call void @llvm.dbg.value(metadata !{double %rand_number}, i64 0, metadata !212), !dbg !211 ; [debug line = 60:24] [debug variable = rand_number]
  call void (...)* @_ssdm_SpecDependence(double %rand_number, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !213 ; [debug line = 61:1]
  call void @llvm.dbg.value(metadata !{double %B}, i64 0, metadata !214), !dbg !219 ; [debug line = 27:23@63:8] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %rand_number}, i64 0, metadata !220), !dbg !221 ; [debug line = 27:33@63:8] [debug variable = b]
  %tmp = fmul double %rand_number, %B, !dbg !222  ; [#uses=1 type=double] [debug line = 28:3@63:8]
  call void @llvm.dbg.value(metadata !{double %tmp}, i64 0, metadata !224), !dbg !218 ; [debug line = 63:8] [debug variable = tmp]
  %a.assign = fadd double %tmp, %A, !dbg !225     ; [#uses=1 type=double] [debug line = 64:10]
  call void @llvm.dbg.value(metadata !{double %a.assign}, i64 0, metadata !226) nounwind, !dbg !230 ; [debug line = 40:21@64:10] [debug variable = a]
  %tmp2 = call double @llvm.exp.f64(double %a.assign) nounwind, !dbg !231 ; [#uses=1 type=double] [debug line = 41:10@64:10]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !233), !dbg !225 ; [debug line = 64:10] [debug variable = tmp2]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !234), !dbg !237 ; [debug line = 30:23@65:10] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !238), !dbg !239 ; [debug line = 30:33@65:10] [debug variable = b]
  %tmp3 = fmul double %tmp2, %S, !dbg !240        ; [#uses=1 type=double] [debug line = 31:3@65:10]
  call void @llvm.dbg.value(metadata !{double %tmp3}, i64 0, metadata !242), !dbg !236 ; [debug line = 65:10] [debug variable = tmp3]
  %tmp.27 = fsub double %tmp3, %E, !dbg !243      ; [#uses=2 type=double] [debug line = 66:3]
  %tmp.28 = fcmp olt double %tmp.27, 0.000000e+00, !dbg !243 ; [#uses=1 type=i1] [debug line = 66:3]
  %tmp4 = select i1 %tmp.28, double 0.000000e+00, double %tmp.27, !dbg !243 ; [#uses=1 type=double] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{double %tmp4}, i64 0, metadata !244), !dbg !243 ; [debug line = 66:3] [debug variable = tmp4]
  call void @llvm.dbg.value(metadata !{double %rT}, i64 0, metadata !245), !dbg !248 ; [debug line = 33:23@67:10] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %tmp4}, i64 0, metadata !249), !dbg !250 ; [debug line = 33:33@67:10] [debug variable = b]
  %tmp5 = fmul double %tmp4, %rT, !dbg !251       ; [#uses=1 type=double] [debug line = 34:3@67:10]
  call void @llvm.dbg.value(metadata !{double %tmp5}, i64 0, metadata !253), !dbg !247 ; [debug line = 67:10] [debug variable = tmp5]
  ret double %tmp5, !dbg !254                     ; [debug line = 69:3]
}

; [#uses=39]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.log.f64(double) nounwind readonly

; [#uses=1]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

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
!19 = metadata !{metadata !20, metadata !23, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!20 = metadata !{i32 786484, i32 0, null, metadata !"kk_pm", metadata !"kk_pm", metadata !"", metadata !21, i32 21, metadata !22, i32 0, i32 1, i16* @kk_pm} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkpm", metadata !"mt_kkpm", metadata !"", metadata !21, i32 15, metadata !24, i32 1, i32 1, [624 x i64]* @mt_kkpm} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 39936, i64 64, i32 0, i32 0, metadata !25, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 623}      ; [ DW_TAG_subrange_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkp1", metadata !"mt_kkp1", metadata !"", metadata !21, i32 14, metadata !24, i32 1, i32 1, [624 x i64]* @mt_kkp1} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"mt_kk", metadata !"mt_kk", metadata !"", metadata !21, i32 13, metadata !24, i32 1, i32 1, [624 x i64]* @mt_kk} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"kk", metadata !"kk", metadata !"", metadata !21, i32 19, metadata !22, i32 0, i32 1, i16* @kk} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"kk_p1", metadata !"kk_p1", metadata !"", metadata !21, i32 20, metadata !22, i32 0, i32 1, i16* @kk_p1} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"mti", metadata !"mti", metadata !"", metadata !21, i32 16, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 128, i32 1, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 123, i32 1, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786478, i32 0, metadata !21, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"", metadata !21, i32 122, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @rand_uint32, null, null, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !25}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 129, i32 1, metadata !35, null}
!42 = metadata !{i32 134, i32 2, metadata !35, null}
!43 = metadata !{i32 786688, metadata !35, metadata !"y", metadata !21, i32 131, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 135, i32 2, metadata !35, null}
!45 = metadata !{i32 136, i32 2, metadata !35, null}
!46 = metadata !{i32 786688, metadata !35, metadata !"mt_kk_new", metadata !21, i32 131, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 139, i32 2, metadata !35, null}
!48 = metadata !{i32 140, i32 2, metadata !35, null}
!49 = metadata !{i32 141, i32 2, metadata !35, null}
!50 = metadata !{i32 144, i32 2, metadata !35, null}
!51 = metadata !{i32 145, i32 2, metadata !35, null}
!52 = metadata !{i32 146, i32 2, metadata !35, null}
!53 = metadata !{i32 147, i32 2, metadata !35, null}
!54 = metadata !{i32 148, i32 2, metadata !35, null}
!55 = metadata !{i32 151, i32 7, metadata !35, null}
!56 = metadata !{i32 786689, metadata !57, metadata !"a", metadata !21, i32 16777311, metadata !22, i32 0, metadata !55} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N", metadata !"mod_N", metadata !"", metadata !21, i32 95, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 96} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !22, metadata !22}
!60 = metadata !{i32 95, i32 37, metadata !57, metadata !55}
!61 = metadata !{i32 97, i32 2, metadata !62, metadata !55}
!62 = metadata !{i32 786443, metadata !57, i32 96, i32 1, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 98, i32 3, metadata !62, metadata !55}
!64 = metadata !{i32 152, i32 10, metadata !35, null}
!65 = metadata !{i32 786689, metadata !66, metadata !"a", metadata !21, i32 16777319, metadata !22, i32 0, metadata !64} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"", metadata !21, i32 103, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 104} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 103, i32 40, metadata !66, metadata !64}
!68 = metadata !{i32 105, i32 2, metadata !69, metadata !64}
!69 = metadata !{i32 786443, metadata !66, i32 104, i32 1, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 106, i32 3, metadata !69, metadata !64}
!71 = metadata !{i32 153, i32 10, metadata !35, null}
!72 = metadata !{i32 786689, metadata !73, metadata !"a", metadata !21, i32 16777327, metadata !22, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"", metadata !21, i32 111, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 112} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 111, i32 40, metadata !73, metadata !71}
!75 = metadata !{i32 113, i32 2, metadata !76, metadata !71}
!76 = metadata !{i32 786443, metadata !73, i32 112, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 114, i32 3, metadata !76, metadata !71}
!78 = metadata !{i32 155, i32 2, metadata !35, null}
!79 = metadata !{i32 790533, metadata !80, metadata !"gaussrand_state.V2", null, i32 18, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!80 = metadata !{i32 786689, metadata !81, metadata !"gaussrand_state", metadata !82, i32 16777234, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 786478, i32 0, metadata !82, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !82, i32 18, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 19} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !85, metadata !86}
!85 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!86 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !82, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !89, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!89 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94}
!91 = metadata !{i32 786445, metadata !88, metadata !"V1", metadata !89, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ]
!92 = metadata !{i32 786445, metadata !88, metadata !"V2", metadata !89, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ]
!93 = metadata !{i32 786445, metadata !88, metadata !"S", metadata !89, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ]
!94 = metadata !{i32 786445, metadata !88, metadata !"phase", metadata !89, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ]
!95 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!96 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !89, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!97 = metadata !{metadata !92}
!98 = metadata !{i32 18, i32 39, metadata !81, null}
!99 = metadata !{i32 790533, metadata !80, metadata !"gaussrand_state.S", null, i32 18, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ]
!101 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !89, i32 17, i64 64, i64 64, i32 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!102 = metadata !{metadata !93}
!103 = metadata !{i32 790533, metadata !80, metadata !"gaussrand_state.phase", null, i32 18, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 786452, null, metadata !"__gaussrand_state_t", metadata !89, i32 17, i64 32, i64 64, i32 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!106 = metadata !{metadata !94}
!107 = metadata !{i32 24, i32 1, metadata !108, null}
!108 = metadata !{i32 786443, metadata !81, i32 19, i32 1, metadata !82, i32 2} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786688, metadata !108, metadata !"phase", metadata !82, i32 29, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!111 = metadata !{i32 29, i32 43, metadata !108, null}
!112 = metadata !{i32 31, i32 3, metadata !108, null}
!113 = metadata !{i32 38, i32 33, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 38, i32 32, metadata !82, i32 5} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !116, i32 38, i32 7, metadata !82, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !108, i32 32, i32 5, metadata !82, i32 3} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 40, i32 1, metadata !114, null}
!118 = metadata !{i32 41, i32 1, metadata !114, null}
!119 = metadata !{i32 42, i32 1, metadata !114, null}
!120 = metadata !{i32 43, i32 1, metadata !114, null}
!121 = metadata !{i32 46, i32 14, metadata !122, null}
!122 = metadata !{i32 786443, metadata !114, i32 45, i32 24, metadata !82, i32 6} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 47, i32 11, metadata !122, null}
!124 = metadata !{i32 49, i32 72, metadata !122, null}
!125 = metadata !{i32 51, i32 14, metadata !122, null}
!126 = metadata !{i32 52, i32 11, metadata !122, null}
!127 = metadata !{i32 54, i32 72, metadata !122, null}
!128 = metadata !{i32 56, i32 11, metadata !122, null}
!129 = metadata !{i32 57, i32 11, metadata !122, null}
!130 = metadata !{i32 58, i32 11, metadata !122, null}
!131 = metadata !{i32 62, i32 7, metadata !114, null}
!132 = metadata !{i32 45, i32 2, metadata !114, null}
!133 = metadata !{i32 38, i32 12, metadata !115, null}
!134 = metadata !{i32 81, i32 29, metadata !116, null}
!135 = metadata !{i32 786688, metadata !108, metadata !"X", metadata !82, i32 26, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 82, i32 5, metadata !116, null}
!137 = metadata !{i32 786688, metadata !138, metadata !"S", metadata !82, i32 86, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786443, metadata !108, i32 84, i32 5, metadata !82, i32 8} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_const_type ]
!140 = metadata !{i32 86, i32 42, metadata !138, null}
!141 = metadata !{i32 786688, metadata !138, metadata !"V2", metadata !82, i32 87, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 87, i32 44, metadata !138, null}
!143 = metadata !{i32 89, i32 29, metadata !138, null}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 63, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"S", metadata !148, metadata !"double"}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 0, i32 0}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 63, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"E", metadata !148, metadata !"double"}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 0, i32 63, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"A", metadata !148, metadata !"double"}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 63, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"B", metadata !148, metadata !"double"}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 63, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"rT", metadata !148, metadata !"double"}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 63, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"gaussrand_state.V1", metadata !148, metadata !"double"}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 63, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"gaussrand_state.V2", metadata !148, metadata !"double"}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 0, i32 63, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"gaussrand_state.S", metadata !148, metadata !"double"}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 0, i32 31, metadata !180}
!180 = metadata !{metadata !181}
!181 = metadata !{metadata !"gaussrand_state.phase", metadata !148, metadata !"int"}
!182 = metadata !{metadata !183}
!183 = metadata !{i32 0, i32 63, metadata !184}
!184 = metadata !{metadata !185}
!185 = metadata !{metadata !"return", metadata !186, metadata !""}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 0, i32 1, i32 0}
!188 = metadata !{i32 786689, metadata !189, metadata !"S", metadata !190, i32 16777266, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 786478, i32 0, metadata !190, metadata !"black_scholes", metadata !"black_scholes", metadata !"", metadata !190, i32 49, metadata !191, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 57} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786473, metadata !"black_scholes.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/dump", null} ; [ DW_TAG_file_type ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !85, metadata !139, metadata !139, metadata !139, metadata !139, metadata !139, metadata !193}
!193 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !190, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ]
!194 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !89, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199}
!196 = metadata !{i32 786445, metadata !194, metadata !"V1", metadata !89, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ]
!197 = metadata !{i32 786445, metadata !194, metadata !"V2", metadata !89, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ]
!198 = metadata !{i32 786445, metadata !194, metadata !"S", metadata !89, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ]
!199 = metadata !{i32 786445, metadata !194, metadata !"phase", metadata !89, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ]
!200 = metadata !{i32 50, i32 22, metadata !189, null}
!201 = metadata !{i32 786689, metadata !189, metadata !"E", metadata !190, i32 33554483, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 51, i32 22, metadata !189, null}
!203 = metadata !{i32 786689, metadata !189, metadata !"A", metadata !190, i32 50331700, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 52, i32 22, metadata !189, null}
!205 = metadata !{i32 786689, metadata !189, metadata !"B", metadata !190, i32 67108917, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 53, i32 22, metadata !189, null}
!207 = metadata !{i32 786689, metadata !189, metadata !"rT", metadata !190, i32 83886134, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 54, i32 22, metadata !189, null}
!209 = metadata !{i32 58, i32 1, metadata !210, null}
!210 = metadata !{i32 786443, metadata !189, i32 57, i32 1, metadata !190, i32 6} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 60, i32 24, metadata !210, null}
!212 = metadata !{i32 786688, metadata !210, metadata !"rand_number", metadata !190, i32 60, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 61, i32 1, metadata !210, null}
!214 = metadata !{i32 786689, metadata !215, metadata !"a", metadata !190, i32 16777243, metadata !85, i32 0, metadata !218} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 786478, i32 0, metadata !190, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !190, i32 27, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 27} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !85, metadata !85, metadata !85}
!218 = metadata !{i32 63, i32 8, metadata !210, null}
!219 = metadata !{i32 27, i32 23, metadata !215, metadata !218}
!220 = metadata !{i32 786689, metadata !215, metadata !"b", metadata !190, i32 33554459, metadata !85, i32 0, metadata !218} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 27, i32 33, metadata !215, metadata !218}
!222 = metadata !{i32 28, i32 3, metadata !223, metadata !218}
!223 = metadata !{i32 786443, metadata !215, i32 27, i32 35, metadata !190, i32 0} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 786688, metadata !210, metadata !"tmp", metadata !190, i32 59, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 64, i32 10, metadata !210, null}
!226 = metadata !{i32 786689, metadata !227, metadata !"a", metadata !190, i32 16777256, metadata !85, i32 0, metadata !225} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 786478, i32 0, metadata !190, metadata !"expo1", metadata !"expo1", metadata !"", metadata !190, i32 40, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 40} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !85, metadata !85}
!230 = metadata !{i32 40, i32 21, metadata !227, metadata !225}
!231 = metadata !{i32 41, i32 10, metadata !232, metadata !225}
!232 = metadata !{i32 786443, metadata !227, i32 40, i32 23, metadata !190, i32 4} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 786688, metadata !210, metadata !"tmp2", metadata !190, i32 59, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 786689, metadata !235, metadata !"a", metadata !190, i32 16777246, metadata !85, i32 0, metadata !236} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 786478, i32 0, metadata !190, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !190, i32 30, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 30} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 65, i32 10, metadata !210, null}
!237 = metadata !{i32 30, i32 23, metadata !235, metadata !236}
!238 = metadata !{i32 786689, metadata !235, metadata !"b", metadata !190, i32 33554462, metadata !85, i32 0, metadata !236} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 30, i32 33, metadata !235, metadata !236}
!240 = metadata !{i32 31, i32 3, metadata !241, metadata !236}
!241 = metadata !{i32 786443, metadata !235, i32 30, i32 35, metadata !190, i32 1} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786688, metadata !210, metadata !"tmp3", metadata !190, i32 59, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 66, i32 3, metadata !210, null}
!244 = metadata !{i32 786688, metadata !210, metadata !"tmp4", metadata !190, i32 59, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 786689, metadata !246, metadata !"a", metadata !190, i32 16777249, metadata !85, i32 0, metadata !247} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 786478, i32 0, metadata !190, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !190, i32 33, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 33} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 67, i32 10, metadata !210, null}
!248 = metadata !{i32 33, i32 23, metadata !246, metadata !247}
!249 = metadata !{i32 786689, metadata !246, metadata !"b", metadata !190, i32 33554465, metadata !85, i32 0, metadata !247} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 33, i32 33, metadata !246, metadata !247}
!251 = metadata !{i32 34, i32 3, metadata !252, metadata !247}
!252 = metadata !{i32 786443, metadata !246, i32 33, i32 35, metadata !190, i32 2} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 786688, metadata !210, metadata !"tmp5", metadata !190, i32 59, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 69, i32 3, metadata !210, null}
