; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2                       ; [#uses=2 type=i16*]
@kk_p1 = global i16 1, align 2                    ; [#uses=2 type=i16*]
@kk_pm = global i16 397, align 2                  ; [#uses=2 type=i16*]
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@p_str25 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=3 type=[5 x i8]*]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941] ; [#uses=0 type=[2 x void ()*]*]
@str = internal constant [4 x i8] c"dut\00"       ; [#uses=1 type=[4 x i8]*]
@str531 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@str532 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !29 ; [debug line = 118:1]
  %kk_load = load i16* @kk, align 2, !dbg !38     ; [#uses=3 type=i16] [debug line = 124:2]
  %tmp = zext i16 %kk_load to i64, !dbg !38       ; [#uses=1 type=i64] [debug line = 124:2]
  %mt_kk_addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !38 ; [#uses=2 type=i64*] [debug line = 124:2]
  %mt_kk_load = load i64* %mt_kk_addr, align 8, !dbg !38 ; [#uses=1 type=i64] [debug line = 124:2]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %mt_kk_load, i32 31) ; [#uses=1 type=i1]
  %kk_p1_load = load i16* @kk_p1, align 2, !dbg !38 ; [#uses=3 type=i16] [debug line = 124:2]
  %tmp_5 = zext i16 %kk_p1_load to i64, !dbg !38  ; [#uses=1 type=i64] [debug line = 124:2]
  %mt_kkp1_addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp_5, !dbg !38 ; [#uses=2 type=i64*] [debug line = 124:2]
  %mt_kkp1_load = load i64* %mt_kkp1_addr, align 8, !dbg !38 ; [#uses=2 type=i64] [debug line = 124:2]
  %tmp_3 = trunc i64 %mt_kkp1_load to i1, !dbg !38 ; [#uses=1 type=i1] [debug line = 124:2]
  %mag01_cast_cast = select i1 %tmp_3, i64 2567483615, i64 0, !dbg !39 ; [#uses=1 type=i64] [debug line = 125:2]
  %kk_pm_load = load i16* @kk_pm, align 2, !dbg !40 ; [#uses=3 type=i16] [debug line = 126:2]
  %tmp_9 = zext i16 %kk_pm_load to i64, !dbg !40  ; [#uses=1 type=i64] [debug line = 126:2]
  %mt_kkpm_addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp_9, !dbg !40 ; [#uses=2 type=i64*] [debug line = 126:2]
  %mt_kkpm_load = load i64* %mt_kkpm_addr, align 8, !dbg !40 ; [#uses=1 type=i64] [debug line = 126:2]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64 %mt_kkp1_load, i32 1, i32 30) ; [#uses=1 type=i30]
  %tmp_s = call i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1 %tmp_1, i30 %tmp_2), !dbg !40 ; [#uses=1 type=i31] [debug line = 126:2]
  %tmp_cast = zext i31 %tmp_s to i64, !dbg !40    ; [#uses=1 type=i64] [debug line = 126:2]
  %tmp1 = xor i64 %mag01_cast_cast, %mt_kkpm_load, !dbg !40 ; [#uses=1 type=i64] [debug line = 126:2]
  %mt_kk_new = xor i64 %tmp1, %tmp_cast, !dbg !40 ; [#uses=3 type=i64] [debug line = 126:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !41), !dbg !40 ; [debug line = 126:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk_addr, align 8, !dbg !42 ; [debug line = 129:2]
  store i64 %mt_kk_new, i64* %mt_kkp1_addr, align 8, !dbg !43 ; [debug line = 130:2]
  store i64 %mt_kk_new, i64* %mt_kkpm_addr, align 8, !dbg !44 ; [debug line = 131:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !45), !dbg !46 ; [debug line = 134:2] [debug variable = y]
  %a_assign = add i16 %kk_load, 1, !dbg !47       ; [#uses=2 type=i16] [debug line = 141:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign}, i64 0, metadata !48), !dbg !53 ; [debug line = 85:37@141:7] [debug variable = a]
  %tmp_i = icmp ugt i16 %a_assign, 623, !dbg !54  ; [#uses=1 type=i1] [debug line = 87:2@141:7]
  %tmp_1_i = add i16 %kk_load, -623, !dbg !56     ; [#uses=1 type=i16] [debug line = 88:3@141:7]
  %a_assign_1 = select i1 %tmp_i, i16 %tmp_1_i, i16 %a_assign, !dbg !54 ; [#uses=1 type=i16] [debug line = 87:2@141:7]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_1}, i64 0, metadata !48), !dbg !54 ; [debug line = 87:2@141:7] [debug variable = a]
  store i16 %a_assign_1, i16* @kk, align 2, !dbg !47 ; [debug line = 141:7]
  %a_assign_2 = add i16 %kk_p1_load, 1, !dbg !57  ; [#uses=2 type=i16] [debug line = 142:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_2}, i64 0, metadata !58), !dbg !60 ; [debug line = 93:40@142:10] [debug variable = a]
  %tmp_i1 = icmp ugt i16 %a_assign_2, 623, !dbg !61 ; [#uses=1 type=i1] [debug line = 95:2@142:10]
  %tmp_2_i = add i16 %kk_p1_load, -623, !dbg !63  ; [#uses=1 type=i16] [debug line = 96:3@142:10]
  %a_assign_3 = select i1 %tmp_i1, i16 %tmp_2_i, i16 %a_assign_2, !dbg !61 ; [#uses=1 type=i16] [debug line = 95:2@142:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_3}, i64 0, metadata !58), !dbg !61 ; [debug line = 95:2@142:10] [debug variable = a]
  store i16 %a_assign_3, i16* @kk_p1, align 2, !dbg !57 ; [debug line = 142:10]
  %a_assign_4 = add i16 %kk_pm_load, 1, !dbg !64  ; [#uses=2 type=i16] [debug line = 143:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_4}, i64 0, metadata !65), !dbg !67 ; [debug line = 101:40@143:10] [debug variable = a]
  %tmp_i3 = icmp ugt i16 %a_assign_4, 623, !dbg !68 ; [#uses=1 type=i1] [debug line = 103:2@143:10]
  %tmp_3_i = add i16 %kk_pm_load, -623, !dbg !70  ; [#uses=1 type=i16] [debug line = 104:3@143:10]
  %a_assign_5 = select i1 %tmp_i3, i16 %tmp_3_i, i16 %a_assign_4, !dbg !68 ; [#uses=1 type=i16] [debug line = 103:2@143:10]
  call void @llvm.dbg.value(metadata !{i16 %a_assign_5}, i64 0, metadata !65), !dbg !68 ; [debug line = 103:2@143:10] [debug variable = a]
  store i16 %a_assign_5, i16* @kk_pm, align 2, !dbg !64 ; [debug line = 143:10]
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
define internal fastcc void @BlackScholes() nounwind uwtable {
._crit_edge:
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !71 ; [debug line = 12:1]
  call fastcc void @rand_uint32(), !dbg !79       ; [debug line = 12:23]
  ret void
}

; [#uses=0]
define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo_V), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo_V), !map !84
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo_V, [8 x i8]* @str531, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str532, [1 x i8]* @str532, [8 x i8]* @str531)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void @llvm.dbg.declare(metadata !{i32* %in_fifo_V}, metadata !88), !dbg !141 ; [debug line = 15:27] [debug variable = in_fifo.V]
  call void @llvm.dbg.declare(metadata !{i32* %out_fifo_V}, metadata !142), !dbg !144 ; [debug line = 15:53] [debug variable = out_fifo.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind, !dbg !145 ; [debug line = 19:1]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !152 ; [debug line = 129:56@43:13] [debug variable = stream<int>.V]
  %tmp_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !154 ; [#uses=0 type=i32] [debug line = 131:9@43:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_0}, i64 0, metadata !156), !dbg !154 ; [debug line = 131:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !157 ; [debug line = 129:56@44:13] [debug variable = stream<int>.V]
  %tmp_1_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !159 ; [#uses=0 type=i32] [debug line = 131:9@44:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1_0}, i64 0, metadata !156), !dbg !159 ; [debug line = 131:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !160 ; [debug line = 129:56@50:13] [debug variable = stream<int>.V]
  %tmp_2_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !162 ; [#uses=0 type=i32] [debug line = 131:9@50:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2_0}, i64 0, metadata !156), !dbg !162 ; [debug line = 131:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !163 ; [debug line = 129:56@51:13] [debug variable = stream<int>.V]
  %tmp_3_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !165 ; [#uses=0 type=i32] [debug line = 131:9@51:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_3_0}, i64 0, metadata !156), !dbg !165 ; [debug line = 131:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !166 ; [debug line = 129:56@57:13] [debug variable = stream<int>.V]
  %tmp_4_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !168 ; [#uses=0 type=i32] [debug line = 131:9@57:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_4_0}, i64 0, metadata !156), !dbg !168 ; [debug line = 131:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !169 ; [debug line = 129:56@58:13] [debug variable = stream<int>.V]
  %tmp_5_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !171 ; [#uses=0 type=i32] [debug line = 131:9@58:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_5_0}, i64 0, metadata !156), !dbg !171 ; [debug line = 131:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !172 ; [debug line = 129:56@64:13] [debug variable = stream<int>.V]
  %tmp_6_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !174 ; [#uses=0 type=i32] [debug line = 131:9@64:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_6_0}, i64 0, metadata !156), !dbg !174 ; [debug line = 131:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !175 ; [debug line = 129:56@65:13] [debug variable = stream<int>.V]
  %tmp_7_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !177 ; [#uses=0 type=i32] [debug line = 131:9@65:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_7_0}, i64 0, metadata !156), !dbg !177 ; [debug line = 131:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !178 ; [debug line = 129:56@71:13] [debug variable = stream<int>.V]
  %tmp_8_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !180 ; [#uses=0 type=i32] [debug line = 131:9@71:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_8_0}, i64 0, metadata !156), !dbg !180 ; [debug line = 131:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !147), !dbg !181 ; [debug line = 129:56@72:13] [debug variable = stream<int>.V]
  %tmp_9_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !183 ; [#uses=0 type=i32] [debug line = 131:9@72:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_9_0}, i64 0, metadata !156), !dbg !183 ; [debug line = 131:9@72:13] [debug variable = tmp]
  br label %1, !dbg !184                          ; [debug line = 81:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i17 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i17]
  %exitcond = icmp eq i17 %i, -31072, !dbg !184   ; [#uses=1 type=i1] [debug line = 81:16]
  %i_1 = add i17 %i, 1, !dbg !186                 ; [#uses=1 type=i17] [debug line = 81:35]
  br i1 %exitcond, label %3, label %2, !dbg !184  ; [debug line = 81:16]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100000, i64 100000, i64 100000) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str25) nounwind, !dbg !187 ; [debug line = 81:41]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str25), !dbg !189 ; [#uses=1 type=i32] [debug line = 81:71]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str14) nounwind, !dbg !190 ; [debug line = 82:1]
  call fastcc void @BlackScholes(), !dbg !191     ; [debug line = 83:18]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str25, i32 %tmp_s), !dbg !192 ; [#uses=0 type=i32] [debug line = 89:5]
  call void @llvm.dbg.value(metadata !{i17 %i_1}, i64 0, metadata !193), !dbg !186 ; [debug line = 81:35] [debug variable = i]
  br label %1, !dbg !186                          ; [debug line = 81:35]

; <label>:3                                       ; preds = %1
  ret void, !dbg !194                             ; [debug line = 91:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
declare void @_GLOBAL__I_a1941() nounwind section ".text.startup"

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i31 @_ssdm_op_BitConcatenate.i31.i1.i30(i1, i30) nounwind readnone {
entry:
  %empty = zext i1 %0 to i31                      ; [#uses=1 type=i31]
  %empty_9 = zext i30 %1 to i31                   ; [#uses=2 type=i31]
  %empty_10 = trunc i31 %empty to i1              ; [#uses=1 type=i1]
  %empty_11 = call i1 @_ssdm_op_BitSelect.i1.i31.i32(i31 %empty_9, i32 30) ; [#uses=1 type=i1]
  %empty_12 = or i1 %empty_10, %empty_11          ; [#uses=1 type=i1]
  %empty_13 = call i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31 %empty_9, i1 %empty_12, i32 30, i32 30) ; [#uses=1 type=i31]
  ret i31 %empty_13
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_14 = trunc i64 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_14
}

; [#uses=10]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_15 = shl i64 1, %empty                   ; [#uses=1 type=i64]
  %empty_16 = and i64 %0, %empty_15               ; [#uses=1 type=i64]
  %empty_17 = icmp ne i64 %empty_16, 0            ; [#uses=1 type=i1]
  ret i1 %empty_17
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=1]
define weak i31 @_ssdm_op_PartSet.i31.i31.i1.i32.i32(i31, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.set.i31.i1(i31 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i31]
  ret i31 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i31.i32(i31, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i31                    ; [#uses=1 type=i31]
  %empty_18 = shl i31 1, %empty                   ; [#uses=1 type=i31]
  %empty_19 = and i31 %0, %empty_18               ; [#uses=1 type=i31]
  %empty_20 = icmp ne i31 %empty_19, 0            ; [#uses=1 type=i1]
  ret i1 %empty_20
}

; [#uses=1]
declare i31 @llvm.part.set.i31.i1(i31, i1, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7, !12, !17, !22}

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
!17 = metadata !{metadata !18, null}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"__dso_handle", metadata !5, metadata !""}
!22 = metadata !{metadata !23, [2 x i32]* @llvm_global_ctors_0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"llvm.global_ctors.0", metadata !27, metadata !""}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 1}
!29 = metadata !{i32 118, i32 1, metadata !30, null}
!30 = metadata !{i32 786443, metadata !31, i32 113, i32 1, metadata !32, i32 16} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786478, i32 0, metadata !32, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"_Z11rand_uint32v", metadata !32, i32 112, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 113} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786473, metadata !"mt19937ar.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!38 = metadata !{i32 124, i32 2, metadata !30, null}
!39 = metadata !{i32 125, i32 2, metadata !30, null}
!40 = metadata !{i32 126, i32 2, metadata !30, null}
!41 = metadata !{i32 786688, metadata !30, metadata !"mt_kk_new", metadata !32, i32 121, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 129, i32 2, metadata !30, null}
!43 = metadata !{i32 130, i32 2, metadata !30, null}
!44 = metadata !{i32 131, i32 2, metadata !30, null}
!45 = metadata !{i32 786688, metadata !30, metadata !"y", metadata !32, i32 121, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 134, i32 2, metadata !30, null}
!47 = metadata !{i32 141, i32 7, metadata !30, null}
!48 = metadata !{i32 786689, metadata !49, metadata !"a", metadata !32, i32 16777301, metadata !52, i32 0, metadata !47} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786478, i32 0, metadata !32, metadata !"mod_N", metadata !"mod_N", metadata !"_Z5mod_Nt", metadata !32, i32 85, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 86} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{metadata !52, metadata !52}
!52 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 85, i32 37, metadata !49, metadata !47}
!54 = metadata !{i32 87, i32 2, metadata !55, metadata !47}
!55 = metadata !{i32 786443, metadata !49, i32 86, i32 1, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 88, i32 3, metadata !55, metadata !47}
!57 = metadata !{i32 142, i32 10, metadata !30, null}
!58 = metadata !{i32 786689, metadata !59, metadata !"a", metadata !32, i32 16777309, metadata !52, i32 0, metadata !57} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 786478, i32 0, metadata !32, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"_Z8mod_N_p1t", metadata !32, i32 93, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 94} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 93, i32 40, metadata !59, metadata !57}
!61 = metadata !{i32 95, i32 2, metadata !62, metadata !57}
!62 = metadata !{i32 786443, metadata !59, i32 94, i32 1, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 96, i32 3, metadata !62, metadata !57}
!64 = metadata !{i32 143, i32 10, metadata !30, null}
!65 = metadata !{i32 786689, metadata !66, metadata !"a", metadata !32, i32 16777317, metadata !52, i32 0, metadata !64} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !32, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"_Z8mod_N_pmt", metadata !32, i32 101, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 102} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 101, i32 40, metadata !66, metadata !64}
!68 = metadata !{i32 103, i32 2, metadata !69, metadata !64}
!69 = metadata !{i32 786443, metadata !66, i32 102, i32 1, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 104, i32 3, metadata !69, metadata !64}
!71 = metadata !{i32 12, i32 1, metadata !72, null}
!72 = metadata !{i32 786443, metadata !73, i32 11, i32 1, metadata !74, i32 0} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786478, i32 0, metadata !74, metadata !"BlackScholes", metadata !"BlackScholes", metadata !"_Z12BlackScholescddddd", metadata !74, i32 10, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 11} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786473, metadata !"BlackScholes.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !77, metadata !78, metadata !77, metadata !77, metadata !77, metadata !77, metadata !77}
!77 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 12, i32 23, metadata !72, null}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"in_fifo.V", metadata !5, metadata !"int"}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"out_fifo.V", metadata !5, metadata !"int"}
!88 = metadata !{i32 790531, metadata !89, metadata !"in_fifo.V", null, i32 15, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!89 = metadata !{i32 786689, metadata !90, metadata !"in_fifo", metadata !91, i32 16777231, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 786478, i32 0, metadata !91, metadata !"dut", metadata !"dut", metadata !"_Z3dutN3hls6streamIiEES1_", metadata !91, i32 15, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 16} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786473, metadata !"BlackScholes_dut.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !94, metadata !94}
!94 = metadata !{i32 786434, metadata !95, metadata !"stream<int>", metadata !96, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !97, i32 0, null, metadata !137} ; [ DW_TAG_class_type ]
!95 = metadata !{i32 786489, null, metadata !"hls", metadata !96, i32 69} ; [ DW_TAG_namespace ]
!96 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/hls_stream.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!97 = metadata !{metadata !98, metadata !100, metadata !104, metadata !109, metadata !113, metadata !116, metadata !120, metadata !121, metadata !127, metadata !128, metadata !129, metadata !132, metadata !135, metadata !136}
!98 = metadata !{i32 786445, metadata !94, metadata !"V", metadata !96, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !99} ; [ DW_TAG_member ]
!99 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !96, i32 83, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 83} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !103}
!103 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !94} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !96, i32 86, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 86} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !103, metadata !107}
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_const_type ]
!109 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !96, i32 91, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !36, i32 91} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !103, metadata !112}
!112 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_reference_type ]
!113 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !96, i32 94, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !36, i32 94} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !112, metadata !103, metadata !112}
!116 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !96, i32 101, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 101} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !103, metadata !119}
!119 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_reference_type ]
!120 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !96, i32 105, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 105} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786478, i32 0, metadata !94, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !96, i32 112, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 112} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{metadata !124, metadata !125}
!124 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!125 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !126} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!127 = metadata !{i32 786478, i32 0, metadata !94, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !96, i32 117, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 117} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !96, i32 123, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 123} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !96, i32 129, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 129} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !99, metadata !103}
!132 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !96, i32 136, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 136} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !124, metadata !103, metadata !119}
!135 = metadata !{i32 786478, i32 0, metadata !94, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !96, i32 144, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 144} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786478, i32 0, metadata !94, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !96, i32 150, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 150} ; [ DW_TAG_subprogram ]
!137 = metadata !{metadata !138}
!138 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !99, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!139 = metadata !{i32 786438, metadata !95, metadata !"stream<int>", metadata !96, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, metadata !137} ; [ DW_TAG_class_field_type ]
!140 = metadata !{metadata !98}
!141 = metadata !{i32 15, i32 27, metadata !90, null}
!142 = metadata !{i32 790531, metadata !143, metadata !"out_fifo.V", null, i32 15, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!143 = metadata !{i32 786689, metadata !90, metadata !"out_fifo", metadata !91, i32 33554447, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 15, i32 53, metadata !90, null}
!145 = metadata !{i32 19, i32 1, metadata !146, null}
!146 = metadata !{i32 786443, metadata !90, i32 16, i32 1, metadata !91, i32 0} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 790531, metadata !148, metadata !"stream<int>.V", null, i32 129, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!148 = metadata !{i32 786689, metadata !149, metadata !"this", metadata !96, i32 16777345, metadata !150, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 786478, i32 0, metadata !95, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !96, i32 129, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !129, metadata !36, i32 129} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!151 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 129, i32 56, metadata !149, metadata !153}
!153 = metadata !{i32 43, i32 13, metadata !146, null}
!154 = metadata !{i32 131, i32 9, metadata !155, metadata !153}
!155 = metadata !{i32 786443, metadata !149, i32 129, i32 63, metadata !96, i32 3} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786688, metadata !155, metadata !"tmp", metadata !96, i32 130, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 129, i32 56, metadata !149, metadata !158}
!158 = metadata !{i32 44, i32 13, metadata !146, null}
!159 = metadata !{i32 131, i32 9, metadata !155, metadata !158}
!160 = metadata !{i32 129, i32 56, metadata !149, metadata !161}
!161 = metadata !{i32 50, i32 13, metadata !146, null}
!162 = metadata !{i32 131, i32 9, metadata !155, metadata !161}
!163 = metadata !{i32 129, i32 56, metadata !149, metadata !164}
!164 = metadata !{i32 51, i32 13, metadata !146, null}
!165 = metadata !{i32 131, i32 9, metadata !155, metadata !164}
!166 = metadata !{i32 129, i32 56, metadata !149, metadata !167}
!167 = metadata !{i32 57, i32 13, metadata !146, null}
!168 = metadata !{i32 131, i32 9, metadata !155, metadata !167}
!169 = metadata !{i32 129, i32 56, metadata !149, metadata !170}
!170 = metadata !{i32 58, i32 13, metadata !146, null}
!171 = metadata !{i32 131, i32 9, metadata !155, metadata !170}
!172 = metadata !{i32 129, i32 56, metadata !149, metadata !173}
!173 = metadata !{i32 64, i32 13, metadata !146, null}
!174 = metadata !{i32 131, i32 9, metadata !155, metadata !173}
!175 = metadata !{i32 129, i32 56, metadata !149, metadata !176}
!176 = metadata !{i32 65, i32 13, metadata !146, null}
!177 = metadata !{i32 131, i32 9, metadata !155, metadata !176}
!178 = metadata !{i32 129, i32 56, metadata !149, metadata !179}
!179 = metadata !{i32 71, i32 13, metadata !146, null}
!180 = metadata !{i32 131, i32 9, metadata !155, metadata !179}
!181 = metadata !{i32 129, i32 56, metadata !149, metadata !182}
!182 = metadata !{i32 72, i32 13, metadata !146, null}
!183 = metadata !{i32 131, i32 9, metadata !155, metadata !182}
!184 = metadata !{i32 81, i32 16, metadata !185, null}
!185 = metadata !{i32 786443, metadata !146, i32 81, i32 11, metadata !91, i32 1} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 81, i32 35, metadata !185, null}
!187 = metadata !{i32 81, i32 41, metadata !188, null}
!188 = metadata !{i32 786443, metadata !185, i32 81, i32 40, metadata !91, i32 2} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 81, i32 71, metadata !188, null}
!190 = metadata !{i32 82, i32 1, metadata !188, null}
!191 = metadata !{i32 83, i32 18, metadata !188, null}
!192 = metadata !{i32 89, i32 5, metadata !188, null}
!193 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !91, i32 22, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 91, i32 1, metadata !146, null}
