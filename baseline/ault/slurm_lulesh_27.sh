#!/bin/bash -l
#SBATCH --job-name="lulesh"
#SBATCH --account="g34"
#SBATCH --time=04:00:00
##SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks=27
#SBATCH --cpus-per-task=1
#SBATCH --partition=long
#SBATCH --constraint=mc
#SBATCH --exclusive
#SBATCH --hint=nomultithread
#SBATCH --output=lulesh.%A.%a.o
#SBATCH --error=lulesh.%A.%a.e
#SBATCH --reservation=spcl
#SBATCH --array=[0-9]

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#export CRAY_CUDA_MPS=1
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load openmpi

echo "Nodes: ${SLURM_JOB_NUM_NODES} Tasks: ${SLURM_NTASKS}"
echo "Nodes: ${SLURM_JOB_NODELIST}"
echo "Bind Type: ${SLURM_CPU_BIND_TYPE}"
echo "Bind List: ${SLURM_CPU_BIND_LIST}"

export BINARY_DIR=/scratch/mcopik/2022/serverless/softw_disagg/serverless-software-disaggregation-artifact/baseline/ault/../../external/LULESH/build_ault
export OUTPUT_DIR=/scratch/mcopik/2022/serverless/softw_disagg/serverless-software-disaggregation-artifact/baseline/ault/../../data/baseline/ault

cd ${OUTPUT_DIR}
mkdir -p lulesh_27
cd lulesh_27
for size in 10 15 18 20 25 30; do

  rep=${SLURM_ARRAY_TASK_ID}
  START=$(date +%s.%N)
  # Needed on Ault in presence of virtual Docker interfaces
  export OMPI_MCA_btl_tcp_if_include='enp47s0f1'
  srun --cpu-bind=verbose /usr/bin/time --append --output-file=lulesh_${size}.times ${BINARY_DIR}/lulesh2.0 -s ${size} > lulesh_${size}_${rep}.out 2>&1
  END=$(date +%s.%N)
  DIFF=$(echo "$END - $START" | bc)
  echo $DIFF >> lulesh_${size}.full.times

done

