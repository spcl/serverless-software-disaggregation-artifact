#!/bin/bash

ARTIFACT_DIR=$1

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

for ranks_per_node in 11; do
	MILC_DIR=${ARTIFACT_DIR}/external/MILC/milc_qcd-7.8.1-gpu/ks_imp_dyn RESULT_DIR=${ARTIFACT_DIR}/data/baseline/daint_gpu/ MILC_INPUT_DIR=${ARTIFACT_DIR}/external/MILC/input_scripts RANKS_PER_NODE=${ranks_per_node} envsubst '${MILC_DIR},${MILC_INPUT_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_milc.sh > slurm_milc_${ranks_per_node}.sh
done
