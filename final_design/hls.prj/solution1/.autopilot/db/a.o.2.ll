; ModuleID = '/home/student/cw444/Fall2014/ece5775/options-accel/final_design/hls.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kk = global i16 0, align 2                       ; [#uses=2 type=i16*]
@kk_p1 = global i16 1, align 2                    ; [#uses=2 type=i16*]
@kk_pm = global i16 397, align 2                  ; [#uses=2 type=i16*]
@mt_kk = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mt_kkp1 = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@mt_kkpm = internal unnamed_addr global [624 x i64] zeroinitializer, align 16 ; [#uses=1 type=[624 x i64]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@.str25 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=3 type=[5 x i8]*]
@llvm.global_ctors.0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@llvm.global_ctors.1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941] ; [#uses=0 type=[2 x void ()*]*]
@str = internal constant [4 x i8] c"dut\00"       ; [#uses=1 type=[4 x i8]*]
@str531 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@str532 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]

; [#uses=12]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @rand_uint32() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !46 ; [debug line = 118:1]
  call void (...)* @_ssdm_SpecDependence(i32 0, i32 1, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !53 ; [debug line = 119:1]
  %kk.load = load i16* @kk, align 2, !dbg !54     ; [#uses=3 type=i16] [debug line = 124:2]
  %tmp = zext i16 %kk.load to i64, !dbg !54       ; [#uses=1 type=i64] [debug line = 124:2]
  %mt_kk.addr = getelementptr inbounds [624 x i64]* @mt_kk, i64 0, i64 %tmp, !dbg !54 ; [#uses=2 type=i64*] [debug line = 124:2]
  %mt_kk.load = load i64* %mt_kk.addr, align 8, !dbg !54 ; [#uses=1 type=i64] [debug line = 124:2]
  %mt_kk.load.cast = trunc i64 %mt_kk.load to i32, !dbg !54 ; [#uses=1 type=i32] [debug line = 124:2]
  %tmp.4 = and i32 %mt_kk.load.cast, -2147483648, !dbg !54 ; [#uses=1 type=i32] [debug line = 124:2]
  %kk_p1.load = load i16* @kk_p1, align 2, !dbg !54 ; [#uses=3 type=i16] [debug line = 124:2]
  %tmp.5 = zext i16 %kk_p1.load to i64, !dbg !54  ; [#uses=1 type=i64] [debug line = 124:2]
  %mt_kkp1.addr = getelementptr inbounds [624 x i64]* @mt_kkp1, i64 0, i64 %tmp.5, !dbg !54 ; [#uses=2 type=i64*] [debug line = 124:2]
  %mt_kkp1.load = load i64* %mt_kkp1.addr, align 8, !dbg !54 ; [#uses=2 type=i64] [debug line = 124:2]
  %mt_kkp1.load.cast2 = trunc i64 %mt_kkp1.load to i1, !dbg !54 ; [#uses=1 type=i1] [debug line = 124:2]
  %mt_kkp1.load.cast = trunc i64 %mt_kkp1.load to i31, !dbg !54 ; [#uses=1 type=i31] [debug line = 124:2]
  %tmp.1 = call i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32 %tmp.4, i32 31, i32 31) ; [#uses=1 type=i1]
  %y = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %tmp.1, i31 %mt_kkp1.load.cast), !dbg !54 ; [#uses=1 type=i32] [debug line = 124:2]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !55), !dbg !54 ; [debug line = 124:2] [debug variable = y]
  %mag01.cast = select i1 %mt_kkp1.load.cast2, i64 2567483615, i64 0, !dbg !56 ; [#uses=1 type=i64] [debug line = 125:2]
  %kk_pm.load = load i16* @kk_pm, align 2, !dbg !57 ; [#uses=3 type=i16] [debug line = 126:2]
  %tmp.9 = zext i16 %kk_pm.load to i64, !dbg !57  ; [#uses=1 type=i64] [debug line = 126:2]
  %mt_kkpm.addr = getelementptr inbounds [624 x i64]* @mt_kkpm, i64 0, i64 %tmp.9, !dbg !57 ; [#uses=2 type=i64*] [debug line = 126:2]
  %mt_kkpm.load = load i64* %mt_kkpm.addr, align 8, !dbg !57 ; [#uses=1 type=i64] [debug line = 126:2]
  %tmp. = lshr i32 %y, 1, !dbg !57                ; [#uses=1 type=i32] [debug line = 126:2]
  %tmp..cast = zext i32 %tmp. to i64, !dbg !57    ; [#uses=1 type=i64] [debug line = 126:2]
  %tmp1 = xor i64 %mag01.cast, %mt_kkpm.load, !dbg !57 ; [#uses=1 type=i64] [debug line = 126:2]
  %mt_kk_new = xor i64 %tmp1, %tmp..cast, !dbg !57 ; [#uses=3 type=i64] [debug line = 126:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !58), !dbg !57 ; [debug line = 126:2] [debug variable = mt_kk_new]
  store i64 %mt_kk_new, i64* %mt_kk.addr, align 8, !dbg !59 ; [debug line = 129:2]
  store i64 %mt_kk_new, i64* %mt_kkp1.addr, align 8, !dbg !60 ; [debug line = 130:2]
  store i64 %mt_kk_new, i64* %mt_kkpm.addr, align 8, !dbg !61 ; [debug line = 131:2]
  call void @llvm.dbg.value(metadata !{i64 %mt_kk_new}, i64 0, metadata !55), !dbg !62 ; [debug line = 134:2] [debug variable = y]
  %a.assign = add i16 %kk.load, 1, !dbg !63       ; [#uses=2 type=i16] [debug line = 141:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign}, i64 0, metadata !64), !dbg !68 ; [debug line = 85:37@141:7] [debug variable = a]
  %tmp.i = icmp ugt i16 %a.assign, 623, !dbg !69  ; [#uses=1 type=i1] [debug line = 87:2@141:7]
  %tmp.1.i = add i16 %kk.load, -623, !dbg !71     ; [#uses=1 type=i16] [debug line = 88:3@141:7]
  %a.assign.1 = select i1 %tmp.i, i16 %tmp.1.i, i16 %a.assign, !dbg !69 ; [#uses=1 type=i16] [debug line = 87:2@141:7]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.1}, i64 0, metadata !64), !dbg !69 ; [debug line = 87:2@141:7] [debug variable = a]
  store i16 %a.assign.1, i16* @kk, align 2, !dbg !63 ; [debug line = 141:7]
  %a.assign.2 = add i16 %kk_p1.load, 1, !dbg !72  ; [#uses=2 type=i16] [debug line = 142:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.2}, i64 0, metadata !73), !dbg !75 ; [debug line = 93:40@142:10] [debug variable = a]
  %tmp.i1 = icmp ugt i16 %a.assign.2, 623, !dbg !76 ; [#uses=1 type=i1] [debug line = 95:2@142:10]
  %tmp.2.i = add i16 %kk_p1.load, -623, !dbg !78  ; [#uses=1 type=i16] [debug line = 96:3@142:10]
  %a.assign.3 = select i1 %tmp.i1, i16 %tmp.2.i, i16 %a.assign.2, !dbg !76 ; [#uses=1 type=i16] [debug line = 95:2@142:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.3}, i64 0, metadata !73), !dbg !76 ; [debug line = 95:2@142:10] [debug variable = a]
  store i16 %a.assign.3, i16* @kk_p1, align 2, !dbg !72 ; [debug line = 142:10]
  %a.assign.4 = add i16 %kk_pm.load, 1, !dbg !79  ; [#uses=2 type=i16] [debug line = 143:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.4}, i64 0, metadata !80), !dbg !82 ; [debug line = 101:40@143:10] [debug variable = a]
  %tmp.i3 = icmp ugt i16 %a.assign.4, 623, !dbg !83 ; [#uses=1 type=i1] [debug line = 103:2@143:10]
  %tmp.3.i = add i16 %kk_pm.load, -623, !dbg !85  ; [#uses=1 type=i16] [debug line = 104:3@143:10]
  %a.assign.5 = select i1 %tmp.i3, i16 %tmp.3.i, i16 %a.assign.4, !dbg !83 ; [#uses=1 type=i16] [debug line = 103:2@143:10]
  call void @llvm.dbg.value(metadata !{i16 %a.assign.5}, i64 0, metadata !80), !dbg !83 ; [debug line = 103:2@143:10] [debug variable = a]
  store i16 %a.assign.5, i16* @kk_pm, align 2, !dbg !79 ; [debug line = 143:10]
  ret void
}

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
define internal fastcc void @BlackScholes() nounwind uwtable {
._crit_edge:
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !86 ; [debug line = 12:1]
  call fastcc void @rand_uint32(), !dbg !94       ; [debug line = 12:23]
  ret void
}

; [#uses=0]
define void @dut(i32* %in_fifo.V, i32* %out_fifo.V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_fifo.V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_fifo.V), !map !99
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_fifo.V, [8 x i8]* @str531, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str532, [1 x i8]* @str532, [8 x i8]* @str531)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %tmp.9 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.8 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.7 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.6 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.5 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.4 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.3 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.2 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp.1 = alloca i32, align 4                    ; [#uses=1 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=1 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %in_fifo.V}, metadata !103), !dbg !155 ; [debug line = 15:27] [debug variable = in_fifo.V]
  call void @llvm.dbg.declare(metadata !{i32* %out_fifo.V}, metadata !156), !dbg !158 ; [debug line = 15:53] [debug variable = out_fifo.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str14, [1 x i8]* @.str14, [1 x i8]* @.str14) nounwind, !dbg !159 ; [debug line = 19:1]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !166 ; [debug line = 129:56@43:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !168) nounwind, !dbg !170 ; [debug line = 130:22@43:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp) nounwind, !dbg !171 ; [debug line = 131:9@43:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !168), !dbg !172 ; [debug line = 132:9@43:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !173 ; [debug line = 129:56@44:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.1}, metadata !168) nounwind, !dbg !175 ; [debug line = 130:22@44:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.1) nounwind, !dbg !176 ; [debug line = 131:9@44:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 132:9@44:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !178 ; [debug line = 129:56@50:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.2}, metadata !168) nounwind, !dbg !180 ; [debug line = 130:22@50:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.2) nounwind, !dbg !181 ; [debug line = 131:9@50:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.2}, i64 0, metadata !168), !dbg !182 ; [debug line = 132:9@50:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !183 ; [debug line = 129:56@51:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.3}, metadata !168) nounwind, !dbg !185 ; [debug line = 130:22@51:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.3) nounwind, !dbg !186 ; [debug line = 131:9@51:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.3}, i64 0, metadata !168), !dbg !187 ; [debug line = 132:9@51:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !188 ; [debug line = 129:56@57:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.4}, metadata !168) nounwind, !dbg !190 ; [debug line = 130:22@57:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.4) nounwind, !dbg !191 ; [debug line = 131:9@57:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !168), !dbg !192 ; [debug line = 132:9@57:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !193 ; [debug line = 129:56@58:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.5}, metadata !168) nounwind, !dbg !195 ; [debug line = 130:22@58:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.5) nounwind, !dbg !196 ; [debug line = 131:9@58:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.5}, i64 0, metadata !168), !dbg !197 ; [debug line = 132:9@58:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !198 ; [debug line = 129:56@64:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.6}, metadata !168) nounwind, !dbg !200 ; [debug line = 130:22@64:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.6) nounwind, !dbg !201 ; [debug line = 131:9@64:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !168), !dbg !202 ; [debug line = 132:9@64:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !203 ; [debug line = 129:56@65:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.7}, metadata !168) nounwind, !dbg !205 ; [debug line = 130:22@65:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.7) nounwind, !dbg !206 ; [debug line = 131:9@65:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !168), !dbg !207 ; [debug line = 132:9@65:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !208 ; [debug line = 129:56@71:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.8}, metadata !168) nounwind, !dbg !210 ; [debug line = 130:22@71:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.8) nounwind, !dbg !211 ; [debug line = 131:9@71:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.8}, i64 0, metadata !168), !dbg !212 ; [debug line = 132:9@71:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %in_fifo.V}, i64 0, metadata !161), !dbg !213 ; [debug line = 129:56@72:13] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.9}, metadata !168) nounwind, !dbg !215 ; [debug line = 130:22@72:13] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_fifo.V, i32* %tmp.9) nounwind, !dbg !216 ; [debug line = 131:9@72:13]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.9}, i64 0, metadata !168), !dbg !217 ; [debug line = 132:9@72:13] [debug variable = tmp]
  br label %1, !dbg !218                          ; [debug line = 81:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i17 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=2 type=i17]
  %exitcond = icmp eq i17 %i, -31072, !dbg !218   ; [#uses=1 type=i1] [debug line = 81:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100000, i64 100000, i64 100000) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %3, !dbg !218  ; [debug line = 81:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str25) nounwind, !dbg !220 ; [debug line = 81:41]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str25), !dbg !222 ; [#uses=1 type=i32] [debug line = 81:71]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @.str14) nounwind, !dbg !223 ; [debug line = 82:1]
  call fastcc void @BlackScholes(), !dbg !224     ; [debug line = 83:18]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str25, i32 %tmp.), !dbg !225 ; [#uses=0 type=i32] [debug line = 89:5]
  %i.1 = add i17 %i, 1, !dbg !226                 ; [#uses=1 type=i17] [debug line = 81:35]
  call void @llvm.dbg.value(metadata !{i17 %i.1}, i64 0, metadata !227), !dbg !226 ; [debug line = 81:35] [debug variable = i]
  br label %1, !dbg !226                          ; [debug line = 81:35]

; <label>:5                                       ; preds = %1
  ret void, !dbg !228                             ; [debug line = 91:1]
}

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=10]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=184]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
declare void @_GLOBAL__I_a1941() nounwind section ".text.startup"

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone

!llvm.map.gv = !{!0, !7, !12, !17, !22}
!llvm.dbg.cu = !{!29}

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
!22 = metadata !{metadata !23, [2 x i32]* @llvm.global_ctors.0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"llvm.global_ctors.0", metadata !27, metadata !""}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 1}
!29 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design/hls.prj/solution1/.autopilot/db/mt19937ar.pragma.2.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !30} ; [ DW_TAG_compile_unit ]
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !32, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!32 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkp1", metadata !"mt_kkp1", metadata !"_ZL7mt_kkp1", metadata !33, i32 14, metadata !34, i32 1, i32 1, [624 x i64]* @mt_kkp1} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786473, metadata !"mt19937ar.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 39936, i64 64, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 623}      ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"kk", metadata !"kk", metadata !"", metadata !33, i32 19, metadata !39, i32 0, i32 1, i16* @kk} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"mt_kk", metadata !"mt_kk", metadata !"_ZL5mt_kk", metadata !33, i32 13, metadata !34, i32 1, i32 1, [624 x i64]* @mt_kk} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"kk_p1", metadata !"kk_p1", metadata !"", metadata !33, i32 20, metadata !39, i32 0, i32 1, i16* @kk_p1} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"kk_pm", metadata !"kk_pm", metadata !"", metadata !33, i32 21, metadata !39, i32 0, i32 1, i16* @kk_pm} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"mt_kkpm", metadata !"mt_kkpm", metadata !"_ZL7mt_kkpm", metadata !33, i32 15, metadata !34, i32 1, i32 1, [624 x i64]* @mt_kkpm} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"mti", metadata !"mti", metadata !"_ZL3mti", metadata !33, i32 16, metadata !45, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 118, i32 1, metadata !47, null}
!47 = metadata !{i32 786443, metadata !48, i32 113, i32 1, metadata !33, i32 16} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786478, i32 0, metadata !33, metadata !"rand_uint32", metadata !"rand_uint32", metadata !"_Z11rand_uint32v", metadata !33, i32 112, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 113} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{metadata !35}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!53 = metadata !{i32 119, i32 1, metadata !47, null}
!54 = metadata !{i32 124, i32 2, metadata !47, null}
!55 = metadata !{i32 786688, metadata !47, metadata !"y", metadata !33, i32 121, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 125, i32 2, metadata !47, null}
!57 = metadata !{i32 126, i32 2, metadata !47, null}
!58 = metadata !{i32 786688, metadata !47, metadata !"mt_kk_new", metadata !33, i32 121, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 129, i32 2, metadata !47, null}
!60 = metadata !{i32 130, i32 2, metadata !47, null}
!61 = metadata !{i32 131, i32 2, metadata !47, null}
!62 = metadata !{i32 134, i32 2, metadata !47, null}
!63 = metadata !{i32 141, i32 7, metadata !47, null}
!64 = metadata !{i32 786689, metadata !65, metadata !"a", metadata !33, i32 16777301, metadata !39, i32 0, metadata !63} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786478, i32 0, metadata !33, metadata !"mod_N", metadata !"mod_N", metadata !"_Z5mod_Nt", metadata !33, i32 85, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 86} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !39, metadata !39}
!68 = metadata !{i32 85, i32 37, metadata !65, metadata !63}
!69 = metadata !{i32 87, i32 2, metadata !70, metadata !63}
!70 = metadata !{i32 786443, metadata !65, i32 86, i32 1, metadata !33, i32 13} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 88, i32 3, metadata !70, metadata !63}
!72 = metadata !{i32 142, i32 10, metadata !47, null}
!73 = metadata !{i32 786689, metadata !74, metadata !"a", metadata !33, i32 16777309, metadata !39, i32 0, metadata !72} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786478, i32 0, metadata !33, metadata !"mod_N_p1", metadata !"mod_N_p1", metadata !"_Z8mod_N_p1t", metadata !33, i32 93, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 94} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 93, i32 40, metadata !74, metadata !72}
!76 = metadata !{i32 95, i32 2, metadata !77, metadata !72}
!77 = metadata !{i32 786443, metadata !74, i32 94, i32 1, metadata !33, i32 14} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 96, i32 3, metadata !77, metadata !72}
!79 = metadata !{i32 143, i32 10, metadata !47, null}
!80 = metadata !{i32 786689, metadata !81, metadata !"a", metadata !33, i32 16777317, metadata !39, i32 0, metadata !79} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 786478, i32 0, metadata !33, metadata !"mod_N_pm", metadata !"mod_N_pm", metadata !"_Z8mod_N_pmt", metadata !33, i32 101, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 102} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 101, i32 40, metadata !81, metadata !79}
!83 = metadata !{i32 103, i32 2, metadata !84, metadata !79}
!84 = metadata !{i32 786443, metadata !81, i32 102, i32 1, metadata !33, i32 15} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 104, i32 3, metadata !84, metadata !79}
!86 = metadata !{i32 12, i32 1, metadata !87, null}
!87 = metadata !{i32 786443, metadata !88, i32 11, i32 1, metadata !89, i32 0} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786478, i32 0, metadata !89, metadata !"BlackScholes", metadata !"BlackScholes", metadata !"_Z12BlackScholescddddd", metadata !89, i32 10, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 11} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786473, metadata !"BlackScholes.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{metadata !92, metadata !93, metadata !92, metadata !92, metadata !92, metadata !92, metadata !92}
!92 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!93 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 12, i32 23, metadata !87, null}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"in_fifo.V", metadata !5, metadata !"int"}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 31, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"out_fifo.V", metadata !5, metadata !"int"}
!103 = metadata !{i32 790531, metadata !104, metadata !"in_fifo.V", null, i32 15, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 786689, metadata !105, metadata !"in_fifo", metadata !106, i32 16777231, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 786478, i32 0, metadata !106, metadata !"dut", metadata !"dut", metadata !"_Z3dutN3hls6streamIiEES1_", metadata !106, i32 15, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 16} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786473, metadata !"BlackScholes_dut.cpp", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !109, metadata !109}
!109 = metadata !{i32 786434, metadata !110, metadata !"stream<int>", metadata !111, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, metadata !151} ; [ DW_TAG_class_type ]
!110 = metadata !{i32 786489, null, metadata !"hls", metadata !111, i32 69} ; [ DW_TAG_namespace ]
!111 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/hls_stream.h", metadata !"/home/student/cw444/Fall2014/ece5775/options-accel/final_design", null} ; [ DW_TAG_file_type ]
!112 = metadata !{metadata !113, metadata !114, metadata !118, metadata !123, metadata !127, metadata !130, metadata !134, metadata !135, metadata !141, metadata !142, metadata !143, metadata !146, metadata !149, metadata !150}
!113 = metadata !{i32 786445, metadata !109, metadata !"V", metadata !111, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !45} ; [ DW_TAG_member ]
!114 = metadata !{i32 786478, i32 0, metadata !109, metadata !"stream", metadata !"stream", metadata !"", metadata !111, i32 83, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 83} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !117}
!117 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !109} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 786478, i32 0, metadata !109, metadata !"stream", metadata !"stream", metadata !"", metadata !111, i32 86, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 86} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !117, metadata !121}
!121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ]
!122 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ]
!123 = metadata !{i32 786478, i32 0, metadata !109, metadata !"stream", metadata !"stream", metadata !"", metadata !111, i32 91, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !51, i32 91} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !117, metadata !126}
!126 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_reference_type ]
!127 = metadata !{i32 786478, i32 0, metadata !109, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !111, i32 94, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !51, i32 94} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !126, metadata !117, metadata !126}
!130 = metadata !{i32 786478, i32 0, metadata !109, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !111, i32 101, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 101} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{null, metadata !117, metadata !133}
!133 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_reference_type ]
!134 = metadata !{i32 786478, i32 0, metadata !109, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !111, i32 105, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 105} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786478, i32 0, metadata !109, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !111, i32 112, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 112} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!139 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !140} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_const_type ]
!141 = metadata !{i32 786478, i32 0, metadata !109, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !111, i32 117, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 117} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786478, i32 0, metadata !109, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !111, i32 123, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 123} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786478, i32 0, metadata !109, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !111, i32 129, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 129} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{metadata !45, metadata !117}
!146 = metadata !{i32 786478, i32 0, metadata !109, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !111, i32 136, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 136} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{metadata !138, metadata !117, metadata !133}
!149 = metadata !{i32 786478, i32 0, metadata !109, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !111, i32 144, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 144} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786478, i32 0, metadata !109, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !111, i32 150, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !51, i32 150} ; [ DW_TAG_subprogram ]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !45, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!153 = metadata !{i32 786438, metadata !110, metadata !"stream<int>", metadata !111, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !154, i32 0, null, metadata !151} ; [ DW_TAG_class_field_type ]
!154 = metadata !{metadata !113}
!155 = metadata !{i32 15, i32 27, metadata !105, null}
!156 = metadata !{i32 790531, metadata !157, metadata !"out_fifo.V", null, i32 15, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!157 = metadata !{i32 786689, metadata !105, metadata !"out_fifo", metadata !106, i32 33554447, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 15, i32 53, metadata !105, null}
!159 = metadata !{i32 19, i32 1, metadata !160, null}
!160 = metadata !{i32 786443, metadata !105, i32 16, i32 1, metadata !106, i32 0} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 790531, metadata !162, metadata !"stream<int>.V", null, i32 129, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!162 = metadata !{i32 786689, metadata !163, metadata !"this", metadata !111, i32 16777345, metadata !164, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 786478, i32 0, metadata !110, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !111, i32 129, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !143, metadata !51, i32 129} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!165 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ]
!166 = metadata !{i32 129, i32 56, metadata !163, metadata !167}
!167 = metadata !{i32 43, i32 13, metadata !160, null}
!168 = metadata !{i32 786688, metadata !169, metadata !"tmp", metadata !111, i32 130, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 786443, metadata !163, i32 129, i32 63, metadata !111, i32 3} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 130, i32 22, metadata !169, metadata !167}
!171 = metadata !{i32 131, i32 9, metadata !169, metadata !167}
!172 = metadata !{i32 132, i32 9, metadata !169, metadata !167}
!173 = metadata !{i32 129, i32 56, metadata !163, metadata !174}
!174 = metadata !{i32 44, i32 13, metadata !160, null}
!175 = metadata !{i32 130, i32 22, metadata !169, metadata !174}
!176 = metadata !{i32 131, i32 9, metadata !169, metadata !174}
!177 = metadata !{i32 132, i32 9, metadata !169, metadata !174}
!178 = metadata !{i32 129, i32 56, metadata !163, metadata !179}
!179 = metadata !{i32 50, i32 13, metadata !160, null}
!180 = metadata !{i32 130, i32 22, metadata !169, metadata !179}
!181 = metadata !{i32 131, i32 9, metadata !169, metadata !179}
!182 = metadata !{i32 132, i32 9, metadata !169, metadata !179}
!183 = metadata !{i32 129, i32 56, metadata !163, metadata !184}
!184 = metadata !{i32 51, i32 13, metadata !160, null}
!185 = metadata !{i32 130, i32 22, metadata !169, metadata !184}
!186 = metadata !{i32 131, i32 9, metadata !169, metadata !184}
!187 = metadata !{i32 132, i32 9, metadata !169, metadata !184}
!188 = metadata !{i32 129, i32 56, metadata !163, metadata !189}
!189 = metadata !{i32 57, i32 13, metadata !160, null}
!190 = metadata !{i32 130, i32 22, metadata !169, metadata !189}
!191 = metadata !{i32 131, i32 9, metadata !169, metadata !189}
!192 = metadata !{i32 132, i32 9, metadata !169, metadata !189}
!193 = metadata !{i32 129, i32 56, metadata !163, metadata !194}
!194 = metadata !{i32 58, i32 13, metadata !160, null}
!195 = metadata !{i32 130, i32 22, metadata !169, metadata !194}
!196 = metadata !{i32 131, i32 9, metadata !169, metadata !194}
!197 = metadata !{i32 132, i32 9, metadata !169, metadata !194}
!198 = metadata !{i32 129, i32 56, metadata !163, metadata !199}
!199 = metadata !{i32 64, i32 13, metadata !160, null}
!200 = metadata !{i32 130, i32 22, metadata !169, metadata !199}
!201 = metadata !{i32 131, i32 9, metadata !169, metadata !199}
!202 = metadata !{i32 132, i32 9, metadata !169, metadata !199}
!203 = metadata !{i32 129, i32 56, metadata !163, metadata !204}
!204 = metadata !{i32 65, i32 13, metadata !160, null}
!205 = metadata !{i32 130, i32 22, metadata !169, metadata !204}
!206 = metadata !{i32 131, i32 9, metadata !169, metadata !204}
!207 = metadata !{i32 132, i32 9, metadata !169, metadata !204}
!208 = metadata !{i32 129, i32 56, metadata !163, metadata !209}
!209 = metadata !{i32 71, i32 13, metadata !160, null}
!210 = metadata !{i32 130, i32 22, metadata !169, metadata !209}
!211 = metadata !{i32 131, i32 9, metadata !169, metadata !209}
!212 = metadata !{i32 132, i32 9, metadata !169, metadata !209}
!213 = metadata !{i32 129, i32 56, metadata !163, metadata !214}
!214 = metadata !{i32 72, i32 13, metadata !160, null}
!215 = metadata !{i32 130, i32 22, metadata !169, metadata !214}
!216 = metadata !{i32 131, i32 9, metadata !169, metadata !214}
!217 = metadata !{i32 132, i32 9, metadata !169, metadata !214}
!218 = metadata !{i32 81, i32 16, metadata !219, null}
!219 = metadata !{i32 786443, metadata !160, i32 81, i32 11, metadata !106, i32 1} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 81, i32 41, metadata !221, null}
!221 = metadata !{i32 786443, metadata !219, i32 81, i32 40, metadata !106, i32 2} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 81, i32 71, metadata !221, null}
!223 = metadata !{i32 82, i32 1, metadata !221, null}
!224 = metadata !{i32 83, i32 18, metadata !221, null}
!225 = metadata !{i32 89, i32 5, metadata !221, null}
!226 = metadata !{i32 81, i32 35, metadata !219, null}
!227 = metadata !{i32 786688, metadata !160, metadata !"i", metadata !106, i32 22, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 91, i32 1, metadata !160, null}
