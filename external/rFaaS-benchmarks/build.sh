#!/bin/bash

docker build -f images/Dockerfile.opencv -t spcleth/hpc-disagg:rfaas-dependencies-opencv .
docker build -f images/Dockerfile.torchvision -t spcleth/hpc-disagg:rfaas-dependencies-torchvision-cpu .
docker build -f images/Dockerfile.image-recognition -t spcleth/hpc-disagg:rfaas-functions-image-recognition .
docker build -f images/Dockerfile.thumbnailer -t spcleth/hpc-disagg:rfaas-functions-thumbnailer .
