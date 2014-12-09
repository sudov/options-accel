all: compile_run

compile_run: 
	@gcc -c main.c -o main.o && gcc -c BlackScholes.c -o BlackScholes.o && gcc -c CND.c -o CND.o && gcc main.o BlackScholes.o CND.o -o BlackScholes -lm

clean: 
	@rm main.o
	@rm CND.o
	@rm BlackScholes.o
	@rm BlackScholes
	@rm -rf hls.prj

vivado:
	@. ./setup && vivado_hls run.tcl