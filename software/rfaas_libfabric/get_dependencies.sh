#!/bin/bash

git clone https://github.com/ofiwg/libfabric
cd libfabric
git checkout 38a9962767b948d0d9bf188049d4849b11721535
git apply --reject --ignore-space-change --whitespace=fix ../libfabric.patch
cd ..

git clone https://github.com/pistacheio/pistache.git

git clone git@github.com:spcl/rFaaS.git
cd rFaaS
git checkout libfabric
