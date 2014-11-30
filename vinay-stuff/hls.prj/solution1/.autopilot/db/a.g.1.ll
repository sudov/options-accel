; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus.0 = type { double, double, double, i32 }

@str = internal constant [20 x i8] c"black_scholes2_loop\00" ; [#uses=1 type=[20 x i8]*]

; [#uses=0]
declare i32 @printf(i8*, ...)

; [#uses=0]
declare double @sqrt(double) nounwind readnone

; [#uses=0]
declare double @log(double) nounwind

; [#uses=5]
define internal fastcc double @mult2_1(double %a, double %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !102), !dbg !103 ; [debug line = 18:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !104), !dbg !105 ; [debug line = 18:33] [debug variable = b]
  %tmp = fmul double %a, %b, !dbg !106            ; [#uses=1 type=double] [debug line = 19:3]
  ret double %tmp, !dbg !106                      ; [debug line = 19:3]
}

; [#uses=1]
define internal fastcc double @div_1(double %a, double %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !108), !dbg !109 ; [debug line = 27:21] [debug variable = a]
  %tmp = fdiv double %a, 2.000000e+00, !dbg !110  ; [#uses=1 type=double] [debug line = 28:3]
  ret double %tmp, !dbg !110                      ; [debug line = 28:3]
}

; [#uses=2]
define internal fastcc double @expo1(double %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !112), !dbg !113 ; [debug line = 31:21] [debug variable = a]
  %tmp = call double @llvm.exp.f64(double %a), !dbg !114 ; [#uses=1 type=double] [debug line = 32:10]
  ret double %tmp, !dbg !114                      ; [debug line = 32:10]
}

; [#uses=0]
declare double @exp(double) nounwind

; [#uses=1]
define internal fastcc double @sqrt1(double %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !116), !dbg !117 ; [debug line = 35:21] [debug variable = a]
  %tmp = call double @llvm.sqrt.f64(double %a), !dbg !118 ; [#uses=1 type=double] [debug line = 36:10]
  ret double %tmp, !dbg !118                      ; [debug line = 36:10]
}

; [#uses=1]
define internal fastcc void @black_scholes2(double %S, double %E, double %r, double %sigma, double %T, double %gaussian_random_number, double* %store) nounwind uwtable {
._crit_edge:
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !120), !dbg !121 ; [debug line = 40:22] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !122), !dbg !123 ; [debug line = 41:22] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !124), !dbg !125 ; [debug line = 42:22] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !126), !dbg !127 ; [debug line = 43:22] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !128), !dbg !129 ; [debug line = 44:22] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number}, i64 0, metadata !130), !dbg !131 ; [debug line = 45:22] [debug variable = gaussian_random_number]
  call void @llvm.dbg.value(metadata !{double* %store}, i64 0, metadata !132), !dbg !133 ; [debug line = 46:16] [debug variable = store]
  %tmp = call fastcc double @mult2_1(double %sigma, double %sigma), !dbg !134 ; [#uses=1 type=double] [debug line = 59:11]
  call void @llvm.dbg.value(metadata !{double %tmp}, i64 0, metadata !136), !dbg !134 ; [debug line = 59:11] [debug variable = tmp]
  %tmp.1 = call fastcc double @div_1(double %tmp, double 2.000000e+00), !dbg !137 ; [#uses=1 type=double] [debug line = 60:11]
  call void @llvm.dbg.value(metadata !{double %tmp.1}, i64 0, metadata !136), !dbg !137 ; [debug line = 60:11] [debug variable = tmp]
  %tmp5 = fsub double %r, %tmp.1, !dbg !138       ; [#uses=1 type=double] [debug line = 61:5]
  call void @llvm.dbg.value(metadata !{double %tmp5}, i64 0, metadata !139), !dbg !138 ; [debug line = 61:5] [debug variable = tmp5]
  %tmp.2 = call fastcc double @expo1(double %tmp5), !dbg !140 ; [#uses=1 type=double] [debug line = 62:11]
  call void @llvm.dbg.value(metadata !{double %tmp.2}, i64 0, metadata !136), !dbg !140 ; [debug line = 62:11] [debug variable = tmp]
  %tmp.3 = call fastcc double @mult2_1(double %tmp.2, double %S), !dbg !141 ; [#uses=1 type=double] [debug line = 63:11]
  call void @llvm.dbg.value(metadata !{double %tmp.3}, i64 0, metadata !136), !dbg !141 ; [debug line = 63:11] [debug variable = tmp]
  %tmp.0 = call fastcc double @mult2_1(double %tmp.3, double %T), !dbg !142 ; [#uses=0 type=double] [debug line = 64:11]
  call void @llvm.dbg.value(metadata !{double %tmp.0}, i64 0, metadata !136), !dbg !142 ; [debug line = 64:11] [debug variable = tmp]
  %tmp2 = call fastcc double @mult2_1(double %sigma, double %gaussian_random_number), !dbg !143 ; [#uses=1 type=double] [debug line = 66:12]
  call void @llvm.dbg.value(metadata !{double %tmp2}, i64 0, metadata !144), !dbg !143 ; [debug line = 66:12] [debug variable = tmp2]
  %tmp.4 = call fastcc double @sqrt1(double %T), !dbg !145 ; [#uses=1 type=double] [debug line = 67:25]
  %tmp2.0 = call fastcc double @mult2_1(double %tmp2, double %tmp.4), !dbg !145 ; [#uses=0 type=double] [debug line = 67:25]
  call void @llvm.dbg.value(metadata !{double %tmp2.0}, i64 0, metadata !144), !dbg !145 ; [debug line = 67:25] [debug variable = tmp2]
  %tmp.5 = fsub double -0.000000e+00, %r, !dbg !146 ; [#uses=1 type=double] [debug line = 70:5]
  %tmp6 = fmul double %tmp.5, %T, !dbg !146       ; [#uses=2 type=double] [debug line = 70:5]
  call void @llvm.dbg.value(metadata !{double %tmp6}, i64 0, metadata !147), !dbg !146 ; [debug line = 70:5] [debug variable = tmp6]
  %0 = call fastcc double @expo1(double %tmp6), !dbg !148 ; [#uses=0 type=double] [debug line = 71:12]
  call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !149), !dbg !148 ; [debug line = 71:12] [debug variable = tmp4]
  %tmp.6 = fmul double %sigma, %sigma, !dbg !150  ; [#uses=1 type=double] [debug line = 74:25]
  %tmp.7 = fmul double %tmp.6, 5.000000e-01, !dbg !150 ; [#uses=1 type=double] [debug line = 74:25]
  %tmp.8 = fsub double %r, %tmp.7, !dbg !150      ; [#uses=1 type=double] [debug line = 74:25]
  %tmp.9 = fmul double %tmp.8, %T, !dbg !150      ; [#uses=1 type=double] [debug line = 74:25]
  %tmp.10 = call double @llvm.sqrt.f64(double %T), !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  %tmp.11 = fmul double %tmp.10, %sigma, !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  %tmp.12 = fmul double %tmp.11, %gaussian_random_number, !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  %tmp.13 = fadd double %tmp.9, %tmp.12, !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  %tmp.14 = call double @llvm.exp.f64(double %tmp.13), !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  %current_value = fmul double %tmp.14, %S, !dbg !151 ; [#uses=1 type=double] [debug line = 74:71]
  call void @llvm.dbg.value(metadata !{double %current_value}, i64 0, metadata !152), !dbg !151 ; [debug line = 74:71] [debug variable = current_value]
  %tmp.15 = call double @llvm.exp.f64(double %tmp6), !dbg !153 ; [#uses=1 type=double] [debug line = 75:14]
  %tmp.16 = fsub double %current_value, %E, !dbg !153 ; [#uses=2 type=double] [debug line = 75:14]
  %tmp.17 = fcmp olt double %tmp.16, 0.000000e+00, !dbg !153 ; [#uses=1 type=i1] [debug line = 75:14]
  %tmp.18 = select i1 %tmp.17, double 0.000000e+00, double %tmp.16, !dbg !153 ; [#uses=1 type=double] [debug line = 75:14]
  %mydata = fmul double %tmp.15, %tmp.18, !dbg !153 ; [#uses=1 type=double] [debug line = 75:14]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !154), !dbg !153 ; [debug line = 75:14] [debug variable = mydata]
  store double %mydata, double* %store, align 8, !dbg !155 ; [debug line = 77:5]
  ret void, !dbg !156                             ; [debug line = 79:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=0]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=0]
define double @black_scholes2_loop(double %S, double %E, double %r, double %sigma, double %T, double* %rand_number, double* %store, i32 %M) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !157
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !163), !dbg !164 ; [debug line = 16:16] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !165), !dbg !166 ; [debug line = 17:16] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !167), !dbg !168 ; [debug line = 18:16] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !169), !dbg !170 ; [debug line = 19:16] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !171), !dbg !172 ; [debug line = 20:16] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double* %rand_number}, i64 0, metadata !173), !dbg !174 ; [debug line = 21:16] [debug variable = rand_number]
  call void @llvm.dbg.value(metadata !{double* %store}, i64 0, metadata !175), !dbg !176 ; [debug line = 22:16] [debug variable = store]
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !177), !dbg !178 ; [debug line = 23:13] [debug variable = M]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %store, i32 10000) nounwind, !dbg !179 ; [debug line = 25:2]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %rand_number, i32 10000) nounwind, !dbg !181 ; [debug line = 25:38]
  br label %1, !dbg !182                          ; [debug line = 29:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %sum = phi double [ 0.000000e+00, %0 ], [ %sum.1, %2 ] ; [#uses=2 type=double]
  %tmp = icmp slt i32 %i, %M, !dbg !182           ; [#uses=1 type=i1] [debug line = 29:8]
  br i1 %tmp, label %2, label %3, !dbg !182       ; [debug line = 29:8]

; <label>:2                                       ; preds = %1
  %tmp.19 = sext i32 %i to i64, !dbg !184         ; [#uses=2 type=i64] [debug line = 30:7]
  %rand_number.addr = getelementptr inbounds double* %rand_number, i64 %tmp.19, !dbg !184 ; [#uses=1 type=double*] [debug line = 30:7]
  %rand_number.load = load double* %rand_number.addr, align 8, !dbg !184 ; [#uses=2 type=double] [debug line = 30:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %rand_number.load) nounwind
  %store.addr = getelementptr inbounds double* %store, i64 %tmp.19, !dbg !184 ; [#uses=2 type=double*] [debug line = 30:7]
  call fastcc void @black_scholes2(double %S, double %E, double %r, double %sigma, double %T, double %rand_number.load, double* %store.addr) nounwind, !dbg !184 ; [debug line = 30:7]
  %store.load = load double* %store.addr, align 8, !dbg !186 ; [#uses=2 type=double] [debug line = 31:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %store.load) nounwind
  %sum.1 = fadd double %sum, %store.load, !dbg !186 ; [#uses=1 type=double] [debug line = 31:7]
  call void @llvm.dbg.value(metadata !{double %sum.1}, i64 0, metadata !187), !dbg !186 ; [debug line = 31:7] [debug variable = sum]
  %i.1 = add nsw i32 %i, 1, !dbg !188             ; [#uses=1 type=i32] [debug line = 29:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !189), !dbg !188 ; [debug line = 29:22] [debug variable = i]
  br label %1, !dbg !188                          ; [debug line = 29:22]

; <label>:3                                       ; preds = %1
  %sum.0.lcssa = phi double [ %sum, %1 ]          ; [#uses=1 type=double]
  ret double %sum.0.lcssa, !dbg !190              ; [debug line = 34:3]
}

; [#uses=0]
declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
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
declare i64 @genrand_int32() nounwind uwtable

; [#uses=0]
declare i64 @genrand_int31() nounwind uwtable

; [#uses=0]
declare double @genrand_real1() nounwind uwtable

; [#uses=0]
declare double @genrand_real2() nounwind uwtable

; [#uses=0]
declare double @genrand_real3() nounwind uwtable

; [#uses=0]
declare double @genrand_res53() nounwind uwtable

; [#uses=0]
declare void @init_gaussrand_state(%struct._IO_FILE_plus.0*) nounwind uwtable

; [#uses=0]
declare double @gaussrand2(%struct._IO_FILE_plus.0*) nounwind uwtable

; [#uses=0]
declare double @mult2_2(double, double) nounwind uwtable

; [#uses=0]
declare double @mult2_3(double, double) nounwind uwtable

; [#uses=0]
declare void @black_scholes3(double, double, double, double, double, double, double*) nounwind uwtable

; [#uses=0]
declare void @black_scholes3_loop(double, double, double, double, double, double*, double*, i32, double*) noreturn nounwind uwtable

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=2]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=0]
declare double @llvm.log.f64(double) nounwind readonly

; [#uses=3]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0, !49, !72, !92}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/mt19937ar.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !31} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !17, metadata !20, metadata !24, metadata !28, metadata !29, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_genrand", metadata !"init_genrand", metadata !"", metadata !6, i32 57, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @init_genrand, null, null, metadata !10, i32 58} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_by_array", metadata !"init_by_array", metadata !"", metadata !6, i32 76, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i32)* @init_by_array, null, null, metadata !10, i32 77} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_int32", metadata !"genrand_int32", metadata !"", metadata !6, i32 102, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 ()* @genrand_int32, null, null, metadata !10, i32 103} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_int31", metadata !"genrand_int31", metadata !"", metadata !6, i32 140, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 ()* @genrand_int31, null, null, metadata !10, i32 141} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real1", metadata !"genrand_real1", metadata !"", metadata !6, i32 146, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double ()* @genrand_real1, null, null, metadata !10, i32 147} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real2", metadata !"genrand_real2", metadata !"", metadata !6, i32 153, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double ()* @genrand_real2, null, null, metadata !10, i32 154} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real3", metadata !"genrand_real3", metadata !"", metadata !6, i32 160, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double ()* @genrand_real3, null, null, metadata !10, i32 161} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_res53", metadata !"genrand_res53", metadata !"", metadata !6, i32 167, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double ()* @genrand_res53, null, null, metadata !10, i32 168} ; [ DW_TAG_subprogram ]
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33, metadata !37, metadata !41, metadata !44, metadata !45, metadata !46, metadata !48}
!33 = metadata !{i32 786484, i32 0, metadata !17, metadata !"mag01", metadata !"mag01", metadata !"", metadata !6, i32 105, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 64, i32 0, i32 0, metadata !9, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"mt", metadata !"mt", metadata !"", metadata !6, i32 53, metadata !38, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 39936, i64 64, i32 0, i32 0, metadata !9, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 623}      ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !42, i32 343, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!43 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !42, i32 341, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !42, i32 344, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !42, i32 345, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !47, i32 27, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"mti", metadata !"mti", metadata !"", metadata !6, i32 54, metadata !16, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/gaussian.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !50, metadata !68} ; [ DW_TAG_compile_unit ]
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !52, metadata !65}
!52 = metadata !{i32 786478, i32 0, metadata !53, metadata !"init_gaussrand_state", metadata !"init_gaussrand_state", metadata !"", metadata !53, i32 6, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE_plus.0*)* @init_gaussrand_state, null, null, metadata !10, i32 7} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786473, metadata !"gaussian.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 786454, null, metadata !"gaussrand_state_t", metadata !53, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 786451, null, metadata !"__gaussrand_state_t", metadata !59, i32 17, i64 256, i64 64, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!59 = metadata !{i32 786473, metadata !"./gaussian.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64}
!61 = metadata !{i32 786445, metadata !58, metadata !"V1", metadata !59, i32 18, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ]
!62 = metadata !{i32 786445, metadata !58, metadata !"V2", metadata !59, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ]
!63 = metadata !{i32 786445, metadata !58, metadata !"S", metadata !59, i32 18, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!64 = metadata !{i32 786445, metadata !58, metadata !"phase", metadata !59, i32 19, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!65 = metadata !{i32 786478, i32 0, metadata !53, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !53, i32 19, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct._IO_FILE_plus.0*)* @gaussrand2, null, null, metadata !10, i32 20} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !27, metadata !56}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !70, metadata !41, metadata !44, metadata !45, metadata !46}
!70 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !71, i32 157, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!72 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/black_scholes2.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !73, metadata !68} ; [ DW_TAG_compile_unit ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !91}
!75 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !76, i32 18, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_1, null, null, metadata !10, i32 18} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786473, metadata !"black_scholes2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !27, metadata !27, metadata !27}
!79 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !76, i32 21, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_2, null, null, metadata !10, i32 21} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !76, i32 24, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @mult2_3, null, null, metadata !10, i32 24} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !76, metadata !"div_1", metadata !"div_1", metadata !"", metadata !76, i32 27, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double)* @div_1, null, null, metadata !10, i32 27} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786478, i32 0, metadata !76, metadata !"expo1", metadata !"expo1", metadata !"", metadata !76, i32 31, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @expo1, null, null, metadata !10, i32 31} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !27, metadata !27}
!85 = metadata !{i32 786478, i32 0, metadata !76, metadata !"sqrt1", metadata !"sqrt1", metadata !"", metadata !76, i32 35, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sqrt1, null, null, metadata !10, i32 35} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes2", metadata !"black_scholes2", metadata !"", metadata !76, i32 39, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, double, double, double, double, double, double*)* @black_scholes2, null, null, metadata !10, i32 48} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{null, metadata !89, metadata !89, metadata !89, metadata !89, metadata !89, metadata !89, metadata !90}
!89 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes3", metadata !"black_scholes3", metadata !"", metadata !76, i32 83, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, double, double, double, double, double, double*)* @black_scholes3, null, null, metadata !10, i32 92} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/black_scholes2_loop.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !93, metadata !68} ; [ DW_TAG_compile_unit ]
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !95, metadata !99}
!95 = metadata !{i32 786478, i32 0, metadata !96, metadata !"black_scholes2_loop", metadata !"black_scholes2_loop", metadata !"", metadata !96, i32 15, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double, double, double, double, double*, double*, i32)* @black_scholes2_loop, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786473, metadata !"black_scholes2_loop.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !90, metadata !90, metadata !16}
!99 = metadata !{i32 786478, i32 0, metadata !96, metadata !"black_scholes3_loop", metadata !"black_scholes3_loop", metadata !"", metadata !96, i32 38, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, double, double, double, double, double*, double*, i32, double*)* @black_scholes3_loop, null, null, metadata !10, i32 49} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !90, metadata !90, metadata !16, metadata !90}
!102 = metadata !{i32 786689, metadata !75, metadata !"a", metadata !76, i32 16777234, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 18, i32 23, metadata !75, null}
!104 = metadata !{i32 786689, metadata !75, metadata !"b", metadata !76, i32 33554450, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 18, i32 33, metadata !75, null}
!106 = metadata !{i32 19, i32 3, metadata !107, null}
!107 = metadata !{i32 786443, metadata !75, i32 18, i32 35, metadata !76, i32 0} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786689, metadata !81, metadata !"a", metadata !76, i32 16777243, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 27, i32 21, metadata !81, null}
!110 = metadata !{i32 28, i32 3, metadata !111, null}
!111 = metadata !{i32 786443, metadata !81, i32 27, i32 33, metadata !76, i32 3} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786689, metadata !82, metadata !"a", metadata !76, i32 16777247, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 31, i32 21, metadata !82, null}
!114 = metadata !{i32 32, i32 10, metadata !115, null}
!115 = metadata !{i32 786443, metadata !82, i32 31, i32 23, metadata !76, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786689, metadata !85, metadata !"a", metadata !76, i32 16777251, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 35, i32 21, metadata !85, null}
!118 = metadata !{i32 36, i32 10, metadata !119, null}
!119 = metadata !{i32 786443, metadata !85, i32 35, i32 23, metadata !76, i32 5} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786689, metadata !86, metadata !"S", metadata !76, i32 16777256, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 40, i32 22, metadata !86, null}
!122 = metadata !{i32 786689, metadata !86, metadata !"E", metadata !76, i32 33554473, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 41, i32 22, metadata !86, null}
!124 = metadata !{i32 786689, metadata !86, metadata !"r", metadata !76, i32 50331690, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 42, i32 22, metadata !86, null}
!126 = metadata !{i32 786689, metadata !86, metadata !"sigma", metadata !76, i32 67108907, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 43, i32 22, metadata !86, null}
!128 = metadata !{i32 786689, metadata !86, metadata !"T", metadata !76, i32 83886124, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 44, i32 22, metadata !86, null}
!130 = metadata !{i32 786689, metadata !86, metadata !"gaussian_random_number", metadata !76, i32 100663341, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 45, i32 22, metadata !86, null}
!132 = metadata !{i32 786689, metadata !86, metadata !"store", metadata !76, i32 117440558, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 46, i32 16, metadata !86, null}
!134 = metadata !{i32 59, i32 11, metadata !135, null}
!135 = metadata !{i32 786443, metadata !86, i32 48, i32 1, metadata !76, i32 6} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786688, metadata !135, metadata !"tmp", metadata !76, i32 52, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 60, i32 11, metadata !135, null}
!138 = metadata !{i32 61, i32 5, metadata !135, null}
!139 = metadata !{i32 786688, metadata !135, metadata !"tmp5", metadata !76, i32 56, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 62, i32 11, metadata !135, null}
!141 = metadata !{i32 63, i32 11, metadata !135, null}
!142 = metadata !{i32 64, i32 11, metadata !135, null}
!143 = metadata !{i32 66, i32 12, metadata !135, null}
!144 = metadata !{i32 786688, metadata !135, metadata !"tmp2", metadata !76, i32 53, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 67, i32 25, metadata !135, null}
!146 = metadata !{i32 70, i32 5, metadata !135, null}
!147 = metadata !{i32 786688, metadata !135, metadata !"tmp6", metadata !76, i32 57, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 71, i32 12, metadata !135, null}
!149 = metadata !{i32 786688, metadata !135, metadata !"tmp4", metadata !76, i32 55, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 74, i32 25, metadata !135, null}
!151 = metadata !{i32 74, i32 71, metadata !135, null}
!152 = metadata !{i32 786688, metadata !135, metadata !"current_value", metadata !76, i32 50, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 75, i32 14, metadata !135, null}
!154 = metadata !{i32 786688, metadata !135, metadata !"mydata", metadata !76, i32 51, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 77, i32 5, metadata !135, null}
!156 = metadata !{i32 79, i32 1, metadata !135, null}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 63, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"return", metadata !161, metadata !""}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 1, i32 0}
!163 = metadata !{i32 786689, metadata !95, metadata !"S", metadata !96, i32 16777232, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 16, i32 16, metadata !95, null}
!165 = metadata !{i32 786689, metadata !95, metadata !"E", metadata !96, i32 33554449, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 17, i32 16, metadata !95, null}
!167 = metadata !{i32 786689, metadata !95, metadata !"r", metadata !96, i32 50331666, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 18, i32 16, metadata !95, null}
!169 = metadata !{i32 786689, metadata !95, metadata !"sigma", metadata !96, i32 67108883, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 19, i32 16, metadata !95, null}
!171 = metadata !{i32 786689, metadata !95, metadata !"T", metadata !96, i32 83886100, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 20, i32 16, metadata !95, null}
!173 = metadata !{i32 786689, metadata !95, metadata !"rand_number", metadata !96, i32 100663317, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 21, i32 16, metadata !95, null}
!175 = metadata !{i32 786689, metadata !95, metadata !"store", metadata !96, i32 117440534, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 22, i32 16, metadata !95, null}
!177 = metadata !{i32 786689, metadata !95, metadata !"M", metadata !96, i32 134217751, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 23, i32 13, metadata !95, null}
!179 = metadata !{i32 25, i32 2, metadata !180, null}
!180 = metadata !{i32 786443, metadata !95, i32 25, i32 1, metadata !96, i32 0} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 25, i32 38, metadata !180, null}
!182 = metadata !{i32 29, i32 8, metadata !183, null}
!183 = metadata !{i32 786443, metadata !180, i32 29, i32 3, metadata !96, i32 1} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 30, i32 7, metadata !185, null}
!185 = metadata !{i32 786443, metadata !183, i32 29, i32 26, metadata !96, i32 2} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 31, i32 7, metadata !185, null}
!187 = metadata !{i32 786688, metadata !180, metadata !"sum", metadata !96, i32 27, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 29, i32 22, metadata !183, null}
!189 = metadata !{i32 786688, metadata !180, metadata !"i", metadata !96, i32 26, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 34, i32 3, metadata !180, null}
