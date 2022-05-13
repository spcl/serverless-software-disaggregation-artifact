#!/bin/bash -l
#SBATCH --job-name="lulesh"
#SBATCH --account="g34"
#SBATCH --time=00:30:00
##SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=${RANKS_PER_NODE}
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=mc
#SBATCH --hint=nomultithread
#SBATCH --output=lulesh.%A.%a.o
#SBATCH --error=lulesh.%A.%a.e
#SBATCH --array=[0-19]

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#export CRAY_CUDA_MPS=1
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load daint-mc

echo "Nodes: ${SLURM_JOB_NUM_NODES} Tasks: ${SLURM_NTASKS}"
echo "Nodes: ${SLURM_JOB_NODELIST}"

echo "Host ", $(hostname)
echo "Users ", $(w)
echo "Processes ", $(ps)

export BINARY_DIR=${LULESH_DIR}
export OUTPUT_DIR=${RESULT_DIR}

cd ${OUTPUT_DIR}
mkdir -p lulesh_${SLURM_NTASKS}
cd lulesh_${SLURM_NTASKS}
mkdir -p lulesh_${RANKS_PER_NODE}
cd lulesh_${RANKS_PER_NODE}
for size in 15 18 20 25; do

	rep=${SLURM_ARRAY_TASK_ID}
	START=$(date +%s.%N)
	srun /usr/bin/time --append --output-file=lulesh_${size}.times ${BINARY_DIR}/lulesh2.0 -s ${size} > lulesh_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> lulesh_${size}.full.times

done

