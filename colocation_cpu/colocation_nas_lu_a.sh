#!/bin/bash

NODE_FAAS=$1
EXPERIMENT=$2

./${EXPERIMENT}_experiment.sh "${NODE_FAAS}" "lu" "A" 2 2 4 
