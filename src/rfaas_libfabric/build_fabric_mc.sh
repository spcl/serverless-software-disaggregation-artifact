#!/bin/bash

DESTINATION=$1

module switch daint-gpu daint-mc
module load daint-mc


cp -r libfabric libfabric-mc
mkdir -p install-fabric-mc
cd libfabric-mc
./autogen.sh
if [ -z "$DESTINATION" ];
then
  ./configure --enable-direct=gni --prefix=$(pwd)/../install-fabric-mc
else
  ./configure --enable-direct=gni --prefix=${DESTINATION}/install-fabric-mc
fi
make -j8 install

