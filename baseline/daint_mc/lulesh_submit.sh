#!/bin/bash

for ranks_per_node in 32; do
	#sbatch -n 64 < slurm_lulesh_${ranks_per_node}.sh
	sbatch -n 27 < slurm_lulesh_${ranks_per_node}.sh
done
