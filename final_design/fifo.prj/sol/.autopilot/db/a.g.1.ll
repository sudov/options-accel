; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/fifo.prj/sol/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@str = internal constant [4 x i8] c"dut\00"       ; [#uses=1 type=[4 x i8]*]

; [#uses=0]
define void @dut(%"class.hls::stream.0"* %in_fifo, %"class.hls::stream.0"* %out_fifo) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %tmp.17 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.15 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.8 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp.7 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp.2 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp.1 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=1 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !75), !dbg !76 ; [debug line = 14:28] [debug variable = in_fifo]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_fifo}, i64 0, metadata !77), !dbg !78 ; [debug line = 14:55] [debug variable = out_fifo]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 17:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !81), !dbg !83 ; [debug line = 129:56@34:31] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !85) nounwind, !dbg !87 ; [debug line = 130:22@34:31] [debug variable = tmp]
  %in_fifo.addr = getelementptr inbounds %"class.hls::stream.0"* %in_fifo, i64 0, i32 0, !dbg !88 ; [#uses=5 type=i32*] [debug line = 131:9@34:31]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.addr, i32* %tmp) nounwind, !dbg !88 ; [debug line = 131:9@34:31]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !85), !dbg !89 ; [debug line = 132:9@34:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !81), !dbg !90 ; [debug line = 129:56@37:13] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.1}, metadata !85) nounwind, !dbg !92 ; [debug line = 130:22@37:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.addr, i32* %tmp.1) nounwind, !dbg !93 ; [debug line = 131:9@37:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !85), !dbg !94 ; [debug line = 132:9@37:13] [debug variable = tmp]
  %data1 = load i32* %tmp.1, align 4, !dbg !94    ; [#uses=1 type=i32] [debug line = 132:9@37:13]
  call void @llvm.dbg.value(metadata !{i32 %data1}, i64 0, metadata !95), !dbg !91 ; [debug line = 37:13] [debug variable = data1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !81), !dbg !96 ; [debug line = 129:56@38:13] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.2}, metadata !85) nounwind, !dbg !98 ; [debug line = 130:22@38:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.addr, i32* %tmp.2) nounwind, !dbg !99 ; [debug line = 131:9@38:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !85), !dbg !100 ; [debug line = 132:9@38:13] [debug variable = tmp]
  %data2 = load i32* %tmp.2, align 4, !dbg !100   ; [#uses=1 type=i32] [debug line = 132:9@38:13]
  call void @llvm.dbg.value(metadata !{i32 %data2}, i64 0, metadata !101), !dbg !97 ; [debug line = 38:13] [debug variable = data2]
  %tmp.3 = zext i32 %data1 to i64, !dbg !102      ; [#uses=1 type=i64] [debug line = 39:5]
  %tmp.4 = shl nuw i64 %tmp.3, 32, !dbg !102      ; [#uses=1 type=i64] [debug line = 39:5]
  %tmp.5 = sext i32 %data2 to i64, !dbg !102      ; [#uses=1 type=i64] [debug line = 39:5]
  %full = add nsw i64 %tmp.5, %tmp.4, !dbg !102   ; [#uses=1 type=i64] [debug line = 39:5]
  call void @llvm.dbg.value(metadata !{i64 %full}, i64 0, metadata !103), !dbg !102 ; [debug line = 39:5] [debug variable = full]
  %r = bitcast i64 %full to double, !dbg !105     ; [#uses=1 type=double] [debug line = 41:5]
  call void @llvm.dbg.value(metadata !{double %r}, i64 0, metadata !106), !dbg !105 ; [debug line = 41:5] [debug variable = r]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !81), !dbg !108 ; [debug line = 129:56@44:13] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.7}, metadata !85) nounwind, !dbg !110 ; [debug line = 130:22@44:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.addr, i32* %tmp.7) nounwind, !dbg !111 ; [debug line = 131:9@44:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !85), !dbg !112 ; [debug line = 132:9@44:13] [debug variable = tmp]
  %data1.1 = load i32* %tmp.7, align 4, !dbg !112 ; [#uses=1 type=i32] [debug line = 132:9@44:13]
  call void @llvm.dbg.value(metadata !{i32 %data1.1}, i64 0, metadata !95), !dbg !109 ; [debug line = 44:13] [debug variable = data1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_fifo}, i64 0, metadata !81), !dbg !113 ; [debug line = 129:56@45:13] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.8}, metadata !85) nounwind, !dbg !115 ; [debug line = 130:22@45:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.addr, i32* %tmp.8) nounwind, !dbg !116 ; [debug line = 131:9@45:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !85), !dbg !117 ; [debug line = 132:9@45:13] [debug variable = tmp]
  %data2.1 = load i32* %tmp.8, align 4, !dbg !117 ; [#uses=1 type=i32] [debug line = 132:9@45:13]
  call void @llvm.dbg.value(metadata !{i32 %data2.1}, i64 0, metadata !101), !dbg !114 ; [debug line = 45:13] [debug variable = data2]
  %tmp.9 = zext i32 %data1.1 to i64, !dbg !118    ; [#uses=1 type=i64] [debug line = 46:5]
  %tmp.10 = shl nuw i64 %tmp.9, 32, !dbg !118     ; [#uses=1 type=i64] [debug line = 46:5]
  %tmp.11 = sext i32 %data2.1 to i64, !dbg !118   ; [#uses=1 type=i64] [debug line = 46:5]
  %full.1 = add nsw i64 %tmp.11, %tmp.10, !dbg !118 ; [#uses=1 type=i64] [debug line = 46:5]
  call void @llvm.dbg.value(metadata !{i64 %full.1}, i64 0, metadata !103), !dbg !118 ; [debug line = 46:5] [debug variable = full]
  %b = bitcast i64 %full.1 to double, !dbg !119   ; [#uses=1 type=double] [debug line = 48:5]
  call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !120), !dbg !119 ; [debug line = 48:5] [debug variable = b]
  %result = fmul double %r, %b, !dbg !121         ; [#uses=1 type=double] [debug line = 50:5]
  call void @llvm.dbg.value(metadata !{double %result}, i64 0, metadata !122), !dbg !121 ; [debug line = 50:5] [debug variable = result]
  %ret = bitcast double %result to i64, !dbg !123 ; [#uses=2 type=i64] [debug line = 51:5]
  %tmp.13 = lshr i64 %ret, 32, !dbg !124          ; [#uses=1 type=i64] [debug line = 53:5]
  %data1.3 = trunc i64 %tmp.13 to i32, !dbg !124  ; [#uses=1 type=i32] [debug line = 53:5]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !95), !dbg !124 ; [debug line = 53:5] [debug variable = data1]
  %tmp.14 = trunc i64 %ret to i32, !dbg !125      ; [#uses=1 type=i32] [debug line = 54:5]
  %data2.3 = and i32 %tmp.14, 65535, !dbg !125    ; [#uses=1 type=i32] [debug line = 54:5]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !101), !dbg !125 ; [debug line = 54:5] [debug variable = data2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_fifo}, i64 0, metadata !126), !dbg !127 ; [debug line = 144:48@56:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.15}, metadata !129) nounwind, !dbg !131 ; [debug line = 145:22@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data1.3}, i64 0, metadata !129), !dbg !132 ; [debug line = 145:31@56:5] [debug variable = tmp]
  store i32 %data1.3, i32* %tmp.15, align 4, !dbg !132 ; [debug line = 145:31@56:5]
  %out_fifo.addr = getelementptr inbounds %"class.hls::stream.0"* %out_fifo, i64 0, i32 0, !dbg !133 ; [#uses=2 type=i32*] [debug line = 146:9@56:5]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_fifo.addr, i32* %tmp.15) nounwind, !dbg !133 ; [debug line = 146:9@56:5]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_fifo}, i64 0, metadata !126), !dbg !134 ; [debug line = 144:48@57:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.17}, metadata !129) nounwind, !dbg !136 ; [debug line = 145:22@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %data2.3}, i64 0, metadata !129), !dbg !137 ; [debug line = 145:31@57:5] [debug variable = tmp]
  store i32 %data2.3, i32* %tmp.17, align 4, !dbg !137 ; [debug line = 145:31@57:5]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_fifo.addr, i32* %tmp.17) nounwind, !dbg !138 ; [debug line = 146:9@57:5]
  ret void, !dbg !139                             ; [debug line = 59:1]
}

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=87]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design/fifo.prj/sol/.autopilot/db/fifo_test.pragma.2.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !59} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !57, metadata !58}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dut", metadata !"dut", metadata !"_Z3dutRN3hls6streamIiEES2_", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @dut, null, null, metadata !20, i32 15} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fifo_test.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<int>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !55} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/hls_stream.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !31, metadata !34, metadata !38, metadata !39, metadata !45, metadata !46, metadata !47, metadata !50, metadata !53, metadata !54}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !9}
!31 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !12, i32 94, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{metadata !9, metadata !19, metadata !9}
!34 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !19, metadata !37}
!37 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !12, i32 105, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !12, i32 112, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !44} ; [ DW_TAG_pointer_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !12, i32 117, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{metadata !15, metadata !19}
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !12, i32 136, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !42, metadata !19, metadata !37}
!53 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !12, i32 150, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!57 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !53, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !61, metadata !63, metadata !65, metadata !66, metadata !67, metadata !70, metadata !71, metadata !72, metadata !74}
!61 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !62, i32 157, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!62 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"__daylight", metadata !"__daylight", metadata !"", metadata !64, i32 276, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"daylight", metadata !"daylight", metadata !"", metadata !64, i32 290, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786484, i32 0, null, metadata !"getdate_err", metadata !"getdate_err", metadata !"", metadata !64, i32 389, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !68, i32 343, metadata !69, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!69 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !68, i32 341, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !68, i32 344, metadata !69, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !68, i32 345, metadata !69, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!72 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !73, i32 27, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!73 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!74 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !73, i32 31, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!75 = metadata !{i32 786689, metadata !5, metadata !"in_fifo", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 14, i32 28, metadata !5, null}
!77 = metadata !{i32 786689, metadata !5, metadata !"out_fifo", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 14, i32 55, metadata !5, null}
!79 = metadata !{i32 17, i32 1, metadata !80, null}
!80 = metadata !{i32 786443, metadata !5, i32 15, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786689, metadata !58, metadata !"this", metadata !12, i32 16777345, metadata !82, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 129, i32 56, metadata !58, metadata !84}
!84 = metadata !{i32 34, i32 31, metadata !80, null}
!85 = metadata !{i32 786688, metadata !86, metadata !"tmp", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786443, metadata !58, i32 129, i32 63, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 130, i32 22, metadata !86, metadata !84}
!88 = metadata !{i32 131, i32 9, metadata !86, metadata !84}
!89 = metadata !{i32 132, i32 9, metadata !86, metadata !84}
!90 = metadata !{i32 129, i32 56, metadata !58, metadata !91}
!91 = metadata !{i32 37, i32 13, metadata !80, null}
!92 = metadata !{i32 130, i32 22, metadata !86, metadata !91}
!93 = metadata !{i32 131, i32 9, metadata !86, metadata !91}
!94 = metadata !{i32 132, i32 9, metadata !86, metadata !91}
!95 = metadata !{i32 786688, metadata !80, metadata !"data1", metadata !6, i32 20, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 129, i32 56, metadata !58, metadata !97}
!97 = metadata !{i32 38, i32 13, metadata !80, null}
!98 = metadata !{i32 130, i32 22, metadata !86, metadata !97}
!99 = metadata !{i32 131, i32 9, metadata !86, metadata !97}
!100 = metadata !{i32 132, i32 9, metadata !86, metadata !97}
!101 = metadata !{i32 786688, metadata !80, metadata !"data2", metadata !6, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 39, i32 5, metadata !80, null}
!103 = metadata !{i32 786688, metadata !80, metadata !"full", metadata !6, i32 22, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 41, i32 5, metadata !80, null}
!106 = metadata !{i32 786688, metadata !80, metadata !"r", metadata !6, i32 29, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 129, i32 56, metadata !58, metadata !109}
!109 = metadata !{i32 44, i32 13, metadata !80, null}
!110 = metadata !{i32 130, i32 22, metadata !86, metadata !109}
!111 = metadata !{i32 131, i32 9, metadata !86, metadata !109}
!112 = metadata !{i32 132, i32 9, metadata !86, metadata !109}
!113 = metadata !{i32 129, i32 56, metadata !58, metadata !114}
!114 = metadata !{i32 45, i32 13, metadata !80, null}
!115 = metadata !{i32 130, i32 22, metadata !86, metadata !114}
!116 = metadata !{i32 131, i32 9, metadata !86, metadata !114}
!117 = metadata !{i32 132, i32 9, metadata !86, metadata !114}
!118 = metadata !{i32 46, i32 5, metadata !80, null}
!119 = metadata !{i32 48, i32 5, metadata !80, null}
!120 = metadata !{i32 786688, metadata !80, metadata !"b", metadata !6, i32 30, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 50, i32 5, metadata !80, null}
!122 = metadata !{i32 786688, metadata !80, metadata !"result", metadata !6, i32 31, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 51, i32 5, metadata !80, null}
!124 = metadata !{i32 53, i32 5, metadata !80, null}
!125 = metadata !{i32 54, i32 5, metadata !80, null}
!126 = metadata !{i32 786689, metadata !57, metadata !"this", metadata !12, i32 16777360, metadata !82, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 144, i32 48, metadata !57, metadata !128}
!128 = metadata !{i32 56, i32 5, metadata !80, null}
!129 = metadata !{i32 786688, metadata !130, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 786443, metadata !57, i32 144, i32 79, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 145, i32 22, metadata !130, metadata !128}
!132 = metadata !{i32 145, i32 31, metadata !130, metadata !128}
!133 = metadata !{i32 146, i32 9, metadata !130, metadata !128}
!134 = metadata !{i32 144, i32 48, metadata !57, metadata !135}
!135 = metadata !{i32 57, i32 5, metadata !80, null}
!136 = metadata !{i32 145, i32 22, metadata !130, metadata !135}
!137 = metadata !{i32 145, i32 31, metadata !130, metadata !135}
!138 = metadata !{i32 146, i32 9, metadata !130, metadata !135}
!139 = metadata !{i32 59, i32 1, metadata !80, null}
