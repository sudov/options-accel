; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = internal constant [20 x i8] c"black_scholes2_loop\00" ; [#uses=1 type=[20 x i8]*]

; [#uses=20]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
define double @black_scholes2_loop(double %S, double %E, double %r, double %sigma, double %T, [10000 x double]* %rand_number, [10000 x double]* %store, i32 %M) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(double %E) nounwind, !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma) nounwind, !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !120
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x double]* %rand_number) nounwind, !map !124
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x double]* %store) nounwind, !map !130
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %M) nounwind, !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !138
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !144), !dbg !145 ; [debug line = 16:16] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !146), !dbg !147 ; [debug line = 17:16] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !148), !dbg !149 ; [debug line = 18:16] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !150), !dbg !151 ; [debug line = 19:16] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !152), !dbg !153 ; [debug line = 20:16] [debug variable = T]
  call void @llvm.dbg.value(metadata !{[10000 x double]* %rand_number}, i64 0, metadata !154), !dbg !158 ; [debug line = 21:16] [debug variable = rand_number]
  call void @llvm.dbg.value(metadata !{[10000 x double]* %store}, i64 0, metadata !159), !dbg !160 ; [debug line = 22:16] [debug variable = store]
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !161), !dbg !162 ; [debug line = 23:13] [debug variable = M]
  br label %1, !dbg !163                          ; [debug line = 29:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %sum = phi double [ 0.000000e+00, %0 ], [ %sum.1, %2 ] ; [#uses=2 type=double]
  %tmp = icmp slt i32 %i, %M, !dbg !163           ; [#uses=1 type=i1] [debug line = 29:8]
  br i1 %tmp, label %2, label %3, !dbg !163       ; [debug line = 29:8]

; <label>:2                                       ; preds = %1
  %tmp. = sext i32 %i to i64, !dbg !166           ; [#uses=2 type=i64] [debug line = 30:7]
  %rand_number.addr = getelementptr [10000 x double]* %rand_number, i64 0, i64 %tmp., !dbg !166 ; [#uses=1 type=double*] [debug line = 30:7]
  %gaussian_random_number.assign = load double* %rand_number.addr, align 8, !dbg !166 ; [#uses=1 type=double] [debug line = 30:7]
  %store.addr = getelementptr [10000 x double]* %store, i64 0, i64 %tmp., !dbg !166 ; [#uses=1 type=double*] [debug line = 30:7]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !168) nounwind, !dbg !169 ; [debug line = 40:22@30:7] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !170) nounwind, !dbg !171 ; [debug line = 41:22@30:7] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !172) nounwind, !dbg !173 ; [debug line = 42:22@30:7] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !174) nounwind, !dbg !175 ; [debug line = 43:22@30:7] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !176) nounwind, !dbg !177 ; [debug line = 44:22@30:7] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number.assign}, i64 0, metadata !178) nounwind, !dbg !179 ; [debug line = 45:22@30:7] [debug variable = gaussian_random_number]
  %tmp.5_to_int.i = bitcast double %r to i64, !dbg !180 ; [#uses=1 type=i64] [debug line = 70:5@30:7]
  %tmp.5_neg.i = xor i64 %tmp.5_to_int.i, -9223372036854775808, !dbg !180 ; [#uses=1 type=i64] [debug line = 70:5@30:7]
  %tmp.5.i = bitcast i64 %tmp.5_neg.i to double, !dbg !180 ; [#uses=1 type=double] [debug line = 70:5@30:7]
  %tmp6 = fmul double %tmp.5.i, %T, !dbg !180     ; [#uses=1 type=double] [debug line = 70:5@30:7]
  call void @llvm.dbg.value(metadata !{double %tmp6}, i64 0, metadata !182) nounwind, !dbg !180 ; [debug line = 70:5@30:7] [debug variable = tmp6]
  %tmp.6.i = fmul double %sigma, %sigma, !dbg !183 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp.7.i = fmul double %tmp.6.i, 5.000000e-01, !dbg !183 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp.8.i = fsub double %r, %tmp.7.i, !dbg !183  ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp.9.i = fmul double %tmp.8.i, %T, !dbg !183  ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp..i = call double @llvm.sqrt.f64(double %T) nounwind, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp.1.i = fmul double %tmp..i, %sigma, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp.2.i = fmul double %tmp.1.i, %gaussian_random_number.assign, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp.3.i = fadd double %tmp.9.i, %tmp.2.i, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp.4.i = call double @llvm.exp.f64(double %tmp.3.i) nounwind, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %current_value = fmul double %tmp.4.i, %S, !dbg !184 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  call void @llvm.dbg.value(metadata !{double %current_value}, i64 0, metadata !185) nounwind, !dbg !184 ; [debug line = 74:71@30:7] [debug variable = current_value]
  %tmp.10.i = call double @llvm.exp.f64(double %tmp6) nounwind, !dbg !186 ; [#uses=1 type=double] [debug line = 75:14@30:7]
  %tmp.11.i = fsub double %current_value, %E, !dbg !186 ; [#uses=2 type=double] [debug line = 75:14@30:7]
  %tmp.12.i = fcmp olt double %tmp.11.i, 0.000000e+00, !dbg !186 ; [#uses=1 type=i1] [debug line = 75:14@30:7]
  %tmp.13.i = select i1 %tmp.12.i, double 0.000000e+00, double %tmp.11.i, !dbg !186 ; [#uses=1 type=double] [debug line = 75:14@30:7]
  %mydata = fmul double %tmp.10.i, %tmp.13.i, !dbg !186 ; [#uses=2 type=double] [debug line = 75:14@30:7]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !187) nounwind, !dbg !186 ; [debug line = 75:14@30:7] [debug variable = mydata]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !188) nounwind, !dbg !189 ; [debug line = 46:16@30:7] [debug variable = store]
  store double %mydata, double* %store.addr, align 8, !dbg !166 ; [debug line = 30:7]
  %sum.1 = fadd double %sum, %mydata, !dbg !190   ; [#uses=1 type=double] [debug line = 31:7]
  call void @llvm.dbg.value(metadata !{double %sum.1}, i64 0, metadata !191), !dbg !190 ; [debug line = 31:7] [debug variable = sum]
  %i.1 = add nsw i32 %i, 1, !dbg !192             ; [#uses=1 type=i32] [debug line = 29:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !193), !dbg !192 ; [debug line = 29:22] [debug variable = i]
  br label %1, !dbg !192                          ; [debug line = 29:22]

; <label>:3                                       ; preds = %1
  %sum.lcssa = phi double [ %sum, %1 ]            ; [#uses=1 type=double]
  ret double %sum.lcssa, !dbg !194                ; [debug line = 34:3]
}

!llvm.dbg.cu = !{!0, !49, !72, !92}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/mt19937ar.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !31} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !17, metadata !20, metadata !24, metadata !28, metadata !29, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_genrand", metadata !"init_genrand", metadata !"", metadata !6, i32 57, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 58} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mt19937ar.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"init_by_array", metadata !"init_by_array", metadata !"", metadata !6, i32 76, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 77} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_int32", metadata !"genrand_int32", metadata !"", metadata !6, i32 102, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 103} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_int31", metadata !"genrand_int31", metadata !"", metadata !6, i32 140, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 141} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real1", metadata !"genrand_real1", metadata !"", metadata !6, i32 146, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 147} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real2", metadata !"genrand_real2", metadata !"", metadata !6, i32 153, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 154} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_real3", metadata !"genrand_real3", metadata !"", metadata !6, i32 160, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 161} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"genrand_res53", metadata !"genrand_res53", metadata !"", metadata !6, i32 167, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 168} ; [ DW_TAG_subprogram ]
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
!52 = metadata !{i32 786478, i32 0, metadata !53, metadata !"init_gaussrand_state", metadata !"init_gaussrand_state", metadata !"", metadata !53, i32 6, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 7} ; [ DW_TAG_subprogram ]
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
!65 = metadata !{i32 786478, i32 0, metadata !53, metadata !"gaussrand2", metadata !"gaussrand2", metadata !"", metadata !53, i32 19, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 20} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !27, metadata !56}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !70, metadata !41, metadata !44, metadata !45, metadata !46}
!70 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !71, i32 157, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!72 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/black_scholes2.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !73, metadata !68} ; [ DW_TAG_compile_unit ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !91}
!75 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_1", metadata !"mult2_1", metadata !"", metadata !76, i32 18, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 18} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786473, metadata !"black_scholes2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !27, metadata !27, metadata !27}
!79 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_2", metadata !"mult2_2", metadata !"", metadata !76, i32 21, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 21} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786478, i32 0, metadata !76, metadata !"mult2_3", metadata !"mult2_3", metadata !"", metadata !76, i32 24, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 24} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !76, metadata !"div_1", metadata !"div_1", metadata !"", metadata !76, i32 27, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 27} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786478, i32 0, metadata !76, metadata !"expo1", metadata !"expo1", metadata !"", metadata !76, i32 31, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 31} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !27, metadata !27}
!85 = metadata !{i32 786478, i32 0, metadata !76, metadata !"sqrt1", metadata !"sqrt1", metadata !"", metadata !76, i32 35, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 35} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes2", metadata !"black_scholes2", metadata !"", metadata !76, i32 39, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 48} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{null, metadata !89, metadata !89, metadata !89, metadata !89, metadata !89, metadata !89, metadata !90}
!89 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786478, i32 0, metadata !76, metadata !"black_scholes3", metadata !"black_scholes3", metadata !"", metadata !76, i32 83, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 92} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/black_scholes2_loop.pragma.2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !93, metadata !68} ; [ DW_TAG_compile_unit ]
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !95, metadata !99}
!95 = metadata !{i32 786478, i32 0, metadata !96, metadata !"black_scholes2_loop", metadata !"black_scholes2_loop", metadata !"", metadata !96, i32 15, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786473, metadata !"black_scholes2_loop.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !90, metadata !90, metadata !16}
!99 = metadata !{i32 786478, i32 0, metadata !96, metadata !"black_scholes3_loop", metadata !"black_scholes3_loop", metadata !"", metadata !96, i32 38, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 49} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !90, metadata !90, metadata !16, metadata !90}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 63, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"S", metadata !106, metadata !"double"}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 0, i32 0}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 63, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"E", metadata !106, metadata !"double"}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 63, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"r", metadata !106, metadata !"double"}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 63, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"sigma", metadata !106, metadata !"double"}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 63, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"T", metadata !106, metadata !"double"}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 63, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"rand_number", metadata !128, metadata !"double"}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 9999, i32 1}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 63, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"store", metadata !128, metadata !"double"}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 31, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"M", metadata !106, metadata !"int"}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 63, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"return", metadata !142, metadata !""}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 1, i32 0}
!144 = metadata !{i32 786689, metadata !95, metadata !"S", metadata !96, i32 16777232, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 16, i32 16, metadata !95, null}
!146 = metadata !{i32 786689, metadata !95, metadata !"E", metadata !96, i32 33554449, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 17, i32 16, metadata !95, null}
!148 = metadata !{i32 786689, metadata !95, metadata !"r", metadata !96, i32 50331666, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 18, i32 16, metadata !95, null}
!150 = metadata !{i32 786689, metadata !95, metadata !"sigma", metadata !96, i32 67108883, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 19, i32 16, metadata !95, null}
!152 = metadata !{i32 786689, metadata !95, metadata !"T", metadata !96, i32 83886100, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 20, i32 16, metadata !95, null}
!154 = metadata !{i32 786689, metadata !95, metadata !"rand_number", null, i32 21, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640000, i64 64, i32 0, i32 0, metadata !27, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ]
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 9999}    ; [ DW_TAG_subrange_type ]
!158 = metadata !{i32 21, i32 16, metadata !95, null}
!159 = metadata !{i32 786689, metadata !95, metadata !"store", null, i32 22, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 22, i32 16, metadata !95, null}
!161 = metadata !{i32 786689, metadata !95, metadata !"M", metadata !96, i32 134217751, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 23, i32 13, metadata !95, null}
!163 = metadata !{i32 29, i32 8, metadata !164, null}
!164 = metadata !{i32 786443, metadata !165, i32 29, i32 3, metadata !96, i32 1} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786443, metadata !95, i32 25, i32 1, metadata !96, i32 0} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 30, i32 7, metadata !167, null}
!167 = metadata !{i32 786443, metadata !164, i32 29, i32 26, metadata !96, i32 2} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786689, metadata !86, metadata !"S", metadata !76, i32 16777256, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 40, i32 22, metadata !86, metadata !166}
!170 = metadata !{i32 786689, metadata !86, metadata !"E", metadata !76, i32 33554473, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 41, i32 22, metadata !86, metadata !166}
!172 = metadata !{i32 786689, metadata !86, metadata !"r", metadata !76, i32 50331690, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 42, i32 22, metadata !86, metadata !166}
!174 = metadata !{i32 786689, metadata !86, metadata !"sigma", metadata !76, i32 67108907, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 43, i32 22, metadata !86, metadata !166}
!176 = metadata !{i32 786689, metadata !86, metadata !"T", metadata !76, i32 83886124, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 44, i32 22, metadata !86, metadata !166}
!178 = metadata !{i32 786689, metadata !86, metadata !"gaussian_random_number", metadata !76, i32 100663341, metadata !89, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 45, i32 22, metadata !86, metadata !166}
!180 = metadata !{i32 70, i32 5, metadata !181, metadata !166}
!181 = metadata !{i32 786443, metadata !86, i32 48, i32 1, metadata !76, i32 6} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786688, metadata !181, metadata !"tmp6", metadata !76, i32 57, metadata !27, i32 0, metadata !166} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 74, i32 25, metadata !181, metadata !166}
!184 = metadata !{i32 74, i32 71, metadata !181, metadata !166}
!185 = metadata !{i32 786688, metadata !181, metadata !"current_value", metadata !76, i32 50, metadata !27, i32 0, metadata !166} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 75, i32 14, metadata !181, metadata !166}
!187 = metadata !{i32 786688, metadata !181, metadata !"mydata", metadata !76, i32 51, metadata !27, i32 0, metadata !166} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 790534, metadata !86, metadata !"store", null, i32 46, metadata !90, i32 0, metadata !166} ; [ DW_TAG_arg_variable_wo ]
!189 = metadata !{i32 46, i32 16, metadata !86, metadata !166}
!190 = metadata !{i32 31, i32 7, metadata !167, null}
!191 = metadata !{i32 786688, metadata !165, metadata !"sum", metadata !96, i32 27, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 29, i32 22, metadata !164, null}
!193 = metadata !{i32 786688, metadata !165, metadata !"i", metadata !96, i32 26, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 34, i32 3, metadata !165, null}
