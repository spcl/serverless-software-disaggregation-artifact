#!/usr/bin/python3

import glob
import os
import sys
from tqdm import tqdm
import pandas as pd
import numpy as np
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

def work(files, out):

    dfs = []
    count = 0

    idle_nodes = pd.DataFrame([], columns = ['NODELIST', 'queries_idle', 'duration_idle', 'prev_query_len', 'next_query_len'])
    #idle_nodes.set_index('NODELIST')
    #print(idle_nodes)

    prev_date = None
    no_longer_idle = None

    for idx, f in enumerate(tqdm(files)):

        try:
            data = pd.read_csv(f, delim_whitespace=True)
        except pd.errors.EmptyDataError:
            print(f"Skip empty {f}")
            continue

        d = os.path.basename(f).split('_')
        date = f"{d[3]}-{d[2]}-{d[1]} {d[4]}:{d[5]}:{d[6]}"
        np_date = np.datetime64(date)
        if prev_date != None:
            query_len = (np_date - prev_date).item().total_seconds()
        else:
            query_len = 0

        # first process rows to be finished - set the following query length
        #if no_longer_idle is not None and no_longer_idle.shape[0] > 0:
        #    no_longer_idle['next_query_len'] = query_len
        #    dfs.append(no_longer_idle)

        if(data.empty):
            print(f"Skip {f}")
            continue
        data.drop_duplicates(subset=['NODELIST'], inplace=True)

        idle_subset = data.loc[data['STATE'] == 'idle']
        #idle_subset.set_index('NODELIST')

        #print(f)
        #print('IDLE', idle_subset)
        no_longer_idle = idle_nodes.merge(idle_subset['NODELIST'], on='NODELIST', how='left', indicator=True)
        no_longer_idle = no_longer_idle.loc[no_longer_idle['_merge'] == 'left_only']
        no_longer_idle.drop('_merge', axis=1, inplace=True)
        #print('NO LONGER IDLE', no_longer_idle)

        # merge the new idle nodes with existing idle nodes
        # old nodes have our columns defined and just need an addition
        # new nodes have NaNs and require a proper a initialization
        still_idle = idle_subset.merge(idle_nodes, on='NODELIST', how='left', suffixes = ('', '_y'))
        still_idle.drop(still_idle.filter(regex='_y$').columns, axis=1, inplace=True)
        #print('STILL IDLE', still_idle)
      
        # add the duration between queries for 'old' nodes - the node was idle
        still_idle.loc[still_idle['duration_idle'].notnull(), 'duration_idle'] += query_len
        # set the preceding query length for 'new' nodes
        still_idle['prev_query_len'].fillna(query_len, inplace=True)
        # for 'new' nodes, zero the other columns
        still_idle.fillna(0, inplace=True)
        # increment queries idle for each one of them
        still_idle['queries_idle'] += 1

        if no_longer_idle is not None and no_longer_idle.shape[0] > 0:
            no_longer_idle['next_query_len'] = query_len
            dfs.append(no_longer_idle)

        # ignore nodes idle from the beginning
        #if idx > 0:
        idle_nodes = still_idle
        prev_date = np_date

    # finish the leftovers
    still_idle['next_query_len'] = 0
    dfs.append(still_idle)
    #if no_longer_idle is not None and no_longer_idle.shape[0] > 0:
    #    no_longer_idle['next_query_len'] = 0
    #    dfs.append(no_longer_idle)

    # ignore the remaining idle samples - we do not have for long they will remain idle.

    df = pd.concat(dfs, axis=0).reset_index(drop=True)

    df['idle_cpus'] = df['CPUS(A/I/O/T)'].str.split('/').str[1].astype(int) / 2
    df['max_cpus'] = df['CPUS(A/I/O/T)'].str.split('/').str[3].astype(int) / 2
    df.drop(['CPUS(A/I/O/T)'], axis=1, inplace=True)

    #print(df)
    #print(os.path.join(out, f"out_{id_}.csv"))
    df.to_csv(os.path.join(out, f"out.csv"))


in_dir = sys.argv[1]
out = sys.argv[2]
files = list(glob.glob(os.path.join(in_dir, 'sinfo_*')))
files.sort()
print(f"Process {len(files)} from {in_dir}, save result to {out}")

work(files, out)

