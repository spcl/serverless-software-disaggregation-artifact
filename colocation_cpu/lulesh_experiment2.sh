#!/bin/bash

lulesh_p=64
NODE_FAAS=$1
experiment_name=$2
experiment_size=$3
experiment_cores=$4
experiment_nodes=$5
experiment_tasks=$6

DATA_DIR=/scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/data/colocation_cpu_precision
cd ${DATA_DIR}

if [[ "$experiment_cores" == "4" ]]
then
	mask="map_cpu:16,17,34,35,verbose"
elif [[ "$experiment_cores" == "2" ]]
then 
	mask="map_cpu:16,34,verbose"
else
	mask="map_cpu:16,verbose"
fi

echo "Running benchmark ${experiment_name} with size ${experiment_size}, on ${experiment_nodes}, on each on using ${experiment_cores} cores. CPU Mask: ${mask}"

for rep in 0 1 2 3 4 5; do
#for rep in 6 7 8 9; do
	for size in 15 18 20 25; do

		echo "Start $size, repetition $rep"
		mkdir -p nas_${size}_${experiment_name}_${experiment_size}
		pushd nas_${size}_${experiment_name}_${experiment_size}

		OMP_NUM_THREADS=1 nohup srun --cpu-bind=verbose  --ntasks-per-core=1 --hint=nomultithread  --exclusive=user --oversubscribe --cpu-bind=verbose -e lulesh_${size}_${rep}.err -o lulesh_${size}_${rep}.out -N 2 -n ${lulesh_p} /usr/bin/time --append --output-file=lulesh_${size}.times /scratch/snx3000/mcopik/serverless_hpc/serverless-software-disaggregation-artifact/external/build_lulesh/lulesh2.0 -s ${size} > lulesh_${size}_${rep}.srun &
		PID=$!
		CUR=0
		while test -d /proc/"$PID"/; do

			OMP_NUM_THREADS=1 srun -n ${experiment_tasks} -N ${experiment_nodes} --nodelist=${NODE_FAAS} --oversubscribe --cpu-bind=${mask} --ntasks-per-core=1 --hint=nomultithread  --exclusive=user -e nas_${size}_${rep}.${CUR}.err -o nas_${size}_${rep}.${CUR}.out sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas  /usr/bin/time --append --output-file=${DATA_DIR}/nas_${size}_${experiment_name}_${experiment_size}/${size}.${rep}.times /opt/NPB3.4-MPI/bin/${experiment_name}.${experiment_size}.x

			CUR=$((CUR + 1))
			echo "Done $CUR"
		done
		wait $PID
		echo "Done $CUR repetitions"
		popd
	done
done


