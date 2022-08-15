SHELL=/bin/sh
BENCHMARK=cg
BENCHMARKU=CG

include ../config/make.def

OBJS = cg_data.o mpinpb.o ${COMMON}/print_results.o  \
       ${COMMON}/get_active_nprocs.o \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS} cg.o cg-lib tester
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} cg.o ${FMPI_LIB};

# Special build step for a shared library
cg-lib: config ${OBJS} cg_lib.o
	${FLINK} ${FLINKFLAGS} -shared -fPIC -o ${BINDIR}/lib$(notdir ${PROGRAM}).so ${OBJS} cg_lib.o ${FMPI_LIB}

.f90.o:
	${FCOMPILE} $<

.c.o:
	${CCOMPILE} $<

cg.o:		cg.f90  cg_data.o mpinpb.o
cg-lib.o: cg_lib.f90 cg_data.o mpinpb.o
cg_data.o:	cg_data.f90 mpinpb.o npbparams.h
mpinpb.o:	mpinpb.f90

# Local tester app that uses the library version to execute code.
tester: tester.o
	${CLINK} $< -o ${PROGRAM}.tester -l$(notdir ${PROGRAM}) -L ${BINDIR} -Wl,-rpath,$(realpath ${BINDIR})

clean:
	- rm -f *.o *.mod *~ 
	- rm -f npbparams.h core



