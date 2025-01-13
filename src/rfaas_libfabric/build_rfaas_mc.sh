#!/bin/bash

DESTINATION=$1

module switch daint-gpu daint-mc
module load daint-mc
module switch PrgEnv-cray PrgEnv-gnu


if [ -z "$DESTINATION" ];
then
  DESTINATION=$(pwd)
fi
mkdir -p ${DESTINATION}/build_rfaas_mc
cd ${DESTINATION}/build_rfaas_mc
#PKG_CONFIG_PATH="${DESTINATION}/install-fabric-mc/lib/pkgconfig;${DESTINATION}/install-pistache-mc/lib64/pkgconfig" cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release -DWITH_LIBFABRIC=ON -DWITH_GNI_AUTH=ON ../rFaaS
PKG_CONFIG_PATH="${DESTINATION}/install-fabric-mc/lib/pkgconfig;${DESTINATION}/install-pistache-mc/lib64/pkgconfig;${PKG_CONFIG_PATH}" cmake -DCMAKE_C_COMPILER=cc -DCMAKE_CXX_COMPILER=CC -DCMAKE_BUILD_TYPE=Release -DWITH_LIBFABRIC=ON -DWITH_GNI_AUTH=ON ../rFaaS
make -j4

