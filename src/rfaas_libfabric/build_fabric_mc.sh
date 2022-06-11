#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc

cp -r libfabric libfabric-mc
mkdir -p install-fabric-mc
cd libfabric-mc
./autogen.sh
./configure --enable-direct=gni --prefix=$(pwd)/../install-fabric-mc 
make -j8 install

