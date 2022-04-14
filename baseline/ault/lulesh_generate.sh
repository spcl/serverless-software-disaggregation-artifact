#!/bin/bash

for RANKS in 27 64; do
	LULESH_DIR=/scratch/mcopik/2022/serverless/softw_disagg/serverless-software-disaggregation-artifact/external/build_lulesh/ RESULT_DIR=$(pwd)/../../data/baseline_precision/ault RANKS=${RANKS} envsubst '${LULESH_DIR},${RESULT_DIR},${RANKS}' < slurm_lulesh.sh > slurm_lulesh_${RANKS}.sh
done
