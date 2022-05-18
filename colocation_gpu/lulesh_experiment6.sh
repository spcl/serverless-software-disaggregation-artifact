#!/bin/bash

lulesh_p=27
NODE_FAAS=$1
app=$2
experiment_cores=$3
experiment_nodes=$4
experiment_tasks=$5

DATA_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/data/colocation_gpu
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

mask=map_cpu:11,verbose

echo "Running benchmark ${experiment_name} with size ${experiment_size}, on ${experiment_nodes}, on each on using ${experiment_cores} cores. CPU Mask: ${mask}"

#for rep in 0 1 2 3 4 5; do
for rep in 1 2 10 11 12 13 14; do
	for size in 15 18 20 25; do

		echo "Start $size, repetition $rep"
		mkdir -p nas_${size}_${app}
		pushd nas_${size}_${app}

		OMP_NUM_THREADS=1 nohup srun --cpu-bind=verbose  --ntasks-per-core=1 --hint=nomultithread  --exclusive=user --oversubscribe --gpus=0 --cpu-bind=verbose -e lulesh_${size}_${rep}.err -o lulesh_${size}_${rep}.out -N 3 -n ${lulesh_p} /usr/bin/time --append --output-file=lulesh_${size}.times /scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/external/build_lulesh/lulesh2.0 -s ${size} > lulesh_${size}_${rep}.srun &
		PID=$!
		CUR=0
		while test -d /proc/"$PID"/; do

			OMP_NUM_THREADS=1 srun -n ${experiment_tasks} -N ${experiment_nodes} --nodelist=${NODE_FAAS} --oversubscribe --cpu-bind=${mask} --ntasks-per-core=1 --hint=nomultithread  --exclusive=user -e ${app}_${size}_${rep}.${CUR}.err -o ${app}_${size}_${rep}.${CUR}.out sarus run --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:rodinia-${app} /rodinia/run_timed.sh

			CUR=$((CUR + 1))
			echo "Done $CUR"
		done
		wait $PID
		echo "Done $CUR repetitions"
		popd
	done
done


