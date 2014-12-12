set language "C"
set globalAPint ""
set globalVariable ""
set gportName0 "mt"
set gportInterface0 "memory"
set gportData0 "unsigned long"
set gportPointer0 "0"
set gportArrayDim0 [list 624]
set gportConst0 "0"
set gportVolatile0 "0"
set gportInitilizer0 ""
set gextern0 0
set gport0 [list $gportName0 $gportInterface0 $gportData0 $gportPointer0 $gportArrayDim0 $gportConst0 $gportVolatile0 $gportInitilizer0 $gextern0]
lappend globalVariable $gport0
set gportName1 "mti"
set gportInterface1 "wire"
set gportData1 "int"
set gportPointer1 "0"
set gportArrayDim1 0
set gportConst1 "0"
set gportVolatile1 "0"
set gportInitilizer1 ""
set gextern1 0
set gport1 [list $gportName1 $gportInterface1 $gportData1 $gportPointer1 $gportArrayDim1 $gportConst1 $gportVolatile1 $gportInitilizer1 $gextern1]
lappend globalVariable $gport1
set staticVariable ""
set moduleName "dut"
set moduleIsExternC "0"
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
set useIntT 1
