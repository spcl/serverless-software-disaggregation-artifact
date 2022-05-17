#!/bin/bash

NODE_FAAS=$1
EXPERIMENT=$2

./${EXPERIMENT}_experiment.sh "${NODE_FAAS}" "ep" "B" 1 2 2
