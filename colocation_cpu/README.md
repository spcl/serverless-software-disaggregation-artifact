

Steps - baseline

1. Build MILC/LULESH batch benchmark by running `build_mc.sh` in `external/${benchmark}`.
Adjust the configuration and module loading to your environment.

2. In `baseline/daint_mc`, run `milc_generate.sh` script. This will generate
SLURM scripts executing the MILC benchmark on the system with 32 ranks per node.
To change this, edit the file to change the number of ranks per node.

3. Run `milc_submit.sh` to submit jobs.

Steps - prepare NAS

Download the Docker image by running

OR compile  by running `build_daint_mc.sh` in the directory.

Main NAS co_location

Submit jobs

alloate 2 nodes

Run the script for each benchmark.

