
Launchin the FaaS remote memory benchmark. In this benchmark, we deploy rFaaS executor on a cluster node. On the same node, we're going to submit LULESH as a traditional batch job.
Then, on a second node, we execute a client benchmark that allocates and uses the remote memory funtion.

This benchmark has been tested and evaluated on systems with SLURM, node sharing enabled, and an interconnect with RoCE support.
Since the implementation is using `ibverbs`, it should also work on InfiniBand networks.

## Preparation

1. Build extended rFaaS with remote memory functions by running `build.sh` in `src/remote_memory`.
To configure rFaaS dependencies, please inspect the README of the package. It should be sufficient to set `PKG_CONFIG_PATH` environment variable to point to installation directories of `pistache`, `rdmacm`, and `ibverbs`.

2. Build LULESH from sources in `external/LULESH`.

## Preparing rFaaS executor.

1. SSH to the node where you're going to deploy the co-located batch job and remote memory function.

2. Verify that Docker is running correctly on the system.

3. Create a copy of `devices.json`, and change in it the IP address of the network interface used for communication.

4. Start the rFaaS executor with `<rfaas-build-dir>/bin/executor_manager --config exec_manager.json --device-database devices_copy.json  --skip-resource-manager`.

## Preparing the client.

1. SSH to the second node.

2. Create a copy of `devices.json`, and change in it the IP address of the network interface used for communication.

3. In the `exec_db.json`, change the executor address to the address of rFaaS executor obtained in the previous part.

4. Start the rFaaS benchmark with `<rfaas-build-dir>/benchmarks/rma --config benchmark.json --device-database devices_copy.json --name empty --functions examples/libfunctions2.so --executors-database exec_db.json -s 1024 --read_size <size> --rdma_type <rdma-type> --pause <pause> --rma_address <executor-ip-address>`

5. To repeat results from the paper, change `<size>`, `<pause>`, and `<rdma-type>` to use read and write operations of different size, launched with different pause between consecutive invocations.

## Launch the batch job

1. In `slurm_lulesh_27.sh`, change `nodelist` to use the node hosting co-located rFaaS executor and LULESH.

2. Launch the co-located LULESH `sbatch < slurm_lulesh_27.sh`.

3. Stop the client benchmark.


