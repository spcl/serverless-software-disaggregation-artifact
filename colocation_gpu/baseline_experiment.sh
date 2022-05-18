#!/bin/bash

FAASNODE=$1

DATA_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/data/baseline_gpu
mkdir -p ${DATA_DIR}
cd ${DATA_DIR}

#if [[ "$experiment_cores" == "4" ]]
#then
#	mask="map_cpu:16,17,34,35,verbose"
#elif [[ "$experiment_cores" == "2" ]]
#then 
#	mask="map_cpu:16,34,verbose"
#else
#	mask="map_cpu:16,verbose"
#fi

#mask=map_cpu:11,verbose

echo "Running benchmark ${experiment_name} with size ${experiment_size}, on ${experiment_nodes}, on each on using ${experiment_cores} cores. CPU Mask: ${mask}"

#for rep in 0 1 2 3 4 5; do
END=100
for app in "bfs" "hotspot" "gaussian" "myocyte" "pathfinder" "srad-v1"; do
	mkdir -p ${app}
	cd ${app}
	for rep in $(seq 1 $END); do

		echo "Start $app, repetition $rep"
		srun -n 1 -N 1 --nodelist=${FAASNODE} --ntasks-per-core=1 --hint=nomultithread  --exclusive=user -e ${rep}.err -o ${rep}.out sarus run --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:rodinia-${app} /rodinia/run_timed.sh

	done
	popd
done


