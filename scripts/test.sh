#!/usr/bin/env bash
#
# test.sh — behavioural smoke test for the box2d-ada binding.
#
# Runnable by hand (`bash scripts/test.sh`) or via `alr test` (wired as a test
# action in alire.toml). A thin C binding isn't unit-tested per subprogram —
# its imports are just the C ABI — so the meaningful test is behavioural: build
# against the real libbox2d.a, drop a dynamic box under gravity, and confirm it
# falls through the actual solver. examples/smoke/smoke.adb sets a non-zero exit
# status if it doesn't; this script propagates that.
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

# 1. Ensure the C library is built (idempotent — only builds if missing).
if [ ! -f vendor/box2d/build/src/libbox2d.a ]; then
  echo ">> libbox2d.a missing — building via scripts/build-box2d.sh"
  bash scripts/build-box2d.sh
fi

# 2. Build the smoke example. Use gprbuild directly when it's on PATH (e.g.
#    inside an `alr` action), else fall back to `alr exec` for a bare shell.
echo ">> building smoke example"
if command -v gprbuild >/dev/null 2>&1; then
  gprbuild -q -P examples/smoke/smoke.gpr
else
  alr exec -- gprbuild -q -P examples/smoke/smoke.gpr
fi

# 3. Run it; smoke.adb exits non-zero if the box did not fall.
echo ">> running smoke"
./examples/smoke/bin/smoke

echo ">> PASS — binding links and the box fell through the real Box2D solver"
