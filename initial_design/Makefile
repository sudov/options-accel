# 
# Makefile
#
include Makefile.include

#
# NOTE: This only works for GNU Make.  On NERSC IBM machines, you'll
# need to load the "GNU" module and use "gmake" instead of "make".
# Please refer to the following webpage for more info:
#
# http://www.nersc.gov/nusers/systems/bassi/software/
#

LDFLAGS += -Ldcmt0.4/lib -ldcmt

HW1_INCS = black_scholes.h gaussian.h parser.h mt19937ar.h timer.h util.h
HW1_C_SRCS = black_scholes.c gaussian.c main.c parser.c mt19937ar.c dcmt0.4/lib/random_seed.c timer.c util.c
HW1_C_OBJS = $(HW1_C_SRCS:.c=.o)
HW1_EXE = hw1.x



all: hw1.x
	
%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

hw1.x: $(HW1_C_OBJS) dcmt0.4/lib/libdcmt.a
	$(LINKER) $(CFLAGS) $(LDFLAGS) $(HW1_C_OBJS) -o $@

dcmt0.4/lib/libdcmt.a: 
	make -C dcmt0.4/lib

black_scholes.o: black_scholes.c black_scholes.h  gaussian.h mt19937ar.h util.h

gaussian.o: gaussian.c gaussian.h util.h

main.o: main.c black_scholes.h parser.h mt19937ar.h timer.h

parser.o: parser.c parser.h

#random.o: random.c random.h
mt19937ar.o: mt19937ar.c mt19937ar.h

dcmt0.4/lib/random_seed.o: dcmt0.4/lib/random_seed.c

timer.o: timer.c timer.h

util.o: util.c util.h

clean:
	make -C dcmt0.4/lib clean
	rm -f $(HW1_C_OBJS) $(HW1_EXE)
