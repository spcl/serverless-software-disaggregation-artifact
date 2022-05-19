#!/bin/bash

NODE_FAAS=$1
EXPERIMENT=$2

./${EXPERIMENT}_experiment.sh "${NODE_FAAS}" "pathfinder" 1 1 1 "0 1 2 3 4 5 6 7 8 9 10 11 12"

