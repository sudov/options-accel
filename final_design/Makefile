VHLS_PATH := $(dir $(shell which vivado_hls))/..
VHLS_INC ?= ${VHLS_PATH}/include



all: compile_run

compile_run: 
	#@gcc -c main.c -o main.o && gcc -c BlackScholes.c -o BlackScholes.o && gcc -c CND.c -o CND.o && gcc -c mt19937ar.c -o mt19937ar.o && gcc main.o BlackScholes.o CND.o mt19937ar.o -o BlackScholes -lm
	g++ -I${VHLS_INC} -lm main.cpp BlackScholes.cpp CND.cpp mt19937ar.cpp BlackScholes_dut.cpp -o BlackScholes
clean: 
	@rm main.o
	@rm CND.o
	@rm BlackScholes.o
	@rm mt19937ar.o
	@rm BlackScholes
	@rm -rf hls.prj
	rm *.o

vivado:
	@. ./setup && vivado_hls run.tcl

