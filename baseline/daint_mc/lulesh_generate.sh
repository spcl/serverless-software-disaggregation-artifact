#!/bin/bash


ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

for ranks_per_node in 32 28 24 20 16 8 1; do
	LULESH_DIR=${ARTIFACT_DIR}/external/LULESH/build_mc RESULT_DIR=${ARTIFACT_DIR}/data/baseline/daint_mc/ RANKS_PER_NODE=${ranks_per_node} envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_lulesh.sh > slurm_lulesh_${ranks_per_node}.sh
done
