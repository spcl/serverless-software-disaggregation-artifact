#!/usr/bin/env python3

import glob
import os
import re
import subprocess

BASE_PATH = os.path.abspath(os.path.join(os.getcwd(), os.pardir))

"""
    This checks the SARUS jobs to find out the frequency of errors related
    to missing usernames and system caches.
"""


def findfiles(path, regex):
    regObj = re.compile(regex)
    res = []
    for root, dirs, fnames in os.walk(path):
        for fname in fnames:
            if regObj.match(fname):
                res.append(os.path.join(root, fname))
    return res

def grep(filepath, regex):
    regObj = re.compile(regex)
    res = []
    with open(filepath) as f:
        for line in f:
            if regObj.match(line):
                res.append(line)
    return res

def search_errors(error, path):

    p = subprocess.Popen(f'grep -e "{error}" -nrw {path}', shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    files = set()
    for line in p.stdout.readlines():
        d = line.decode('utf-8').split(':')
        files.add(d[0])
        #q = subprocess.Popen('grep searchstring %s', line, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        #print(q.stdout.readlines())

    # all files
    p = subprocess.Popen(f'find {path} -name "*.err" | wc -l', shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    for line in p.stdout.readlines():
        all_runs = int(line.decode('utf-8'))

    print(f'Path {path}, errors {len(files)}, all files {all_runs}, fraction {len(files)/all_runs*100.0}')

path = os.path.join(BASE_PATH, 'data', 'colocation_cpu', 'daint_mc', 'milc_64')
search_errors('uid', path)
search_errors('getcwd', path)
path = os.path.join(BASE_PATH, 'data', 'colocation_cpu', 'daint_mc', 'lulesh_64')
search_errors('uid', path)
search_errors('getcwd', path)
#print(findfiles(os.path.join(BASE_PATH, 'data', 'colocation_cpu', 'daint_mc', 'milc_64'), r'.*'))

