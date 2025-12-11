#!/usr/bin/bash

set -e

PARALLEL_JOBS=$(nproc)
DEBUG_CXX_FLAGS=
CMAKE_OPTIONS=

mkdir -p build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -B build -S .
cmake --build build --target particle_sim -- -j $(PARALLEL_JOBS)
