#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc
module switch PrgEnv-cray PrgEnv-gnu

mkdir -p build_rfaas_mc
cd build_rfaas_mc
PKG_CONFIG_PATH="$(pwd)/../install-fabric-mc/lib/pkgconfig;$(pwd)/../install-pistache-mc/lib64/pkgconfig" cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release -DWITH_LIBFABRIC=ON -DWITH_GNI_AUTH=ON ../rFaaS
make -j4

