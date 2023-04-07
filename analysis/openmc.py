import json
import os
import re
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import seaborn as sns
import pandas as pd
import glob
import pandas as pd


import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from matplotlib import ticker
from scipy import stats
from matplotlib.ticker import FormatStrFormatter
import math

BASE_PATH = os.path.abspath(os.path.join(os.getcwd(), os.pardir))
workers = [1,2,4,8,16,32]


def lines_that_start_with(string, fp):
    return [line for line in fp if line.startswith(string)]

data_all_remote = []
data_half_remote = []
data_no_remote = []

#for f in glob.glob(os.path.join(BASE_PATH, f'data/baseline/ault/lulesh_27/lulesh_*.out')):

for f in glob.glob(os.path.join(BASE_PATH, f'data/faas_applications/openmc/particles-10000/all-remote/particles10000.*')):
    with open(f, 'r') as fp:
        for line in lines_that_start_with("total_compute ", fp):
            threads = f.split('.')[-2]
            threads = int(threads.replace( 'threads', ''))
            data_all_remote.append([threads, float(line.split()[-1])])
all_remote = pd.DataFrame(data=data_all_remote, columns=['threads', 'time'])


for f in glob.glob(os.path.join(BASE_PATH, f'data/faas_applications/openmc/particles-10000/half-remote/particles10000.*')):
    with open(f, 'r') as fp:
        for line in lines_that_start_with("total_compute ", fp):
            threads = f.split('.')[-2]
            threads = int(threads.replace( 'threads', ''))
            data_half_remote.append([threads, float(line.split()[-1])])
half_remote = pd.DataFrame(data=data_half_remote, columns=['threads', 'time'])

for f in glob.glob(os.path.join(BASE_PATH, f'data/faas_applications/openmc/particles-10000/no-remote/particles10000.*')):
    with open(f, 'r') as fp:
        for line in lines_that_start_with("total_compute ", fp):
            threads = f.split('.')[-2]
            threads = int(threads.replace( 'threads', ''))
            data_no_remote.append([threads, float(line.split()[-1])])
no_remote = pd.DataFrame(data=data_no_remote, columns=['threads', 'time'])

print(no_remote)


#sns.set(rc={'figure.figsize':(8,4)})
sns.set(rc={'figure.figsize':(8,3)})
sns.set_style("whitegrid")

def p50_estimator(x):
    return np.percentile(x, 50)
def p95_estimator(x):
    return np.percentile(x, 95)
def p99_estimator(x):
    return np.percentile(x, 99)

def bandwidth_function(x, p):
    # mebibytes/s
    #bw = 11464.333008
    bw = 11686.41
    # 2 - round-trip
    # x - number of workers
    # size - basic msg size
    return p*(size*size*24)/ (bw * 1024 * 1024) * 1000
xrange = list(range(200, 800))#[200,2,4,8,12,16,20,24,28,32,64]

omp  = no_remote.groupby(['threads']).mean() # times for no-remote
elastic = all_remote.groupby(['threads']).mean()

print("serial times:")
print(omp)

print("\n\n\n")
print("all_remote:")
print(elastic)



SERIAL = 906.8657902

print("serial:")
print(SERIAL)
# TODO is this needed? 
x = omp
x['time'] = SERIAL / x['time']

elastic2  = half_remote.groupby(['threads']).mean()

print("\n\n\n")
print("half_remote:")
print(elastic2)


x2 = elastic
x2['time']=  SERIAL /x2['time']#.reset_index()
#print(x2)
x3 = elastic2
x3['time'] = SERIAL / x3['time'] 
print("elastic:")
print(elastic)
print("omp:")
print(omp)

#print('omp/rfaas')
#print(omp/elastic)
#print(elastic2/omp)



fig, ax = plt.subplots()
#print(x['time'])


sns.lineplot(data=x['time'],#x="worker", y="time", data=x,
             ci=95, marker="o",
             label='d',
             #estimator=p50_estimator,
             color=sns.color_palette()[0],
             palette=sns.color_palette()[0],
             #data=x.loc[(x['workers']  == 32) | (x['workers']  == 16) | (x['workers']  == 64)],
             ax=ax)
sns.lineplot(data=x2['time'],#x="worker", y="time", data=x,
             ci=95, marker="o",
             label='s',
             #estimator=p50_estimator,
             color=sns.color_palette()[1],
             palette=sns.color_palette()[1],
             #data=x.loc[(x['workers']  == 32) | (x['workers']  == 16) | (x['workers']  == 64)],
             ax=ax)
sns.lineplot(data=x3['time'],
             ci=95, marker="o",
             #estimator=p50_estimator,
             color=sns.color_palette()[2],
             palette=sns.color_palette()[2],
             label='r',
             #data=x2,
             #data=x.loc[(x['workers']  == 32) | (x['workers']  == 16) | (x['workers']  == 64)],
             ax=ax)

ax.annotate('OpenMP time 38.3s\nrFaaS time 47.8s', xy=(32, 18), xytext=(20,5),fontsize=15,#fontweight='bold',
#ax.annotate('rFaaS on par with\nOpenMP', xy=(32, 16), xytext=(20,5),fontsize=15,#fontweight='bold',
ha="left", va="center",
arrowprops=dict(facecolor='black', shrink=0.05, width=2),
)
ax.annotate('OpenMP + rFaaS 23.3s', xy=(32, 39), xytext=(13,35),fontsize=15,#fontweight='bold',
#ax.annotate('rFaaS on par with\nOpenMP', xy=(32, 16), xytext=(20,5),fontsize=15,#fontweight='bold',
ha="left", va="center",
arrowprops=dict(facecolor='black', shrink=0.05, width=2),
)

ax.annotate('Serial time 906.9s', xytext=(6,25), xy=(1, 3),fontsize=15,#fontweight='bold',
ha="center", va="center",
arrowprops=dict(facecolor='black', shrink=0.05, width=2),
)

ax.xaxis.set_major_formatter(ticker.ScalarFormatter(useMathText=True))
ax.xaxis.set_major_formatter(FormatStrFormatter('%d'))
ax.set_xticks([1, 4, 8, 12, 16, 20,24,28,32])
#ax.set_xlabel('Parallelism',fontsize=16)
#ax.set_ylabel(r'Speedup $\frac{parallel}{serial}$',fontsize=16,labelpad=10)
#ax[0].yaxis.set_label_position("right")
#ax.set_ylabel('Speedup',fontsize=16)

ax.set_xlabel('Parallelism',fontsize=16)
ax.set_ylabel(r'Speedup $\frac{parallel}{serial}$',fontsize=16,labelpad=10)

ax.tick_params(axis='x', labelsize=14)
ax.tick_params(axis='y', labelsize=14)
#ax[1].set_yscale('log')
#ax[0].set_xlim([])
#ax[1].set_xlim([400, 800])
#ax[1].yaxis.set_label_position("right")
ax.yaxis.tick_right()
#ax[0].set_ylim([1, 2.4])
#ax2.set_ylim([0,1200])

handles, labels = ax.get_legend_handles_labels()
print(handles, labels)
#print(handles,labels)
ax.legend(handles[0:3], ['OpenMP', 'rFaaS', 'OpenMP + rFaaS'],ncol=3, bbox_to_anchor=(1.0, -0.5),# ncol=3, 
             loc='lower right', fontsize=14)
#ax[0].legend().set_visible(False)
fig.savefig("openmc_speedup.pdf",bbox_inches='tight',pad_inches = 0, transparent=False)
plt.show()


