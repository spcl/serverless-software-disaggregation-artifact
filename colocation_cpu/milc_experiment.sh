#!/bin/bash

milc_ranks=64
NODE_FAAS=$1
experiment_name=$2
experiment_size=$3
experiment_cores=$4
experiment_nodes=$5
experiment_tasks=$6
REPS=$7

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../
DATA_DIR=${ARTIFACT_DIR}/data/colocation_cpu_precision/milc
MILC_DIR=${ARTIFACT_DIR}/external/MILC/milc_qcd-7.8.1-mc/ks_imp_dyn
MILC_INPUT_DIR=${ARTIFACT_DIR}/external/MILC/input_scripts
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

module load sarus

#for rep in 0 1 2 3 4 5 6 7 8 9; do
for rep in $REPS; do
  for size in 32 64 96 128; do

		echo "Start $size, repetition $rep"
		mkdir -p nas_${size}_${experiment_name}_${experiment_size}
		pushd nas_${size}_${experiment_name}_${experiment_size}

		OMP_NUM_THREADS=1 nohup srun --cpu-bind=verbose  --ntasks-per-core=1 --hint=nomultithread  --exclusive=user --oversubscribe --cpu-bind=verbose -e milc_${size}_${rep}.err -o milc_${size}_${rep}.out -N 2 -n ${milc_ranks} /usr/bin/time --append --output-file=../milc_${size}.times ${MILC_DIR}/su3_rmd ${MILC_INPUT_DIR}/milc.p${milc_ranks}.size${size}.in &
    echo "Submitted MILC, starting SARUS jobs"
    
		PID=$!
		CUR=0
		while test -d /proc/"$PID"/; do

			echo "Start $CUR"
			OMP_NUM_THREADS=1 srun -n ${experiment_tasks} -N ${experiment_nodes} --nodelist=${NODE_FAAS} --oversubscribe --cpu-bind=${mask} --ntasks-per-core=1 --hint=nomultithread  --exclusive=user -e nas_${size}_${rep}.${CUR}.err -o nas_${size}_${rep}.${CUR}.out sarus run --mpi --mount=type=bind,source=$SCRATCH,destination=$SCRATCH load/mcopik/disagg:nas  /usr/bin/time --append --output-file=${DATA_DIR}/nas_${size}_${experiment_name}_${experiment_size}/${size}.${rep}.times /opt/NPB3.4-MPI/bin/${experiment_name}.${experiment_size}.x

			CUR=$((CUR + 1))
			echo "Done $CUR"
		done
		wait $PID
		echo "Done $CUR repetitions"
		popd
	done
done


