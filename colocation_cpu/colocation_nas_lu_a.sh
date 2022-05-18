#!/bin/bash

NODE_FAAS=$1
EXPERIMENT=$2

./${EXPERIMENT}_experiment.sh "${NODE_FAAS}" "lu" "A" 2 2 4 "0 1 2 3 4 5 6 7 8 9"
