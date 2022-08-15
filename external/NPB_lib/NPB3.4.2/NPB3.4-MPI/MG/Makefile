SHELL=/bin/sh
BENCHMARK=mg
BENCHMARKU=MG

include ../config/make.def

OBJS = mg_data.o mpinpb.o ${COMMON}/print_results.o  \
       ${COMMON}/get_active_nprocs.o \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS} mg.o mg-lib tester
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} mg.o ${FMPI_LIB}

# Special build step for a shared library
mg-lib: config ${OBJS} mg_lib.o
	${FLINK} ${FLINKFLAGS} -shared -fPIC -o ${BINDIR}/lib$(notdir ${PROGRAM}).so ${OBJS} mg_lib.o ${FMPI_LIB}

.f90.o:
	${FCOMPILE} $<

mg.o:		mg.f90  mg_data.o mpinpb.o
mg_lib.o: 	mg_lib.f90  mg_data.o mpinpb.o
mg_data.o:	mg_data.f90 mpinpb.o npbparams.h
mpinpb.o:	mpinpb.f90

# Local tester app that uses the library version to execute code.
tester: tester.o
	${CLINK} $< -o ${PROGRAM}.tester -l$(notdir ${PROGRAM}) -L ${BINDIR} -Wl,-rpath,$(realpath ${BINDIR})

clean:
	- rm -f *.o *.mod *~ 
	- rm -f npbparams.h core



