#!/bin/bash

export RFAAS_BUILD=/scratch/snx3000/mcopik/serverless_disaggregation/rfaas/build_rfaas_libfabric_new_release
srun -l -N1 -n1 --exclusive=user --oversubscribe -w nid01270 ${RFAAS_BUILD}/bin/resource_manager -c config/res_manager.json --device-database devices/nid01270.json --input-database config/executors_database_nid01257.json -v >res.out 2>&1 &
res_mgr=$!
sleep 10
PATH=${RFAAS_BUILD}/bin:$PATH srun -l -N1 -n1 --exclusive=user --oversubscribe -w nid01271 ${RFAAS_BUILD}/bin/executor_manager -c config/executor_manager.json --device-database devices/nid01271.json -v >exec_mgr.out 2>&1 &
exec_mgr=$!
sleep 30

tail res.out
tail exec_mgr.out

for ranks in 24 32; do

	echo $ranks
	jq --argjson threads $ranks '.benchmark.threads=$threads' <config/benchmark.json >config/benchmark_$ranks.json
	mkdir -p $ranks
	pushd $ranks

	srun -l -N1 -n1 --exclusive=user --oversubscribe -w nid01272 ${RFAAS_BUILD}/benchmarks/app_benchmark -c ../config/benchmark_$ranks.json --device-database ../devices/nid01272.json --name empty --functions ${RFAAS_BUILD}/examples/libfunctions.so -v -s 1024 --output-stats results >client.out 2>&1

	mv ../executor_* .

	popd

done

kill -15 ${exec_mgr}
kill -15 ${res_mgr}
