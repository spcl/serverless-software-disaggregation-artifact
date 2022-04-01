#!/bin/bash

for p in 1 2 4 8; do
	sbatch -n $p < slurm_nas_${p}_sarus.full.sh
done
