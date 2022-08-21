
import glob
import os

import pandas as pd

from enum import Enum
from pathlib import Path
from typing import Optional

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

def load_lulesh(path: Path):

    data = []

    for f in glob.glob(os.path.join(path, 'lulesh_*.out')):

        with open(f, 'r') as fp:
            for line in lines_that_start_with("Elapsed time", fp):

                # format: lulesh_{size}_{rep}.out 
                run_ids = f.split('_')
                size = int(run_ids[-2])
                repetition = int(run_ids[-1].split('.')[0])
                data.append([size, repetition, float(line.split()[-2])])

    return data

def load_milc(path: Path, include_path: bool = False):

    data = []

    for f in glob.glob(os.path.join(path, 'milc_*.out')):

        with open(f, 'r') as fp:
            for line in lines_that_start_with("Elapsed total time", fp):

                # format: milc_{size}_{rep}.out 
                run_ids = f.split('_')
                size = int(run_ids[-2])
                repetition = int(run_ids[-1].split('.')[0])
                
                time = float(line.split()[-1])

                d = [size, repetition, time]
                if include_path:
                    d.append(f)
                data.append(d)

    return data

def load_baseline_lulesh(path: Path, ranks: int, spread: Optional[int] = None):

    data = []

    if spread is not None:
        path = os.path.join(path, f'lulesh_{ranks}', f'{Benchmark.LULESH.value}_{spread}')
    else:
        path = os.path.join(path, f'lulesh_{ranks}')

    d = load_lulesh(path)
    df = pd.DataFrame(data=d, columns=['size', 'repetition', 'time'])
    df['ranks_per_node'] = spread
    df['ranks'] = ranks

    return df

def load_baseline_nas(path: Path):

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

def load_baseline_milc(path: Path, ranks: int, spread: Optional[int] = None):

    if spread is not None:
        path = os.path.join(path, f'{Benchmark.MILC.value}_{ranks}', f'{Benchmark.MILC.value}_{spread}')
    else:
        path = os.path.join(path, f'{Benchmark.MILC.value}_{ranks}')
    data = load_milc(path)
    df = pd.DataFrame(data=data, columns=['size', 'repetition', 'time'])
    df['ranks'] = ranks
    df['ranks_per_node'] = spread

    return df

def load_baseline_data(system: System, benchmark: Benchmark, *args, **kwargs):

    if benchmark == Benchmark.LULESH:
        df = load_baseline_lulesh(os.path.join(BASE_PATH, 'data', BenchmarkType.BASELINE.value, system.value), *args, **kwargs)
    elif benchmark == Benchmark.NAS:
        df = load_baseline_nas(os.path.join(BASE_PATH, 'data', BenchmarkType.BASELINE.value, system.value), *args, **kwargs)
    elif benchmark == Benchmark.MILC:
        df = load_baseline_milc(os.path.join(BASE_PATH, 'data', BenchmarkType.BASELINE.value, system.value), *args, **kwargs)
    else:
        raise RuntimeError()

    df['system'] = system.value
    df['type'] = BenchmarkType.BASELINE.value
    df['application'] = benchmark.value

    return df

def load_cpu_colocation_nas(path: Path, benchmark: Benchmark, ranks: int, include_path: bool = False):

    if benchmark not in [Benchmark.LULESH, Benchmark.MILC]:
        raise RuntimeError()

    data = []
    nas_data = []

    for dir in glob.glob(os.path.join(path, f'{benchmark.value}_{ranks}', '*')):

        # The format of main directory is the same for all types of main benchmark
        name = os.path.basename(dir)
        app = name.split('_')[2]
        l_size = int(name.split('_')[1])
        bench_size = name.split('_')[3]

        if benchmark == Benchmark.LULESH:
            df = pd.DataFrame(
                data=load_lulesh(dir),
                columns=['size', 'repetition', 'time']
            )
        elif benchmark == Benchmark.MILC:
            df = pd.DataFrame(
                data=load_milc(dir),
                columns=['size', 'repetition', 'time']
            )
        else:
            raise RuntimeError()
        df['colocated_benchmark'] = app
        df['colocated_benchmark_size'] = bench_size
        data.append(df)


        # Load NAS results

        for f in glob.glob(os.path.join(BASE_PATH, f'{dir}/nas_*.out')):

            with open(f, 'r') as fp:
                for line in lines_that_contain("in seconds", fp):
 
                    # format: milc_{size}_{rep}.out 
                    nas_file = os.path.basename(f).split('_')
                    repetition = int(nas_file[-1].split('.')[0])
                    colocated_repetition = int(nas_file[-1].split('.')[1])

                    nas_data.append([
                        ranks, l_size, repetition,
                        str(bench_size), str(app), NAS_RANKS_MAPPING[app][bench_size],
                        colocated_repetition,
                        float(line.split()[-1]),
                        f
                    ])

    batch_app = pd.concat(data)
    batch_app['ranks'] = ranks

    colocated_nas = pd.DataFrame(
        data=nas_data,
        columns=[
            'batch_benchmark_ranks',
            'batch_benchmark_size',
            'batch_benchmark_repetition',
            'size',
            'benchmark',
            'ranks',
            'repetition',
            'time',
            'path'
        ]
    )

    return os.path.join(path, f'{benchmark.value}_{ranks}'), batch_app, colocated_nas

def load_cpu_colocation_data(system: System, benchmark: Benchmark, colocated_benchmark: Benchmark, *args, **kwargs):

    if colocated_benchmark == Benchmark.NAS:
        return load_cpu_colocation_nas(
            os.path.join(BASE_PATH, 'data', BenchmarkType.COLOCATION_CPU.value, system.value),
            benchmark,
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

