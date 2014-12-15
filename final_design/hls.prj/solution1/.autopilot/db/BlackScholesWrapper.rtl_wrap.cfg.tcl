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
set moduleName "BlackScholesWrapper"
set moduleIsExternC "0"
set rawDecl [list "void" "BlackScholesWrapper\(char CallPutFlag, double S, double X, double T, double r, double b, double a\[100000\]\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "CallPutFlag"
set portInterface0 "wire"
set portData0 "char"
set portPointer0 "0"
set portArrayDim0 0
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "S"
set portInterface1 "wire"
set portData1 "double"
set portPointer1 "0"
set portArrayDim1 0
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set portName2 "X"
set portInterface2 "wire"
set portData2 "double"
set portPointer2 "0"
set portArrayDim2 0
set portConst2 "0"
set portVolatile2 "0"
set portArrayOpt2 ""
set port2 [list $portName2 $portInterface2 $portData2 $portPointer2 $portArrayDim2 $portConst2 $portVolatile2 $portArrayOpt2]
lappend portList $port2
set portName3 "T"
set portInterface3 "wire"
set portData3 "double"
set portPointer3 "0"
set portArrayDim3 0
set portConst3 "0"
set portVolatile3 "0"
set portArrayOpt3 ""
set port3 [list $portName3 $portInterface3 $portData3 $portPointer3 $portArrayDim3 $portConst3 $portVolatile3 $portArrayOpt3]
lappend portList $port3
set portName4 "r"
set portInterface4 "wire"
set portData4 "double"
set portPointer4 "0"
set portArrayDim4 0
set portConst4 "0"
set portVolatile4 "0"
set portArrayOpt4 ""
set port4 [list $portName4 $portInterface4 $portData4 $portPointer4 $portArrayDim4 $portConst4 $portVolatile4 $portArrayOpt4]
lappend portList $port4
set portName5 "b"
set portInterface5 "wire"
set portData5 "double"
set portPointer5 "0"
set portArrayDim5 0
set portConst5 "0"
set portVolatile5 "0"
set portArrayOpt5 ""
set port5 [list $portName5 $portInterface5 $portData5 $portPointer5 $portArrayDim5 $portConst5 $portVolatile5 $portArrayOpt5]
lappend portList $port5
set portName6 "a"
set portInterface6 "memory"
set portData6 "double"
set portPointer6 "0"
set portArrayDim6 [list 100000]
set portConst6 "0"
set portVolatile6 "0"
set portArrayOpt6 ""
set port6 [list $portName6 $portInterface6 $portData6 $portPointer6 $portArrayDim6 $portConst6 $portVolatile6 $portArrayOpt6]
lappend portList $port6
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 1
