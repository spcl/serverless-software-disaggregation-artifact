#!/bin/bash

mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ../rFaaS && cmake --build . -j4
