#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc
module switch PrgEnv-cray PrgEnv-gnu

meson setup build --buildtype=release -DPISTACHE_USE_SSL=true -DPISTACHE_BUILD_EXAMPLES=false -DPISTACHE_BUILD_TESTS=false -DPISTACHE_BUILD_DOCS=false --prefix="$PWD/../install-pistache-mc"
meson compile -C build
meson install -C build

