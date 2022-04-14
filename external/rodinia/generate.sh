#!/bin/bash

for app in "bfs" "gaussian" "hotspot" "myocyte" "pathfinder" "srad_v1"; do
  APP=${app}  envsubst '${APP}' < Dockerfile.rodinia > Dockerfile.rodinia.${app}
done

