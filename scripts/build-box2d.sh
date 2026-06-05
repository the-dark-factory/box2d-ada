#!/usr/bin/env bash
# Build Box2D v3 (vendor/box2d) into a static library via CMake:
#   vendor/box2d/build/src/libbox2d.a
#
# Box2D v3 is pure C with no external deps once samples are off, so
# this is a plain configure + build. Run once before `alr build`.
# Requires cmake and a C compiler.

set -euo pipefail
cd "$(dirname "$0")/.."

SRC="vendor/box2d"
BUILD="$SRC/build"

cmake -S "$SRC" -B "$BUILD" -DCMAKE_BUILD_TYPE=Release \
  -DBOX2D_SAMPLES=OFF -DBOX2D_UNIT_TESTS=OFF -DBOX2D_BENCHMARKS=OFF -DBOX2D_DOCS=OFF

cmake --build "$BUILD" -j"$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 4)"

echo
echo "Done: $BUILD/src/libbox2d.a"
echo "Linker:  -L$BUILD/src -lbox2d"
