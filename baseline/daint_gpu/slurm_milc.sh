#!/bin/bash -l
#SBATCH --job-name="milc"
#SBATCH --account="g34"
#SBATCH --time=01:00:00
##SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=${RANKS_PER_NODE}
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=gpu
#SBATCH --hint=nomultithread
#SBATCH --output=milc.%A.%a.o
#SBATCH --error=milc.%A.%a.e
#SBATCH --array=[0-19]

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#export CRAY_CUDA_MPS=1
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load daint-gpu

echo "Nodes: ${SLURM_JOB_NUM_NODES} Tasks: ${SLURM_NTASKS}"
echo "Nodes: ${SLURM_JOB_NODELIST}"

echo "Host ", $(hostname)
echo "Users ", $(w)
echo "Processes ", $(ps)

export BINARY_DIR=${MILC_DIR}
export INPUT_DIR=${MILC_INPUT_DIR}
export OUTPUT_DIR=${RESULT_DIR}

cd ${OUTPUT_DIR}
mkdir -p milc_${SLURM_NTASKS}
cd milc_${SLURM_NTASKS}
mkdir -p milc_${RANKS_PER_NODE}
cd milc_${RANKS_PER_NODE}
ranks=${SLURM_NTASKS}

for size in 32 64 96 128; do

	rep=${SLURM_ARRAY_TASK_ID}
	START=$(date +%s.%N)
	mkdir -p run_${SLURM_NTASKS}_${size}_${rep}
	cd run_${SLURM_NTASKS}_${size}_${rep}
	srun /usr/bin/time --append --output-file=../milc_${size}.times ${BINARY_DIR}/su3_rmd ${INPUT_DIR}/milc.p${ranks}.size${size}.in > ../milc_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ../milc_${size}.full.times
	cd ..

done

