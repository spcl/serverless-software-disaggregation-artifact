#!/bin/bash -l
#SBATCH --job-name="job_name"
#SBATCH --account="g34"
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=36
#SBATCH --partition=normal
#SBATCH --constraint=mc
#SBATCH --hint=nomultithread

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

cd /scratch/snx3000/mcopik/results_rfaas

srun python3 process.py sinfo_results results ${SLURM_CPUS_PER_TASK}
