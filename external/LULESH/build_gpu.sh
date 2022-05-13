#!/bin/bash

module switch daint-mc daint-gpu
module load daint-gpu
dir=build_gpu
rm -rf ${dir}
mkdir ${dir}
cd ${dir}
CC=cc CXX=CC cmake ../LULESH
make -j8
module list 2> modules.txt
env > env.txt

