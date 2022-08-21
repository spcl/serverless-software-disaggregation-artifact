#!/usr/bin/env python3

import os

from data_loader import load_data, BenchmarkType, Benchmark, System


def check(df, groupby_args, expected_samples, cov):

    avg = df.groupby(groupby_args).mean().reset_index()
    dev = df.groupby(groupby_args).std().reset_index()
    count = df.groupby(groupby_args).count().reset_index()
    avg['cov_val'] = dev['time'] / avg['time'] * 100
    avg['samples'] = count['time']

    not_enough_samples = avg.loc[avg.samples < expected_samples]
    cov_to_high = avg.loc[avg.cov_val >= cov]

    correct = True
    if not not_enough_samples.empty:
        print("Error - not enough samples!")
        print(not_enough_samples)
        correct = False

    if not cov_to_high.empty:
        print("Error - CoV to high!")
        print(cov_to_high)
        correct = False

    if correct:
        print("OK")

def check_baseline_data():

    print("Baseline, Daint MC, LULESH", end='... ')
    lulesh_time = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.LULESH, ranks = 64, spread=32)
    # we ignore size = 10 -> we do not use it 
    normal_lulesh = lulesh_time.loc[(lulesh_time['ranks_per_node'] == 32) & lulesh_time.size > 10]
    check(normal_lulesh, ['size'], 20, 5.0)

    print("Baseline, Daint MC, NAS", end='... ')
    nas_container = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.NAS)
    check(nas_container, ['benchmark', 'size', 'ranks'], 15, 15.0)

    print("Baseline, Daint MC, MILC", end='... ')
    milc_data = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.MILC, ranks=64)
    check(milc_data, ['size'], 20, 5.0)

    print("Baseline, Ault, LULESH", end='... ')
    lulesh = load_data(BenchmarkType.BASELINE, System.AULT, Benchmark.LULESH, ranks = 27)
    check(lulesh, ['size'], 20, 5.0)

    print("Baseline, Ault, MILC", end='... ')
    milc = load_data(BenchmarkType.BASELINE, System.AULT, Benchmark.MILC, ranks = 32)
    check(milc, ['size'], 20, 5.0)

def check_cpu_colocated_data():

    for benchmark in [Benchmark.LULESH, Benchmark.MILC]:

        print(f"CPU Colocation, Daint MC, {benchmark.value}, NAS", end='... ')

        path, batch, nas = load_data(
            BenchmarkType.COLOCATION_CPU,
            System.DAINT_MC,
            benchmark,
            colocated_benchmark = Benchmark.NAS,
            ranks = 64,
            include_path = True
        )
        check(batch, ['size', 'colocated_benchmark', 'colocated_benchmark_size'], 20, 5.0)
        check(nas, ['size', 'benchmark', 'ranks', 'batch_benchmark_size'], 10, 15.0)

        # Remove data where the batch job did not finish correctly - SLURM issues.
        nas_mi = nas.set_index([
            'batch_benchmark_ranks', 'batch_benchmark_size',
            'batch_benchmark_repetition', 'benchmark', 'size'
        ])
        batch_mi = batch.set_index([
            'ranks', 'size', 'repetition',
            'colocated_benchmark', 'colocated_benchmark_size'
        ])

        for index, row in nas_mi[~nas_mi.index.isin(batch_mi.index)].iterrows():

            batch_size = index[1]
            batch_repetition = index[2]
            colocated_bench = index[3]
            colocated_size = index[4]

            batch_path = os.path.join(
                path,
                f'nas_{batch_size}_{colocated_bench}_{colocated_size}',
                f'{benchmark.value}_{batch_size}_{batch_repetition}'
            )
            for ext in ['.out', '.err']:

                if os.path.exists(batch_path + ext):
                    os.remove(batch_path + ext)

            if os.path.exists(row.path):
                os.remove(row.path)

        # Verify that all data for co-located benchmark has a correspondence to a batch job
        if nas_mi[~nas_mi.index.isin(batch_mi.index)].shape[0] > 0:
            print("Error! NAS data for repetitions with no batch information")
            print(nas_mi[~nas_mi.index.isin(batch_mi.index)])


    # FIXME: co-location with functions

    # FIXME: co-location with NAS

check_baseline_data()
print('----------')
check_cpu_colocated_data()

