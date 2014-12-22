VHLS_PATH := $(dir $(shell which vivado_hls))/..
VHLS_INC ?= ${VHLS_PATH}/include

all: compile_run

compile_run: 
	@g++ -I${VHLS_INC} -lm main.cpp BlackScholesWrapper.cpp BlackScholes.cpp CND.cpp mt19937ar.cpp BlackScholes_dut.cpp -o BlackScholes

clean: 
	@rm BlackScholes
	@rm -rf hls.prj/

vivado:
	@. ./setup && vivado_hls run.tcl
