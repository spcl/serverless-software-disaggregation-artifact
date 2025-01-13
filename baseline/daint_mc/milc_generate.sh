#!/bin/bash

ARTIFACT_DIR=$1

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

DESTINATION=$1

if [ -z "$DESTINATION" ];
then
  DESTINATION=$(pwd)
  for ranks_per_node in 32 28 24 20 16 8 1; do
    MILC_DIR=${ARTIFACT_DIR}/external/MILC/milc_qcd-7.8.1-mc/ks_imp_dyn RESULT_DIR=${ARTIFACT_DIR}/data/baseline/daint_mc/ MILC_INPUT_DIR=${ARTIFACT_DIR}/external/MILC/input_scripts RANKS_PER_NODE=${ranks_per_node} envsubst '${MILC_DIR},${MILC_INPUT_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_milc.sh > slurm_milc_${ranks_per_node}.sh
  done
else
  mkdir -p ${DESTINATION}
  MILC_DIR=${ARTIFACT_DIR}/external/MILC/
  cp -r ${MILC_DIR}/input_scripts ${DESTINATION}

  mkdir -p ${DESTINATION}/data/baseline/daint_mc/
  for ranks_per_node in 32 28 24 20 16 8 1; do
    MILC_DIR=${DESTINATION}/milc_qcd-7.8.1-mc/ks_imp_dyn RESULT_DIR=${DESTINATION}/data/baseline/daint_mc/ MILC_INPUT_DIR=${DESTINATION}/input_scripts RANKS_PER_NODE=${ranks_per_node} envsubst '${MILC_DIR},${MILC_INPUT_DIR},${RESULT_DIR},${RANKS_PER_NODE}' < slurm_milc.sh > slurm_milc_${ranks_per_node}.sh
  done
fi


