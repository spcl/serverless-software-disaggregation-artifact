
import glob
import os

import pandas as pd

from enum import Enum
from pathlib import Path

BASE_PATH = os.path.abspath(os.path.join(os.getcwd(), os.pardir))

class BenchmarkType(Enum):
    BASELINE = 'baseline'
    COLOCATION_CPU = 'colocation_cpu'
    COLOCATION_GPU = 'colocation_gpu'
    COLOCATION_RMA = 'colocation_rma'
    FAAS_BENCHMARK = 'faas_benchmark'

class System(Enum):
    DAINT_MC = "daint_mc"
    DAINT_GPU = "daint_gpu"
    AULT = "ault"

class Benchmark(Enum):
    LULESH = 'lulesh'
    MILC = 'milc'
    NAS = 'nas'
    RODINIA = 'rodinia'

NAS_RANKS_MAPPING = {
	'bt' : {
        'A': 4,
        'W': 1
    },
    'cg': {
        'B': 8
    },
    'ep': {
        'B': 2
    },
    'lu': {
        'A': 4
    },
    'mg': {
        'A': 1,
        'W': 1
    }
}

def lines_that_start_with(string, fp):
    return [line for line in fp if line.startswith(string)]

def lines_that_contain(string, fp):
    return [line for line in fp if string in line]

def load_lulesh(path: Path, ranks: int):

    data = []

    for spread in [8,16,20,24,28,32]:
        
        for f in glob.glob(os.path.join(path, f'lulesh_{ranks}', f'{Benchmark.LULESH.value}_{spread}', 'lulesh_*.out')):

            with open(f, 'r') as fp:
                for line in lines_that_start_with("Elapsed time", fp):
                    size = int(f.split('_')[-2])
                    data.append([spread, size, float(line.split()[-2])])
                
    df = pd.DataFrame(data=data, columns=['ranks_per_node', 'size', 'time'])
    df['ranks'] = ranks
    return df

def load_nas(path: Path):

    data = []

    for p in [1,2,4,8]:

        for f in glob.glob(os.path.join(path, f'nas_sarus_{p}/*.out')):
            
            with open(f, 'r') as fp:
                for line in lines_that_contain("in seconds", fp):
                    size = f.split('_')[-2]
                    benchmark = f.split('_')[-3]
                    data.append([p, benchmark, size, float(line.split()[-1])])

    nas_container = pd.DataFrame(data=data, columns=['ranks', 'benchmark', 'size', 'time'])
    nas_container['type'] = nas_container.apply(lambda row: f"({row['benchmark'].upper()}, {row['size']})", axis=1)
    nas_container.sort_values(by=['type'], inplace=True)

    return nas_container

def load_baseline_data(system: System, benchmark: Benchmark, *args, **kwargs):

    if benchmark == Benchmark.LULESH:
        return load_lulesh(os.path.join(BASE_PATH, 'data', BenchmarkType.BASELINE.value, system.value), *args, **kwargs)
    elif benchmark == Benchmark.NAS:
        return load_nas(os.path.join(BASE_PATH, 'data', BenchmarkType.BASELINE.value, system.value), *args, **kwargs)
    else:
        raise RuntimeError()

def load_cpu_colocation_lulesh(path: Path, colocated_benchmark: Benchmark, ranks: int):

    if colocated_benchmark != Benchmark.NAS:
        raise RuntimeError()

    lulesh_data = []
    nas_data = []

    for dir in glob.glob(os.path.join(path, f'{Benchmark.LULESH.value}_{ranks}', '*')):

        name = os.path.basename(dir)
        app = name.split('_')[2]
        l_size = int(name.split('_')[1])
        bench_size = name.split('_')[3]

        for f in glob.glob(os.path.join(dir, 'lulesh_*.out')):

            with open(f, 'r') as fp:
                for line in lines_that_start_with("Elapsed time", fp):
                    size = int(f.split('_')[-2])
                    lulesh_data.append([l_size, bench_size, app, float(line.split()[-2])])				

        for f in glob.glob(os.path.join(BASE_PATH, f'{dir}/nas_*.out')):

            with open(f, 'r') as fp:
                for line in lines_that_contain("in seconds", fp):
                    nas_data.append([
                        ranks, l_size, bench_size,
                        app, NAS_RANKS_MAPPING[app][bench_size],
                        float(line.split()[-1])
                    ])

    colocated_lulesh = pd.DataFrame(data=lulesh_data, columns=['size', 'benchmark_size', 'benchmark', 'time'])
    colocated_lulesh['ranks'] = ranks

    colocated_nas = pd.DataFrame(data=nas_data, columns=['lulesh_ranks', 'lulesh_size', 'size', 'benchmark', 'ranks', 'time'])

    return colocated_lulesh, colocated_nas

def load_cpu_colocation_data(system: System, benchmark: Benchmark, colocated_benchmark: Benchmark, *args, **kwargs):

    if benchmark == Benchmark.LULESH:
        return load_cpu_colocation_lulesh(
            os.path.join(BASE_PATH, 'data', BenchmarkType.COLOCATION_CPU.value, system.value),
            colocated_benchmark,
            *args, **kwargs
        )
    else:
        raise RuntimeError()

def load_data(benchmark_type: BenchmarkType, system: System, benchmark: Benchmark, *args, **kwargs):

    benchmark_types = {

        BenchmarkType.BASELINE: load_baseline_data,
        BenchmarkType.COLOCATION_CPU: load_cpu_colocation_data

    }

    func = benchmark_types.get(benchmark_type, None)
    if func is not None:
        return func(system, benchmark, *args, **kwargs)
    else:
        raise RuntimeError()

