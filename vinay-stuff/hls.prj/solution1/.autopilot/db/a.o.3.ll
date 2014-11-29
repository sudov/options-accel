; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = internal constant [20 x i8] c"black_scholes2_loop\00" ; [#uses=1 type=[20 x i8]*]

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
define double @black_scholes2_loop(double %S, double %E, double %r, double %sigma, double %T, [10000 x double]* %rand_number, [10000 x double]* %store, i32 %M) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(double %E) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x double]* %rand_number) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x double]* %store) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %M) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @str) nounwind
  %M_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %M) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %M_read}, i64 0, metadata !42), !dbg !52 ; [debug line = 23:13] [debug variable = M]
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind ; [#uses=3 type=double]
  call void @llvm.dbg.value(metadata !{double %T_read}, i64 0, metadata !53), !dbg !54 ; [debug line = 20:16] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %T_read}, i64 0, metadata !55) nounwind, !dbg !65 ; [debug line = 44:22@30:7] [debug variable = T]
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind ; [#uses=3 type=double]
  call void @llvm.dbg.value(metadata !{double %sigma_read}, i64 0, metadata !66), !dbg !67 ; [debug line = 19:16] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %sigma_read}, i64 0, metadata !68) nounwind, !dbg !69 ; [debug line = 43:22@30:7] [debug variable = sigma]
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind ; [#uses=2 type=double]
  call void @llvm.dbg.value(metadata !{double %r_read}, i64 0, metadata !70), !dbg !71 ; [debug line = 18:16] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %r_read}, i64 0, metadata !72) nounwind, !dbg !73 ; [debug line = 42:22@30:7] [debug variable = r]
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %E_read}, i64 0, metadata !74), !dbg !75 ; [debug line = 17:16] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %E_read}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 41:22@30:7] [debug variable = E]
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !78), !dbg !79 ; [debug line = 16:16] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !80) nounwind, !dbg !81 ; [debug line = 40:22@30:7] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !78), !dbg !79 ; [debug line = 16:16] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !74), !dbg !75 ; [debug line = 17:16] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !70), !dbg !71 ; [debug line = 18:16] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !66), !dbg !67 ; [debug line = 19:16] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !53), !dbg !54 ; [debug line = 20:16] [debug variable = T]
  call void @llvm.dbg.value(metadata !{[10000 x double]* %rand_number}, i64 0, metadata !82), !dbg !86 ; [debug line = 21:16] [debug variable = rand_number]
  call void @llvm.dbg.value(metadata !{[10000 x double]* %store}, i64 0, metadata !87), !dbg !88 ; [debug line = 22:16] [debug variable = store]
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !42), !dbg !52 ; [debug line = 23:13] [debug variable = M]
  %tmp_5_to_int_i = bitcast double %r_read to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 70:5@30:7]
  %tmp_5_neg_i = xor i64 %tmp_5_to_int_i, -9223372036854775808, !dbg !89 ; [#uses=1 type=i64] [debug line = 70:5@30:7]
  %tmp_5_i = bitcast i64 %tmp_5_neg_i to double, !dbg !89 ; [#uses=1 type=double] [debug line = 70:5@30:7]
  %tmp6 = fmul double %tmp_5_i, %T_read, !dbg !89 ; [#uses=1 type=double] [debug line = 70:5@30:7]
  %tmp_6_i = fmul double %sigma_read, %sigma_read, !dbg !91 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp_7_i = fmul double %tmp_6_i, 5.000000e-01, !dbg !91 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp_8_i = fsub double %r_read, %tmp_7_i, !dbg !91 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  %tmp_9_i = fmul double %tmp_8_i, %T_read, !dbg !91 ; [#uses=1 type=double] [debug line = 74:25@30:7]
  br label %1, !dbg !92                           ; [debug line = 29:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=3 type=i32]
  %sum = phi double [ 0.000000e+00, %0 ], [ %sum_1, %2 ] ; [#uses=2 type=double]
  %tmp = icmp slt i32 %i, %M_read, !dbg !92       ; [#uses=1 type=i1] [debug line = 29:8]
  %i_1 = add nsw i32 %i, 1, !dbg !93              ; [#uses=1 type=i32] [debug line = 29:22]
  br i1 %tmp, label %2, label %3, !dbg !92        ; [debug line = 29:8]

; <label>:2                                       ; preds = %1
  %tmp_s = sext i32 %i to i64, !dbg !61           ; [#uses=2 type=i64] [debug line = 30:7]
  %rand_number_addr = getelementptr [10000 x double]* %rand_number, i64 0, i64 %tmp_s, !dbg !61 ; [#uses=1 type=double*] [debug line = 30:7]
  %rand_number_load = load double* %rand_number_addr, align 8, !dbg !61 ; [#uses=1 type=double] [debug line = 30:7]
  %store_addr = getelementptr [10000 x double]* %store, i64 0, i64 %tmp_s, !dbg !61 ; [#uses=1 type=double*] [debug line = 30:7]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !80) nounwind, !dbg !81 ; [debug line = 40:22@30:7] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 41:22@30:7] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !72) nounwind, !dbg !73 ; [debug line = 42:22@30:7] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !68) nounwind, !dbg !69 ; [debug line = 43:22@30:7] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !55) nounwind, !dbg !65 ; [debug line = 44:22@30:7] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %rand_number_load}, i64 0, metadata !94) nounwind, !dbg !95 ; [debug line = 45:22@30:7] [debug variable = gaussian_random_number]
  call void @llvm.dbg.value(metadata !{double %tmp6}, i64 0, metadata !96) nounwind, !dbg !89 ; [debug line = 70:5@30:7] [debug variable = tmp6]
  %tmp_i = call double @llvm.sqrt.f64(double %T_read) nounwind, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp_1_i = fmul double %tmp_i, %sigma_read, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp_2_i = fmul double %tmp_1_i, %rand_number_load, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp_3_i = fadd double %tmp_9_i, %tmp_2_i, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %tmp_4_i = call double @llvm.exp.f64(double %tmp_3_i) nounwind, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  %current_value = fmul double %tmp_4_i, %S_read, !dbg !97 ; [#uses=1 type=double] [debug line = 74:71@30:7]
  call void @llvm.dbg.value(metadata !{double %current_value}, i64 0, metadata !98) nounwind, !dbg !97 ; [debug line = 74:71@30:7] [debug variable = current_value]
  %tmp_10_i = call double @llvm.exp.f64(double %tmp6) nounwind, !dbg !99 ; [#uses=1 type=double] [debug line = 75:14@30:7]
  %tmp_11_i = fsub double %current_value, %E_read, !dbg !99 ; [#uses=2 type=double] [debug line = 75:14@30:7]
  %tmp_12_i = fcmp olt double %tmp_11_i, 0.000000e+00, !dbg !99 ; [#uses=1 type=i1] [debug line = 75:14@30:7]
  %tmp_13_i = select i1 %tmp_12_i, double 0.000000e+00, double %tmp_11_i, !dbg !99 ; [#uses=1 type=double] [debug line = 75:14@30:7]
  %mydata = fmul double %tmp_10_i, %tmp_13_i, !dbg !99 ; [#uses=2 type=double] [debug line = 75:14@30:7]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !100) nounwind, !dbg !99 ; [debug line = 75:14@30:7] [debug variable = mydata]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !101) nounwind, !dbg !102 ; [debug line = 46:16@30:7] [debug variable = store]
  store double %mydata, double* %store_addr, align 8, !dbg !61 ; [debug line = 30:7]
  %sum_1 = fadd double %sum, %mydata, !dbg !103   ; [#uses=1 type=double] [debug line = 31:7]
  call void @llvm.dbg.value(metadata !{double %sum_1}, i64 0, metadata !104), !dbg !103 ; [debug line = 31:7] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !105), !dbg !93 ; [debug line = 29:22] [debug variable = i]
  br label %1, !dbg !93                           ; [debug line = 29:22]

; <label>:3                                       ; preds = %1
  ret double %sum, !dbg !106                      ; [debug line = 34:3]
}

; [#uses=5]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 63, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"S", metadata !4, metadata !"double"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 63, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"E", metadata !4, metadata !"double"}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 63, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"r", metadata !4, metadata !"double"}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 63, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"sigma", metadata !4, metadata !"double"}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 63, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"T", metadata !4, metadata !"double"}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 63, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"rand_number", metadata !26, metadata !"double"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 9999, i32 1}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 63, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"store", metadata !26, metadata !"double"}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"M", metadata !4, metadata !"int"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 63, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"return", metadata !40, metadata !""}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 1, i32 0}
!42 = metadata !{i32 786689, metadata !43, metadata !"M", metadata !44, i32 134217751, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 786478, i32 0, metadata !44, metadata !"black_scholes2_loop", metadata !"black_scholes2_loop", metadata !"", metadata !44, i32 15, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 25} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786473, metadata !"black_scholes2_loop.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !47, metadata !47, metadata !47, metadata !47, metadata !47, metadata !47, metadata !48, metadata !48, metadata !49}
!47 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!52 = metadata !{i32 23, i32 13, metadata !43, null}
!53 = metadata !{i32 786689, metadata !43, metadata !"T", metadata !44, i32 83886100, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 20, i32 16, metadata !43, null}
!55 = metadata !{i32 786689, metadata !56, metadata !"T", metadata !57, i32 83886124, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 786478, i32 0, metadata !57, metadata !"black_scholes2", metadata !"black_scholes2", metadata !"", metadata !57, i32 39, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 48} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786473, metadata !"black_scholes2.c", metadata !"/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !60, metadata !60, metadata !60, metadata !60, metadata !60, metadata !48}
!60 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!61 = metadata !{i32 30, i32 7, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 29, i32 26, metadata !44, i32 2} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 29, i32 3, metadata !44, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !43, i32 25, i32 1, metadata !44, i32 0} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 44, i32 22, metadata !56, metadata !61}
!66 = metadata !{i32 786689, metadata !43, metadata !"sigma", metadata !44, i32 67108883, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 19, i32 16, metadata !43, null}
!68 = metadata !{i32 786689, metadata !56, metadata !"sigma", metadata !57, i32 67108907, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 43, i32 22, metadata !56, metadata !61}
!70 = metadata !{i32 786689, metadata !43, metadata !"r", metadata !44, i32 50331666, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 18, i32 16, metadata !43, null}
!72 = metadata !{i32 786689, metadata !56, metadata !"r", metadata !57, i32 50331690, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 42, i32 22, metadata !56, metadata !61}
!74 = metadata !{i32 786689, metadata !43, metadata !"E", metadata !44, i32 33554449, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 17, i32 16, metadata !43, null}
!76 = metadata !{i32 786689, metadata !56, metadata !"E", metadata !57, i32 33554473, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 41, i32 22, metadata !56, metadata !61}
!78 = metadata !{i32 786689, metadata !43, metadata !"S", metadata !44, i32 16777232, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 16, i32 16, metadata !43, null}
!80 = metadata !{i32 786689, metadata !56, metadata !"S", metadata !57, i32 16777256, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 40, i32 22, metadata !56, metadata !61}
!82 = metadata !{i32 786689, metadata !43, metadata !"rand_number", null, i32 21, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640000, i64 64, i32 0, i32 0, metadata !47, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 21, i32 16, metadata !43, null}
!87 = metadata !{i32 786689, metadata !43, metadata !"store", null, i32 22, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 22, i32 16, metadata !43, null}
!89 = metadata !{i32 70, i32 5, metadata !90, metadata !61}
!90 = metadata !{i32 786443, metadata !56, i32 48, i32 1, metadata !57, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 74, i32 25, metadata !90, metadata !61}
!92 = metadata !{i32 29, i32 8, metadata !63, null}
!93 = metadata !{i32 29, i32 22, metadata !63, null}
!94 = metadata !{i32 786689, metadata !56, metadata !"gaussian_random_number", metadata !57, i32 100663341, metadata !60, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 45, i32 22, metadata !56, metadata !61}
!96 = metadata !{i32 786688, metadata !90, metadata !"tmp6", metadata !57, i32 57, metadata !47, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 74, i32 71, metadata !90, metadata !61}
!98 = metadata !{i32 786688, metadata !90, metadata !"current_value", metadata !57, i32 50, metadata !47, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 75, i32 14, metadata !90, metadata !61}
!100 = metadata !{i32 786688, metadata !90, metadata !"mydata", metadata !57, i32 51, metadata !47, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 790534, metadata !56, metadata !"store", null, i32 46, metadata !48, i32 0, metadata !61} ; [ DW_TAG_arg_variable_wo ]
!102 = metadata !{i32 46, i32 16, metadata !56, metadata !61}
!103 = metadata !{i32 31, i32 7, metadata !62, null}
!104 = metadata !{i32 786688, metadata !64, metadata !"sum", metadata !44, i32 27, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !44, i32 26, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 34, i32 3, metadata !64, null}
