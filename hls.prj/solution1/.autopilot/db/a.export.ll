; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"black_scholes2\00"

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
  %gaussian_random_number_read = call double @_ssdm_op_Read.ap_auto.double(double %gaussian_random_number) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %tmp = fmul double %sigma_read, %sigma_read
  %tmp_1 = fmul double %tmp, 5.000000e-01
  %tmp_2 = fsub double %r_read, %tmp_1
  %tmp_3 = fmul double %tmp_2, %T_read
  %tmp_4 = call double @llvm.sqrt.f64(double %T_read)
  %tmp_5 = fmul double %tmp_4, %sigma_read
  %tmp_6 = fmul double %tmp_5, %gaussian_random_number_read
  %tmp_7 = fadd double %tmp_3, %tmp_6
  %tmp_8 = call double @llvm.exp.f64(double %tmp_7)
  %current_value = fmul double %tmp_8, %S_read
  %tmp_9_to_int = bitcast double %r_read to i64
  %tmp_9_neg = xor i64 %tmp_9_to_int, -9223372036854775808
  %tmp_9 = bitcast i64 %tmp_9_neg to double
  %tmp_s = fmul double %tmp_9, %T_read
  %tmp_10 = call double @llvm.exp.f64(double %tmp_s)
  %tmp_11 = fsub double %current_value, %E_read
  %tmp_12 = fcmp olt double %tmp_11, 0.000000e+00
  %tmp_13 = select i1 %tmp_12, double 0.000000e+00, double %tmp_11
  %mydata = fmul double %tmp_10, %tmp_13
  ret double %mydata
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

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

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
