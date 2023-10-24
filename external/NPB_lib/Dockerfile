
FROM ubuntu:22.04 as builder

ENV PATH=$PATH:/opt/bin/
ENV HOME /root

RUN apt-get update && apt-get install -y file g++ gcc gfortran make gdb strace wget ca-certificates --no-install-recommends
COPY NPB3.4.2 ${HOME}/NPB3.4.2
RUN cd ${HOME}/NPB3.4.2/NPB3.4-MPI/ &&\
    # git does not store empty directories -> need to recreate
    mkdir -p bin &&\
    FFLAGS="-fallow-argument-mismatch" make bt cg dt ep ft is lu mg sp CLASS=A &&\
    FFLAGS="-fallow-argument-mismatch" make bt cg dt ep ft is lu mg sp CLASS=W &&\
    FFLAGS="-fallow-argument-mismatch" make bt cg dt ep ft is lu mg sp CLASS=B 

FROM ubuntu:22.04
ENV HOME /root
COPY --from=builder ${HOME}/NPB3.4.2 /opt/

ENV PATH=$PATH:/opt/bin/
ENV LD_LIBRARY_PATH=/opt/bin:${LD_LIBRARY_PATH}

RUN apt-get update && apt-get install -y file gcc g++ gfortran time --no-install-recommends && ldconfig /opt/bin

