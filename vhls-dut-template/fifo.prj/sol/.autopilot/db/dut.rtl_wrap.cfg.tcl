set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "dut"
set rawDecl [list "void" "dut\(hls::stream<int>& in_fifo, hls::stream<int>& out_fifo\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "in_fifo"
set portInterface0 "[list AP_STREAM 0]"
set portData0 "int"
set portPointer0 "2"
set portArrayDim0 0
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "out_fifo"
set portInterface1 "[list AP_STREAM 0]"
set portData1 "int"
set portPointer1 "2"
set portArrayDim1 0
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 0
