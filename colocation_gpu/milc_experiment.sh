#!/bin/bash

milc_ranks=32
NODE_FAAS=$1
app=$2
experiment_cores=$3
experiment_nodes=$4
experiment_tasks=$5
REPS=$6

ARTIFACT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../
DATA_DIR=${ARTIFACT_DIR}/data/colocation_gpu/milc
MILC_DIR=${ARTIFACT_DIR}/external/MILC/milc_qcd-7.8.1-mc/ks_imp_dyn
MILC_INPUT_DIR=${ARTIFACT_DIR}/external/MILC/input_scripts
cd ${DATA_DIR}

mask=map_cpu:11,verbose

echo "Running benchmark ${experiment_name} with size ${experiment_size}, on ${experiment_nodes}, on each on using ${experiment_cores} cores. CPU Mask: ${mask}"

module load sarus

for rep in $REPS; do
  for size in 32 64 96 128; do

		echo "Start $size, repetition $rep"
		mkdir -p rodinia_${size}_${app}
		pushd rodinia_${size}_${app}

		OMP_NUM_THREADS=1 nohup srun\
      --cpu-bind=verbose  --ntasks-per-core=1 --hint=nomultithread\
      --exclusive=user --oversubscribe --gpus=0 --cpu-bind=verbose\
      -e milc_${size}_${rep}.err -o milc_${size}_${rep}.out -N 3 -n ${milc_ranks}\
      /usr/bin/time --append --output-file=milc_${size}.times\
      ${MILC_DIR}/su3_rmd ${MILC_INPUT_DIR}/milc.p${milc_ranks}.size${size}.in &

		PID=$!
		CUR=0
		while test -d /proc/"$PID"/; do
			OMP_NUM_THREADS=1 srun -n ${experiment_tasks} -N ${experiment_nodes} --nodelist=${NODE_FAAS} --oversubscribe --cpu-bind=${mask} --ntasks-per-core=1 --hint=nomultithread  --exclusive=user -e ${app}_${size}_${rep}.${CUR}.err -o ${app}_${size}_${rep}.${CUR}.out sarus run --mount=type=bind,source=$SCRATCH,destination=$SCRATCH spcleth/hpc-disagg:rodinia-${app} /rodinia/run_timed.sh

			CUR=$((CUR + 1))
			echo "Done $CUR"
		done
		wait $PID
		echo "Done $CUR repetitions"
		popd

	done
done


