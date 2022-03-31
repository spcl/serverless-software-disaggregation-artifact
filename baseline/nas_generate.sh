#!/bin/bash

for p in 1 2 4 8; do
	NAS_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/external/NPB3.4.2/NPB3.4-MPI/bin  RESULT_DIR=$(pwd)/../data/baseline envsubst '${NAS_DIR},${RESULT_DIR}' < slurm_nas_${p}_sarus.sh > slurm_nas_${p}_sarus.full.sh
done
