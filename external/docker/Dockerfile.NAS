
FROM mcopik/disagg:mpi as builder

ENV PATH=$PATH:/opt/bin/

RUN wget https://www.nas.nasa.gov/assets/npb/NPB3.4.2.tar.gz && tar -xf NPB3.4.2.tar.gz && cd NPB3.4.2/NPB3.4-MPI/ && cp config/make.def.template config/make.def 
ADD print_results.f90 NPB3.4.2/NPB3.4-MPI/common/
RUN cd NPB3.4.2/NPB3.4-MPI/ && make bt cg dt ep ft is lu mg sp CLASS=A && make bt cg dt ep ft is lu mg sp CLASS=W && make bt cg dt ep ft is lu mg sp CLASS=B 

FROM ubuntu:20.04
COPY --from=builder /opt/ /opt/
COPY --from=builder ${HOME}/NPB3.4.2 /opt/

ENV PATH=$PATH:/opt/bin/
ENV LD_LIBRARY_PATH=/opt/lib:${LD_LIBRARY_PATH}

RUN apt-get update && apt-get install -y file g++ gcc gfortran time --no-install-recommends && ldconfig /opt/lib

