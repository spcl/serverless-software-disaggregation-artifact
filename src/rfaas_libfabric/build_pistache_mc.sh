#!/bin/bash

DESTINATION=$1

module switch daint-gpu daint-mc
module load daint-mc
module switch PrgEnv-cray PrgEnv-gnu

cd pistache
rm -rf build
if [ -z "$DESTINATION" ]; then
	meson setup build --buildtype=release -DPISTACHE_USE_SSL=true -DPISTACHE_BUILD_EXAMPLES=false -DPISTACHE_BUILD_TESTS=false -DPISTACHE_BUILD_DOCS=false --prefix="$PWD/../install-pistache-mc"
else
	meson setup build --buildtype=release -DPISTACHE_USE_SSL=true -DPISTACHE_BUILD_EXAMPLES=false -DPISTACHE_BUILD_TESTS=false -DPISTACHE_BUILD_DOCS=false --prefix="${DESTINATION}/install-pistache-mc"
fi
meson compile -C build
meson install -C build
