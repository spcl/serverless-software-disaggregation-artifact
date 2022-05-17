#!/bin/bash

NODE_FAAS=$1
EXPERIMENT=$2

./${EXPERIMENT}_experiment.sh "${NODE_FAAS}" "mg" "W" 1 1 1 
