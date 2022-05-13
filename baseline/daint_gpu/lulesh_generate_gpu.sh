#!/bin/bash

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

for ranks_per_node in 12 10 9 8 6 4 2; do
	LULESH_DIR=${ARTIFACT_DIR}/external/LULESH/build_gpu RESULT_DIR=${ARTIFACT_DIR}/data/baseline/daint_gpu RANKS_PER_NODE=${ranks_per_node} envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_lulesh_gpu.sh > slurm_lulesh_gpu_${ranks_per_node}.sh
done
