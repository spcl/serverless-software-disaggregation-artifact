#!/bin/bash

for ranks_per_node in 12 10 8 6 4 2; do
	sbatch -n 27 < slurm_lulesh_gpu_${ranks_per_node}.sh
done
