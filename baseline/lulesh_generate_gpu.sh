#!/bin/bash

for ranks_per_node in 12 10 8 6 4 2; do
	LULESH_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/external/build_lulesh/ RESULT_DIR=$(pwd)/../data/baseline RANKS_PER_NODE=${ranks_per_node} envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_lulesh_gpu.sh > slurm_lulesh_gpu_${ranks_per_node}.sh
done
