#!/bin/bash

lulesh_p=64
NODE_FAAS=$1

./lulesh_experiment2.sh "${NODE_FAAS}" "cg" "B" 4 2 8
