#!/bin/bash -l
#SBATCH --job-name="nas"
#SBATCH --account="g34"
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=36
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=mc
#SBATCH --hint=nomultithread
#SBATCH --output=lulesh.%a.o
#SBATCH --error=lulesh.%a.e

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#export CRAY_CUDA_MPS=1
#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load daint-mc

echo "Nodes: ${SLURM_JOB_NUM_NODES} Tasks: ${SLURM_NTASKS}"
echo "Nodes: ${SLURM_JOB_NODELIST}"

echo "Host ", $(hostname)
echo "Users ", $(w)
echo "Processes ", $(ps)

export BINARY_DIR=${NAS_DIR}
export OUTPUT_DIR=${RESULT_DIR}

cd ${OUTPUT_DIR}
mkdir -p nas_${SLURM_NTASKS}
cd nas_${SLURM_NTASKS}

size="A"
for rep in 0 1 2 3 4 5 6 7 8 9; do

	app="bt"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times

	app="lu"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times
done

size="B"
for rep in 0 1 2 3 4 5 6 7 8 9; do

	app="cg"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times
done

size="W"
for rep in 0 1 2 3 4 5 6 7 8 9; do

	app="bt"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times

	app="ep"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times

	app="ft"
	START=$(date +%s.%N)
	srun sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas /usr/bin/time --append --output-file=${OUTPUT_DIR}/nas_sarus_${SLURM_NTASKS}/${app}_${size}.times /opt/NPB3.4-MPI/bin/${app}.${size}.x > nas_${app}_${size}_${rep}.out 2>&1
	END=$(date +%s.%N)
	DIFF=$(echo "$END - $START" | bc)
	echo $DIFF >> ${app}_${size}.full.times
done

