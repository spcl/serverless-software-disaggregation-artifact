#!/bin/bash

for ranks_per_node in 32; do
	sbatch -n 64 < slurm_milc_${ranks_per_node}.sh
done
