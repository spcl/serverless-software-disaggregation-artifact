#!/bin/bash

for ranks_per_node in 32 28 24 20 16 8 1; do
	LULESH_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/external/build_lulesh/ RESULT_DIR=$(pwd)/../data/baseline RANKS_PER_NODE=${ranks_per_node} envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_lulesh.sh > slurm_lulesh_${ranks_per_node}.sh
done
