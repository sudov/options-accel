; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/fifo.prj/sol/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]
@str = internal constant [4 x i8] c"dut\00"       ; [#uses=1 type=[4 x i8]*]
@str4 = internal constant [8 x i8] c"ap_fifo\00"  ; [#uses=2 type=[8 x i8]*]
@str5 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str6 = internal constant [8 x i8] c"ap_fifo\00"  ; [#uses=2 type=[8 x i8]*]
@str7 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]

; [#uses=0]
define void @dut(i32* %in_fifo_V, i32* %out_fifo_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo_V), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo_V), !map !6
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_fifo_V, [8 x i8]* @str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str7, [1 x i8]* @str7, [8 x i8]* @str6)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo_V, [8 x i8]* @str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str5, [1 x i8]* @str5, [8 x i8]* @str4)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !10), !dbg !67 ; [debug line = 14:28] [debug variable = in_fifo.V]
  call void @llvm.dbg.value(metadata !{i32* %out_fifo_V}, i64 0, metadata !68), !dbg !70 ; [debug line = 14:55] [debug variable = out_fifo.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !71 ; [debug line = 17:1]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !73), !dbg !78 ; [debug line = 129:56@34:31] [debug variable = stream<int>.V]
  %tmp_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !80 ; [#uses=0 type=i32] [debug line = 131:9@34:31]
  call void @llvm.dbg.value(metadata !{i32 %tmp_0}, i64 0, metadata !82), !dbg !80 ; [debug line = 131:9@34:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !73), !dbg !83 ; [debug line = 129:56@37:13] [debug variable = stream<int>.V]
  %tmp_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !85 ; [#uses=1 type=i32] [debug line = 131:9@37:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_3}, i64 0, metadata !82), !dbg !85 ; [debug line = 131:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_3}, i64 0, metadata !86), !dbg !84 ; [debug line = 37:13] [debug variable = data1]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !73), !dbg !87 ; [debug line = 129:56@38:13] [debug variable = stream<int>.V]
  %tmp_6 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !89 ; [#uses=1 type=i32] [debug line = 131:9@38:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_6}, i64 0, metadata !82), !dbg !89 ; [debug line = 131:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_6}, i64 0, metadata !90), !dbg !88 ; [debug line = 38:13] [debug variable = data2]
  %tmp_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_3, i32 0), !dbg !91 ; [#uses=1 type=i64] [debug line = 39:5]
  %tmp_5 = sext i32 %tmp_6 to i64, !dbg !91       ; [#uses=1 type=i64] [debug line = 39:5]
  %full = add nsw i64 %tmp_4, %tmp_5, !dbg !91    ; [#uses=1 type=i64] [debug line = 39:5]
  call void @llvm.dbg.value(metadata !{i64 %full}, i64 0, metadata !92), !dbg !91 ; [debug line = 39:5] [debug variable = full]
  %r = bitcast i64 %full to double, !dbg !94      ; [#uses=1 type=double] [debug line = 41:5]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !95), !dbg !94 ; [debug line = 41:5] [debug variable = r]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !73), !dbg !97 ; [debug line = 129:56@44:13] [debug variable = stream<int>.V]
  %tmp_7 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !99 ; [#uses=1 type=i32] [debug line = 131:9@44:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_7}, i64 0, metadata !82), !dbg !99 ; [debug line = 131:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_7}, i64 0, metadata !86), !dbg !98 ; [debug line = 44:13] [debug variable = data1]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo_V}, i64 0, metadata !73), !dbg !100 ; [debug line = 129:56@45:13] [debug variable = stream<int>.V]
  %tmp_9 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_fifo_V), !dbg !102 ; [#uses=1 type=i32] [debug line = 131:9@45:13]
  call void @llvm.dbg.value(metadata !{i32 %tmp_9}, i64 0, metadata !82), !dbg !102 ; [debug line = 131:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_9}, i64 0, metadata !90), !dbg !101 ; [debug line = 45:13] [debug variable = data2]
  %tmp_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_7, i32 0), !dbg !103 ; [#uses=1 type=i64] [debug line = 46:5]
  %tmp_8 = sext i32 %tmp_9 to i64, !dbg !103      ; [#uses=1 type=i64] [debug line = 46:5]
  %full_1 = add nsw i64 %tmp_s, %tmp_8, !dbg !103 ; [#uses=1 type=i64] [debug line = 46:5]
  call void @llvm.dbg.value(metadata !{i64 %full_1}, i64 0, metadata !92), !dbg !103 ; [debug line = 46:5] [debug variable = full]
  %b = bitcast i64 %full_1 to double, !dbg !104   ; [#uses=1 type=double] [debug line = 48:5]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !105), !dbg !104 ; [debug line = 48:5] [debug variable = b]
  %result = fmul double %r, %b, !dbg !106         ; [#uses=1 type=double] [debug line = 50:5]
  call void @llvm.dbg.value(metadata !{double %result}, i64 0, metadata !107), !dbg !106 ; [debug line = 50:5] [debug variable = result]
  %ret = bitcast double %result to i64, !dbg !108 ; [#uses=2 type=i64] [debug line = 51:5]
  %data1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret, i32 32, i32 63), !dbg !109 ; [#uses=1 type=i32] [debug line = 53:5]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !86), !dbg !109 ; [debug line = 53:5] [debug variable = data1]
  %data2 = trunc i64 %ret to i16, !dbg !110       ; [#uses=1 type=i16] [debug line = 54:5]
  %tmp_2 = zext i16 %data2 to i32, !dbg !110      ; [#uses=1 type=i32] [debug line = 54:5]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !90), !dbg !110 ; [debug line = 54:5] [debug variable = data2]
  call void @llvm.dbg.value(metadata !{i32* %out_fifo_V}, i64 0, metadata !111), !dbg !114 ; [debug line = 144:48@56:5] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %data1), !dbg !119 ; [debug line = 146:9@56:5]
  call void @llvm.dbg.value(metadata !{i32* %out_fifo_V}, i64 0, metadata !111), !dbg !120 ; [debug line = 144:48@57:5] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %data2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_2}, i64 0, metadata !116), !dbg !122 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_fifo_V, i32 %tmp_2), !dbg !123 ; [debug line = 146:9@57:5]
  ret void, !dbg !124                             ; [debug line = 59:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=113]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_8 = trunc i64 %empty to i32              ; [#uses=1 type=i32]
  ret i32 %empty_8
}

; [#uses=2]
define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64                     ; [#uses=1 type=i64]
  %empty_9 = zext i32 %1 to i64                   ; [#uses=2 type=i64]
  %empty_10 = trunc i64 %empty to i32             ; [#uses=1 type=i32]
  %empty_11 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %empty_9, i32 32, i32 63) ; [#uses=1 type=i32]
  %empty_12 = or i32 %empty_10, %empty_11         ; [#uses=1 type=i32]
  %empty_13 = call i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64 %empty_9, i32 %empty_12, i32 32, i32 63) ; [#uses=1 type=i64]
  ret i64 %empty_13
}

; [#uses=5]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i32(i64 %0, i32 %1, i32 %2, i32 %3) ; [#uses=1 type=i64]
  ret i64 %empty
}

; [#uses=1]
declare i64 @llvm.part.set.i64.i32(i64, i32, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_fifo.V", metadata !4, metadata !"int"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"out_fifo.V", metadata !4, metadata !"int"}
!10 = metadata !{i32 790531, metadata !11, metadata !"in_fifo.V", null, i32 14, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!11 = metadata !{i32 786689, metadata !12, metadata !"in_fifo", metadata !13, i32 16777230, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 786478, i32 0, metadata !13, metadata !"dut", metadata !"dut", metadata !"_Z3dutRN3hls6streamIiEES2_", metadata !13, i32 14, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 15} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786473, metadata !"fifo_test.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !16}
!16 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_reference_type ]
!17 = metadata !{i32 786434, metadata !18, metadata !"stream<int>", metadata !19, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, metadata !62} ; [ DW_TAG_class_type ]
!18 = metadata !{i32 786489, null, metadata !"hls", metadata !19, i32 69} ; [ DW_TAG_namespace ]
!19 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/hls_stream.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!20 = metadata !{metadata !21, metadata !23, metadata !29, metadata !35, metadata !38, metadata !41, metadata !45, metadata !46, metadata !52, metadata !53, metadata !54, metadata !57, metadata !60, metadata !61}
!21 = metadata !{i32 786445, metadata !17, metadata !"V", metadata !19, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 83, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 83} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !17} ; [ DW_TAG_pointer_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 86, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 86} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !26, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 91, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 91} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !26, metadata !16}
!38 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !19, i32 94, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 94} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !16, metadata !26, metadata !16}
!41 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !19, i32 101, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 101} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !26, metadata !44}
!44 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!45 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !19, i32 105, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 105} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786478, i32 0, metadata !17, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !19, i32 112, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 112} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{metadata !49, metadata !50}
!49 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !17, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !19, i32 117, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 117} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !19, i32 123, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 123} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !19, i32 129, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !22, metadata !26}
!57 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !19, i32 136, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 136} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !49, metadata !26, metadata !44}
!60 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !19, i32 144, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !19, i32 150, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 150} ; [ DW_TAG_subprogram ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !22, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!64 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786438, metadata !18, metadata !"stream<int>", metadata !19, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !66, i32 0, null, metadata !62} ; [ DW_TAG_class_field_type ]
!66 = metadata !{metadata !21}
!67 = metadata !{i32 14, i32 28, metadata !12, null}
!68 = metadata !{i32 790531, metadata !69, metadata !"out_fifo.V", null, i32 14, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 786689, metadata !12, metadata !"out_fifo", metadata !13, i32 33554446, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 14, i32 55, metadata !12, null}
!71 = metadata !{i32 17, i32 1, metadata !72, null}
!72 = metadata !{i32 786443, metadata !12, i32 15, i32 1, metadata !13, i32 0} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 790531, metadata !74, metadata !"stream<int>.V", null, i32 129, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!74 = metadata !{i32 786689, metadata !75, metadata !"this", metadata !19, i32 16777345, metadata !76, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786478, i32 0, metadata !18, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !19, i32 129, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !54, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!77 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!78 = metadata !{i32 129, i32 56, metadata !75, metadata !79}
!79 = metadata !{i32 34, i32 31, metadata !72, null}
!80 = metadata !{i32 131, i32 9, metadata !81, metadata !79}
!81 = metadata !{i32 786443, metadata !75, i32 129, i32 63, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"tmp", metadata !19, i32 130, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 129, i32 56, metadata !75, metadata !84}
!84 = metadata !{i32 37, i32 13, metadata !72, null}
!85 = metadata !{i32 131, i32 9, metadata !81, metadata !84}
!86 = metadata !{i32 786688, metadata !72, metadata !"data1", metadata !13, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 129, i32 56, metadata !75, metadata !88}
!88 = metadata !{i32 38, i32 13, metadata !72, null}
!89 = metadata !{i32 131, i32 9, metadata !81, metadata !88}
!90 = metadata !{i32 786688, metadata !72, metadata !"data2", metadata !13, i32 21, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 39, i32 5, metadata !72, null}
!92 = metadata !{i32 786688, metadata !72, metadata !"full", metadata !13, i32 22, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 41, i32 5, metadata !72, null}
!95 = metadata !{i32 786688, metadata !72, metadata !"r", metadata !13, i32 29, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!97 = metadata !{i32 129, i32 56, metadata !75, metadata !98}
!98 = metadata !{i32 44, i32 13, metadata !72, null}
!99 = metadata !{i32 131, i32 9, metadata !81, metadata !98}
!100 = metadata !{i32 129, i32 56, metadata !75, metadata !101}
!101 = metadata !{i32 45, i32 13, metadata !72, null}
!102 = metadata !{i32 131, i32 9, metadata !81, metadata !101}
!103 = metadata !{i32 46, i32 5, metadata !72, null}
!104 = metadata !{i32 48, i32 5, metadata !72, null}
!105 = metadata !{i32 786688, metadata !72, metadata !"b", metadata !13, i32 30, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 50, i32 5, metadata !72, null}
!107 = metadata !{i32 786688, metadata !72, metadata !"result", metadata !13, i32 31, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 51, i32 5, metadata !72, null}
!109 = metadata !{i32 53, i32 5, metadata !72, null}
!110 = metadata !{i32 54, i32 5, metadata !72, null}
!111 = metadata !{i32 790531, metadata !112, metadata !"stream<int>.V", null, i32 144, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!112 = metadata !{i32 786689, metadata !113, metadata !"this", metadata !19, i32 16777360, metadata !76, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 786478, i32 0, metadata !18, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !19, i32 144, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !60, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 144, i32 48, metadata !113, metadata !115}
!115 = metadata !{i32 56, i32 5, metadata !72, null}
!116 = metadata !{i32 786688, metadata !117, metadata !"tmp", metadata !19, i32 145, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786443, metadata !113, i32 144, i32 79, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 145, i32 31, metadata !117, metadata !115}
!119 = metadata !{i32 146, i32 9, metadata !117, metadata !115}
!120 = metadata !{i32 144, i32 48, metadata !113, metadata !121}
!121 = metadata !{i32 57, i32 5, metadata !72, null}
!122 = metadata !{i32 145, i32 31, metadata !117, metadata !121}
!123 = metadata !{i32 146, i32 9, metadata !117, metadata !121}
!124 = metadata !{i32 59, i32 1, metadata !72, null}
