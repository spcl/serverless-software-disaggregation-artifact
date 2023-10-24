SHELL=/bin/sh
BENCHMARK=ep
BENCHMARKU=EP

include ../config/make.def

OBJS = ep_data.o verify.o mpinpb.o \
	${COMMON}/print_results.o ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS} ep.o ep-lib tester
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} ep.o ${FMPI_LIB}

# Special build step for a shared library
ep-lib: config ${OBJS} ep_lib.o lib.o
	${FLINK} ${FLINKFLAGS} -shared -fPIC -o ${BINDIR}/lib$(notdir ${PROGRAM}).so ${OBJS} ep_lib.o lib.o ${FMPI_LIB}

.f90.o:
	${FCOMPILE} $<

.c.o:
	${CCOMPILE} $<

ep.o:		ep.f90 ep_data.o mpinpb.o
ep_lib.o:		ep_lib.f90 ep_data.o mpinpb.o
lib.o:      lib.c ep_data.o mpinpb.o
ep_data.o:	ep_data.f90 npbparams.h
verify.o:	verify.f90
mpinpb.o:	mpinpb.f90

# Local tester app that uses the library version to execute code.
tester: tester.o
	${CLINK} $< -o ${PROGRAM}.tester -l$(notdir ${PROGRAM}) -L ${BINDIR} -Wl,-rpath,$(realpath ${BINDIR})

clean:
	- rm -f *.o *~ *.mod
	- rm -f npbparams.h core



