#!/usr/bin/env python3

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
    lulesh_time = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.LULESH, ranks = 64)
    # we ignore size = 10 -> we do not use it 
    normal_lulesh = lulesh_time.loc[(lulesh_time['ranks_per_node'] == 32) & lulesh_time.size > 10]
    check(normal_lulesh, ['size'], 20, 5.0)

    print("Baseline, Daint MC, NAS", end='... ')
    nas_container = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.NAS)
    check(nas_container, ['benchmark', 'size', 'ranks'], 15, 15.0)

    print("Baseline, Daint MC, MILC", end='... ')
    milc_data = load_data(BenchmarkType.BASELINE, System.DAINT_MC, Benchmark.MILC, ranks=64)
    #print(milc_data)
    check(milc_data, ['size'], 20, 15.0)

def check_cpu_colocated_data():

    print("CPU Colocation, Daint MC, LULESH, NAS", end='... ')
    lulesh, nas = load_data(BenchmarkType.COLOCATION_CPU, System.DAINT_MC, Benchmark.LULESH, colocated_benchmark = Benchmark.NAS, ranks = 64)
    check(lulesh, ['size', 'colocated_benchmark', 'colocated_benchmark_size'], 10, 5.0)
    check(nas, ['size', 'benchmark', 'ranks', 'batch_benchmark_size'], 10, 15.0)

    print("CPU Colocation, Daint MC, MILC, NAS", end='... ')
    lulesh, nas = load_data(BenchmarkType.COLOCATION_CPU, System.DAINT_MC, Benchmark.MILC, colocated_benchmark = Benchmark.NAS, ranks = 64)
    check(lulesh, ['size', 'colocated_benchmark', 'colocated_benchmark_size'], 10, 5.0)
    check(nas, ['size', 'benchmark', 'ranks', 'batch_benchmark_size'], 10, 15.0)

check_baseline_data()
print('----------')
check_cpu_colocated_data()

