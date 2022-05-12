#!/bin/bash

for ranks_per_node in 32 28 24 20 16 8; do
	sbatch -n 64 < slurm_lulesh_${ranks_per_node}.sh
done
