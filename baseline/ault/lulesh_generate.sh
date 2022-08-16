#!/bin/bash

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

for RANKS in 27 64; do
  RANKS=${RANKS} LULESH_DIR=${ARTIFACT_DIR}/external/LULESH/build_ault RESULT_DIR=${ARTIFACT_DIR}/data/baseline/ault envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS}' < slurm_lulesh.sh > slurm_lulesh_${RANKS}.sh
done
