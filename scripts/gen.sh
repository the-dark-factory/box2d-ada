#!/usr/bin/env bash
#
# gen.sh — regenerate the Box2D v3 Ada binding (src/*.ads) from the vendored
# C headers, deterministically, with no hand-editing.
#
# How it works:
#   1. `gcc -fdump-ada-spec` (GNAT's gcc) over vendor/box2d/include/box2d/box2d.h
#      emits one Ada spec per C header in the include closure — the six
#      box2d_*_h.ads plus a spray of system-header specs (stdint, math, pthread
#      types, the stdint typedef chain, …).
#   2. We keep exactly the transitive `with`-closure reachable from the
#      box2d_*_h packages and drop the rest. The kept system specs are only the
#      stdint typedefs the binding actually names; everything else is spillover.
#
# The output is pure machine output: re-running this after bumping vendor/box2d
# reproduces src/ with no manual steps. `git diff src/` after a run on an
# unchanged vendor/ is empty — that is the recipe's correctness test.
#
# This is the reference shape for the *_ada binding family: vendored C source +
# scripts/build-<lib>.sh (compile the C lib) + scripts/gen.sh (this).
#
# Requirements: GNAT's gcc (Alire `gnat_native`); on macOS the Xcode/CLT SDK
# (located via xcrun); on Linux the system libc headers. Override the compiler
# with GCC=/path/to/gcc if it is not at ~/.alire/bin/gcc or on PATH.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
inc="$repo_root/vendor/box2d/include"
umbrella="$inc/box2d/box2d.h"
[ -f "$umbrella" ] || { echo "error: $umbrella not found — is vendor/box2d populated?" >&2; exit 1; }

# GNAT's gcc understands -fdump-ada-spec; Apple clang does not.
gcc_bin="${GCC:-}"
if [ -z "$gcc_bin" ]; then
  if [ -x "$HOME/.alire/bin/gcc" ]; then gcc_bin="$HOME/.alire/bin/gcc"; else gcc_bin="gcc"; fi
fi

# macOS needs the SDK sysroot so <stdint.h> & co. resolve; Linux cc finds them.
sysroot_flag=()
if sdk="$(xcrun --show-sdk-path 2>/dev/null)" && [ -n "$sdk" ]; then
  sysroot_flag=(-isysroot "$sdk")
fi

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

echo ">> fdump-ada-spec over box2d.h  (gcc: $gcc_bin)"
# -c compiles the header as a TU; the lone '#pragma once in main file' warning
# is benign. fdump still emits the specs even when gcc returns non-zero.
( cd "$work" && "$gcc_bin" -c -fdump-ada-spec -I "$inc" "${sysroot_flag[@]}" "$umbrella" ) 2>/dev/null || true

cd "$work"
compgen -G "box2d_*_h.ads" >/dev/null || { echo "error: fdump produced no box2d_*_h.ads" >&2; exit 1; }

# Transitive with-closure from the box2d_*_h roots. Follow `with X;` only to
# generated specs present here (lowercase, single-unit names); runtime units
# (Interfaces.C, System, …) have dots or no local file and drop out naturally.
keep=()
for f in box2d_*_h.ads; do keep+=("$f"); done
in_keep() { local x="$1" k; for k in "${keep[@]}"; do [ "$k" = "$x" ] && return 0; done; return 1; }

changed=1
while [ "$changed" = 1 ]; do
  changed=0
  for f in "${keep[@]}"; do
    while IFS= read -r cand; do
      [ -n "$cand" ] || continue
      if [ -f "$cand" ] && ! in_keep "$cand"; then keep+=("$cand"); changed=1; fi
    done < <(awk 'tolower($1)=="with"{w=$2; sub(/;.*/,"",w); print tolower(w)".ads"}' "$f")
  done
done

dest="$repo_root/src"
mkdir -p "$dest"
rm -f "$dest"/*.ads
for f in "${keep[@]}"; do cp "$f" "$dest/"; done

all_n=$(ls -1 *.ads | wc -l | tr -d ' ')
echo ">> kept ${#keep[@]} of $all_n generated specs (pruned $((all_n - ${#keep[@]})) system-closure spillovers):"
printf '%s\n' "${keep[@]}" | sort | sed 's/^/   /'
