#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc
make clean
make
module list 2> modules.txt
env > env.txt

