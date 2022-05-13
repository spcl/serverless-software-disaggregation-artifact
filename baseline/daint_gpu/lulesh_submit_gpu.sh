#!/bin/bash

for ranks_per_node in 9; do
	sbatch -n 27 < slurm_lulesh_gpu_${ranks_per_node}.sh
done
