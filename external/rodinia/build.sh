#!/bin/bash

for app in "bfs" "gaussian" "hotspot" "myocyte" "pathfinder" "srad_v1"; do
  docker build -t mcopik/disagg:rodinia-${app} . -f Dockerfile.rodinia.${app}
done

