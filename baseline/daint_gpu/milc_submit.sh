#!/bin/bash

for ranks_per_node in 11; do
	sbatch -n 32 < slurm_milc_${ranks_per_node}.sh
done
