# Serverless Software Disaggregation Artifact

We evaluate one microbenchmark and three different classes of experiments.

**Microbenchmarks** For these benchmarks, we use rFaaS from branch "libfabric-sarus", commit "a09ecb4716916484a925b2a5c34a08fc27828348".

**CPU co-location benchmark**:  We use the LULESH application as a classical batch job, using 64 MPI processes and various problem sizes. We deploy LULESH on 2 Piz Daint nodes, using 32 out of the 36 available cores. Then,  we run concurrently NAS benchmarks in the Sarus container on the remaining cores, using CPU binding of tasks. We run the NAS benchmarks with 1, 2, 4, and 8 MPI processes, spread equally across two nodes, and launch new executions as soon as the
previous ones finish. 

**GPU co-location benchmark**: We also run the GPU version of LULESH on three GPU nodes of the Piz Daint system using 27 ranks and 9 cores out of the 12 available on each node. Then, we run Rodinia GPU benchmarks in a Sarus container on the same node. The deployment follows the same logic as CPU co-location: invoke GPU applications until the batch job finishes.

**RMA function benchmark**: We run LULESH on one Ault node, using 27 out of 36 available cores since the benchmark configuration is restricted to cubic numbers and the remaining cores must stay idle. We deploy rFaaS with remote memory function in a Docker container, running on the same node. The rFaaS function allocates 1 GB of pinned memory available for RDMA operations. While running LULESH, we run the benchmark application on another node that executes periodic RDMA read and write operations.
For that benchmark, we use rFaaS version that is provided with the artifact repository.

For each benchmark, we evaluate the performance interference by measuring application slowdown when executed in co-location. For each experiment, we measure the median and standard deviation.

## Repository Contents

* `analysis` - Jupyter notebooks (see below for details).
* `baseline` - scripts used to generate baseline measurements for benchmarks used.
* `colocation_cpu`, `colocation_gpu`, `colocation_rma` - scripts used to generate co-location benchmarks.
* `data` - contains results used in the paper.
* `external` - contains benchmarks and build scripts for benchmarks used in the paper.
* `microbenchmarks` - contains scripts, data and analysis of rFaaS benchmarks.
* `src` - contains source code of rFaaS modifications and build scripts for rFaaS support of libfabric.

## Platforms

The experiments were conducted on two systems:
* Ault: Nodes each with two 18-core Intel Xeon619 Gold 6154 CPU @ 3.00GHz and 377 GB of memory. Nodes are equipped with Mellanox MT27800 Family NIC with a 100 Gb/s Single-Port link that is configured with RoCEv2 support. We measure a latency of 3.69 μs and a bandwidth of 11.69 GiB/s between nodes. We use Docker 20.10.5 with executor image ubuntu:20.04, and our software is implemented in C++, using g++ 10.2, and OpenMPI 4.1.
* Daint: We deploy CPU and GPU co-location jobs on the supercomputing system Piz Daint. The multi-core628 nodes have two 18-core Intel Xeon E5-2695 v4 @ 2.10GHz and 128 GB of memory. The GPU nodes have one 12-core Intel Xeon E5-2690 v3 @ 2.60GHz with 64 GB of memory, and an NVIDIA Tesla P100 GPU. All nodes are connected with the Cray Aries interconnect, and we implement a new backend in rFaaS with libfabrics to target the uGNI634
network communication library. We use Clang 12 and Cray MPICH. 

## Software

The following software should be available on the system:
* SLURM batch system.
* Sarus containers (CPU, GPU benchmarks).
* Docker containers (RMA benchmarks).

## Benchmarks

#### RMA Functions

The steps needed to run the benchmark are available in a seperate [README](colocation_rma/README.md).

#### GPU Functions

The steps needed to run the benchmark are available in a seperate [README](colocation_gpu/README.md).

#### CPU Functions

The steps needed to run the benchmark are available in a seperate [README](colocation_cpu/README.md).

## Analysis

In `analysis`, there are several Jupyter notebooks used to produce plots from the paper:

* `colocation_cpu.ipynb` - produces CPU co-location plots.

* `colocation_gpu.ipynb` - produces GPU co-location plots.

* `colocation_rma.ipynb` - produces RMA co-location plots.

* `daint_utilization.ipynb` - produces Piz Daint utilization plot.

* `metrics_utilization.ipynb` - produces cost comparison of system utilization.

* `quality_analysis.ipynb` - analyze produced data to verify that all repetitions are correct.


