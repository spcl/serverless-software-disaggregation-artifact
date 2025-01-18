#!/usr/bin/python3

import glob
import os
import sys
import pandas as pd
import multiprocessing

def split(a, n):
    k, m = divmod(len(a), n)
    return (a[i * k + min(i, m):(i + 1) * k + min(i + 1, m)] for i in range(n))

def extract(x):
    #print(x)
    idle_cpus = int(x['CPUS(A/I/O/T)'].split('/')[1]) / 2
    max_cpus = int(x['CPUS(A/I/O/T)'].split('/')[3]) / 2
    free_mem = x['FREE_MEM']
    total_mem = x['MEMORY']

    return pd.Series([idle_cpus, max_cpus, free_mem, total_mem], index=['idle', 'max', 'free_mem', 'total_mem'])

def work(id_, files,out):
    print(f"Parse {len(files)} on {id_}, save to {out}")
    rows = []
    count = 0
    for f in files:
        #print(f)
        d = os.path.basename(f).split('_')
        #print(d)
        date = f"{d[3]}-{d[2]}-{d[1]} {d[4]}:{d[5]}:{d[6]}"
        #print(date)
        #print(f"Process {id_} {f}")
        try:
            data = pd.read_csv(f, delim_whitespace=True)
        except pd.errors.EmptyDataError:
            print(f"Skip empty {f}")
            continue

        if(data.empty):
            print(f"Skip {f}")
            continue
        #print(data.head(20))
        data.drop_duplicates(subset=['NODELIST'], inplace=True)
        #data.set_index(['NODELIST'], inplace=True)
        #print(data.head(20))

        idle_subset = data.loc[data['STATE'] == 'idle']
        #print(f"{id_} Idle nodes: {len(idle_subset)}")
        idle_data = idle_subset.apply(extract, axis=1)

        allocated_subset = data.loc[data['STATE'] == 'allocated']
        #print(f"{id_} Allocated nodes: {len(allocated_subset)}")
        alloc_data = allocated_subset.apply(extract, axis=1)
        #print(alloc_data.head(10))

        df = pd.concat([idle_data, alloc_data])
        #print(df.head())
        #print(alloc_data)
        #print(df)
        alloc_stat = alloc_data['idle'].sum() / df['max'].sum()
        idle_alloc_stat = idle_data['idle'].sum() / df['max'].sum()
        #print(alloc_data['free_mem'].sum(), idle_data['free_mem'].sum(), df['total_mem'].sum())
        mem_stat = alloc_data['free_mem'].sum() / df['total_mem'].sum()
        idle_mem_stat = idle_data['free_mem'].sum() / df['total_mem'].sum()
        #print(alloc_stat, mem_stat)

        other_subset = data.loc[(data['STATE'] != 'idle') & (data['STATE'] != 'allocated')]
        #print(f"{id_} Other nodes: {len(other_subset)}")
        #print(other_subset['STATE'].value_counts())
        rows.append([date, idle_alloc_stat, alloc_stat, mem_stat, idle_mem_stat, allocated_subset.shape[0], idle_subset.shape[0], other_subset.shape[0], data.shape[0]])
        count +=1

        if count % 100 == 0:
            print(f"Process {id_} finished {count} out of {len(files)}")
    df = pd.DataFrame(rows, columns = ['date', 'idle_cpus', 'partially_idle_cpus', 'partially_free_mem', 'free_mem', 'allocated_nodes', 'idle_nodes', 'other_nodes', 'total_nodes'])
    #print(df)
    #print(os.path.join(out, f"out_{id_}.csv"))
    df.to_csv(os.path.join(out, f"out_{id_}.csv"))


in_dir = sys.argv[1]
out = sys.argv[2]
processes = int(sys.argv[3])
files = list(glob.glob(os.path.join(in_dir, 'sinfo_*')))
files_processed = list(split(files, processes))
print(f"Process {len(files)} from {in_dir}, save result to {out}")
#files_processed)

with multiprocessing.Pool(processes=processes) as pool:
    results = pool.starmap(work, zip(range(processes), files_processed, [out]*processes))


