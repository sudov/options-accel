; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/hls.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [15 x i8] c"black_scholes2\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
define double @black_scholes2(double %S, double %E, double %r, double %sigma, double %T, double %gaussian_random_number) nounwind uwtable readonly {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(double %S) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(double %E) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(double %r) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(double %sigma) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(double %T) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(double %gaussian_random_number) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  %gaussian_random_number_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussian_random_number) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number_read}, i64 0, metadata !44), !dbg !53 ; [debug line = 34:23] [debug variable = gaussian_random_number]
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind ; [#uses=3 type=double]
  call void @llvm.dbg.value(metadata !{double %T_read}, i64 0, metadata !54), !dbg !55 ; [debug line = 33:23] [debug variable = T]
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind ; [#uses=3 type=double]
  call void @llvm.dbg.value(metadata !{double %sigma_read}, i64 0, metadata !56), !dbg !57 ; [debug line = 32:23] [debug variable = sigma]
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind ; [#uses=2 type=double]
  call void @llvm.dbg.value(metadata !{double %r_read}, i64 0, metadata !58), !dbg !59 ; [debug line = 31:23] [debug variable = r]
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %E_read}, i64 0, metadata !60), !dbg !61 ; [debug line = 30:23] [debug variable = E]
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %S_read}, i64 0, metadata !62), !dbg !63 ; [debug line = 29:23] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %S}, i64 0, metadata !62), !dbg !63 ; [debug line = 29:23] [debug variable = S]
  call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !60), !dbg !61 ; [debug line = 30:23] [debug variable = E]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !58), !dbg !59 ; [debug line = 31:23] [debug variable = r]
  call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !56), !dbg !57 ; [debug line = 32:23] [debug variable = sigma]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !54), !dbg !55 ; [debug line = 33:23] [debug variable = T]
  call void @llvm.dbg.value(metadata !{double %gaussian_random_number}, i64 0, metadata !44), !dbg !53 ; [debug line = 34:23] [debug variable = gaussian_random_number]
  %tmp = fmul double %sigma_read, %sigma_read, !dbg !64 ; [#uses=1 type=double] [debug line = 42:25]
  %tmp_1 = fmul double %tmp, 5.000000e-01, !dbg !64 ; [#uses=1 type=double] [debug line = 42:25]
  %tmp_2 = fsub double %r_read, %tmp_1, !dbg !64  ; [#uses=1 type=double] [debug line = 42:25]
  %tmp_3 = fmul double %tmp_2, %T_read, !dbg !64  ; [#uses=1 type=double] [debug line = 42:25]
  %tmp_4 = call double @llvm.sqrt.f64(double %T_read), !dbg !66 ; [#uses=1 type=double] [debug line = 42:71]
  %tmp_5 = fmul double %tmp_4, %sigma_read, !dbg !66 ; [#uses=1 type=double] [debug line = 42:71]
  %tmp_6 = fmul double %tmp_5, %gaussian_random_number_read, !dbg !66 ; [#uses=1 type=double] [debug line = 42:71]
  %tmp_7 = fadd double %tmp_3, %tmp_6, !dbg !66   ; [#uses=1 type=double] [debug line = 42:71]
  %tmp_8 = call double @llvm.exp.f64(double %tmp_7), !dbg !66 ; [#uses=1 type=double] [debug line = 42:71]
  %current_value = fmul double %tmp_8, %S_read, !dbg !66 ; [#uses=1 type=double] [debug line = 42:71]
  call void @llvm.dbg.value(metadata !{double %current_value}, i64 0, metadata !67), !dbg !66 ; [debug line = 42:71] [debug variable = current_value]
  %tmp_9_to_int = bitcast double %r_read to i64, !dbg !68 ; [#uses=1 type=i64] [debug line = 43:14]
  %tmp_9_neg = xor i64 %tmp_9_to_int, -9223372036854775808, !dbg !68 ; [#uses=1 type=i64] [debug line = 43:14]
  %tmp_9 = bitcast i64 %tmp_9_neg to double, !dbg !68 ; [#uses=1 type=double] [debug line = 43:14]
  %tmp_s = fmul double %tmp_9, %T_read, !dbg !68  ; [#uses=1 type=double] [debug line = 43:14]
  %tmp_10 = call double @llvm.exp.f64(double %tmp_s), !dbg !68 ; [#uses=1 type=double] [debug line = 43:14]
  %tmp_11 = fsub double %current_value, %E_read, !dbg !68 ; [#uses=2 type=double] [debug line = 43:14]
  %tmp_12 = fcmp olt double %tmp_11, 0.000000e+00, !dbg !68 ; [#uses=1 type=i1] [debug line = 43:14]
  %tmp_13 = select i1 %tmp_12, double 0.000000e+00, double %tmp_11, !dbg !68 ; [#uses=1 type=double] [debug line = 43:14]
  %mydata = fmul double %tmp_10, %tmp_13, !dbg !68 ; [#uses=1 type=double] [debug line = 43:14]
  call void @llvm.dbg.value(metadata !{double %mydata}, i64 0, metadata !69), !dbg !68 ; [debug line = 43:14] [debug variable = mydata]
  ret double %mydata, !dbg !70                    ; [debug line = 48:5]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
declare double @llvm.sqrt.f64(double) nounwind readonly

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=6]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, null}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"__dso_handle", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 63, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"S", metadata !16, metadata !"double"}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 63, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"E", metadata !16, metadata !"double"}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 63, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"r", metadata !16, metadata !"double"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 63, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"sigma", metadata !16, metadata !"double"}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"T", metadata !16, metadata !"double"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"gaussian_random_number", metadata !16, metadata !"double"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 63, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"return", metadata !42, metadata !""}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 1, i32 0}
!44 = metadata !{i32 786689, metadata !45, metadata !"gaussian_random_number", metadata !46, i32 100663330, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786478, i32 0, metadata !46, metadata !"black_scholes2", metadata !"black_scholes2", metadata !"", metadata !46, i32 28, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, double, double, double, double, double)* @black_scholes2, null, null, metadata !51, i32 36} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786473, metadata !"black_scholes2.c", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{metadata !49, metadata !50, metadata !50, metadata !50, metadata !50, metadata !50, metadata !50}
!49 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!53 = metadata !{i32 34, i32 23, metadata !45, null}
!54 = metadata !{i32 786689, metadata !45, metadata !"T", metadata !46, i32 83886113, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 33, i32 23, metadata !45, null}
!56 = metadata !{i32 786689, metadata !45, metadata !"sigma", metadata !46, i32 67108896, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 32, i32 23, metadata !45, null}
!58 = metadata !{i32 786689, metadata !45, metadata !"r", metadata !46, i32 50331679, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 31, i32 23, metadata !45, null}
!60 = metadata !{i32 786689, metadata !45, metadata !"E", metadata !46, i32 33554462, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 30, i32 23, metadata !45, null}
!62 = metadata !{i32 786689, metadata !45, metadata !"S", metadata !46, i32 16777245, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 29, i32 23, metadata !45, null}
!64 = metadata !{i32 42, i32 25, metadata !65, null}
!65 = metadata !{i32 786443, metadata !45, i32 36, i32 1, metadata !46, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 42, i32 71, metadata !65, null}
!67 = metadata !{i32 786688, metadata !65, metadata !"current_value", metadata !46, i32 38, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 43, i32 14, metadata !65, null}
!69 = metadata !{i32 786688, metadata !65, metadata !"mydata", metadata !46, i32 39, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 48, i32 5, metadata !65, null}
