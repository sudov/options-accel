; ModuleID = '/home/student/vff6/ece5775/assignments/HighLevelSynth/options-accel/vinay-stuff/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = internal constant [20 x i8] c"black_scholes2_loop\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare double @llvm.sqrt.f64(double) nounwind readonly

declare double @llvm.exp.f64(double) nounwind readonly

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
  %M_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %M) nounwind
  %T_read = call double @_ssdm_op_Read.ap_auto.double(double %T) nounwind
  %sigma_read = call double @_ssdm_op_Read.ap_auto.double(double %sigma) nounwind
  %r_read = call double @_ssdm_op_Read.ap_auto.double(double %r) nounwind
  %E_read = call double @_ssdm_op_Read.ap_auto.double(double %E) nounwind
  %S_read = call double @_ssdm_op_Read.ap_auto.double(double %S) nounwind
  %tmp_5_to_int_i = bitcast double %r_read to i64
  %tmp_5_neg_i = xor i64 %tmp_5_to_int_i, -9223372036854775808
  %tmp_5_i = bitcast i64 %tmp_5_neg_i to double
  %tmp6 = fmul double %tmp_5_i, %T_read
  %tmp_6_i = fmul double %sigma_read, %sigma_read
  %tmp_7_i = fmul double %tmp_6_i, 5.000000e-01
  %tmp_8_i = fsub double %r_read, %tmp_7_i
  %tmp_9_i = fmul double %tmp_8_i, %T_read
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i_1, %2 ]
  %sum = phi double [ 0.000000e+00, %0 ], [ %sum_1, %2 ]
  %tmp = icmp slt i32 %i, %M_read
  %i_1 = add nsw i32 %i, 1
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_s = sext i32 %i to i64
  %rand_number_addr = getelementptr [10000 x double]* %rand_number, i64 0, i64 %tmp_s
  %rand_number_load = load double* %rand_number_addr, align 8
  %store_addr = getelementptr [10000 x double]* %store, i64 0, i64 %tmp_s
  %tmp_i = call double @llvm.sqrt.f64(double %T_read) nounwind
  %tmp_1_i = fmul double %tmp_i, %sigma_read
  %tmp_2_i = fmul double %tmp_1_i, %rand_number_load
  %tmp_3_i = fadd double %tmp_9_i, %tmp_2_i
  %tmp_4_i = call double @llvm.exp.f64(double %tmp_3_i) nounwind
  %current_value = fmul double %tmp_4_i, %S_read
  %tmp_10_i = call double @llvm.exp.f64(double %tmp6) nounwind
  %tmp_11_i = fsub double %current_value, %E_read
  %tmp_12_i = fcmp olt double %tmp_11_i, 0.000000e+00
  %tmp_13_i = select i1 %tmp_12_i, double 0.000000e+00, double %tmp_11_i
  %mydata = fmul double %tmp_10_i, %tmp_13_i
  store double %mydata, double* %store_addr, align 8
  %sum_1 = fadd double %sum, %mydata
  br label %1

; <label>:3                                       ; preds = %1
  ret double %sum
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

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
