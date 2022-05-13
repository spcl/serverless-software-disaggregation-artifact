#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc
dir=build_mc
rm -rf ${dir}
mkdir ${dir}
cd ${dir}
CC=cc CXX=CC cmake ../LULESH
make -j8
module list 2> modules.txt
env > env.txt

