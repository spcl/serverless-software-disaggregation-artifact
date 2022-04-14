#!/bin/bash -l
#SBATCH --job-name="lulesh"
#SBATCH --account="g34"
#SBATCH --time=04:00:00
##SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks=${RANKS}
#SBATCH --cpus-per-task=1
#SBATCH --partition=long
#SBATCH --constraint=mc
#SBATCH --exclusive
#SBATCH --hint=nomultithread
#SBATCH --output=lulesh.%a.o
#SBATCH --error=lulesh.%a.e
#SBATCH --reservation=spcl

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#export CRAY_CUDA_MPS=1
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load openmpi

echo "Nodes: ${SLURM_JOB_NUM_NODES} Tasks: ${SLURM_NTASKS}"
echo "Nodes: ${SLURM_JOB_NODELIST}"
echo "Bind Type: ${SLURM_CPU_BIND_TYPE}"
echo "Bind List: ${SLURM_CPU_BIND_LIST}"

export BINARY_DIR=${LULESH_DIR}
export OUTPUT_DIR=${RESULT_DIR}

cd ${OUTPUT_DIR}
mkdir -p lulesh_${RANKS}
cd lulesh_${RANKS}
for size in 10 15 18 20 25 30; do

	for rep in 0 1 2 3 4 5 6 7 8 9; do
		START=$(date +%s.%N)
		srun --cpu-bind=verbose /usr/bin/time --append --output-file=lulesh_${size}.times ${BINARY_DIR}/lulesh2.0 -s ${size} > lulesh_${size}_${rep}.out 2>&1
		END=$(date +%s.%N)
		DIFF=$(echo "$END - $START" | bc)
		echo $DIFF >> lulesh_${size}.full.times
	done

done

