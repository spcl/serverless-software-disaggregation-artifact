#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc

dir=build_mc
rm -rf ${dir}
cp -r NPB3.4.2 ${dir}
cd ${dir}/NPB3.4-MPI/
# Include override of default Fortran compiler with the Fortran one.
cp ../../make.def config/make.def
cp ../../print_results.f90 common
# git does not store empty directories
mkdir bin

make bt cg dt ep ft is lu mg sp CLASS=A
make bt cg dt ep ft is lu mg sp CLASS=W
make bt cg dt ep ft is lu mg sp CLASS=B 
module list 2> modules.txt
env > env.txt

