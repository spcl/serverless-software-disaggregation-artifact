
FROM ubuntu:20.04 as builder

ENV PATH=$PATH:/opt/bin/
ENV HOME /root

RUN apt-get update && apt-get install -y file g++ gcc gfortran make gdb strace wget ca-certificates --no-install-recommends
COPY NPB3.4.2 ${HOME}/NPB3.4.2
RUN cd ${HOME}/NPB3.4.2/NPB3.4-MPI/ &&\
    # git does not store empty directories -> need to recreate
    mkdir -p bin &&\
    make bt cg dt ep ft is lu mg sp CLASS=A &&\
    make bt cg dt ep ft is lu mg sp CLASS=W &&\
    make bt cg dt ep ft is lu mg sp CLASS=B 

FROM ubuntu:20.04
ENV HOME /root
COPY --from=builder ${HOME}/NPB3.4.2 /opt/

ENV PATH=$PATH:/opt/bin/
ENV LD_LIBRARY_PATH=/opt/lib:${LD_LIBRARY_PATH}

RUN apt-get update && apt-get install -y file g++ gcc gfortran time --no-install-recommends && ldconfig /opt/lib

