# box2d-ada

An Ada binding to [Box2D](https://box2d.org/) **v3** — Erin Catto's 2D physics
engine, rewritten in pure C for v3.0, which makes it a clean C-ABI binding target.

Alire crate: **`df_box2d`**.

The thin binding is **generated** from Box2D's C headers with GNAT's
`-fdump-ada-spec`, then compiled against the real `libbox2d.a`. It covers the
full public API — **551 functions** across worlds, bodies, shapes, joints,
collision and maths.

This is a **binding**, not a verified component: a careful bridge to Box2D's C,
not a proof of it. (For provably-deterministic physics, that is a different,
forged engine — not this.)

## Build & test

Requires GNAT + GPRbuild (e.g. via [Alire](https://alire.ada.dev/)), plus
`cmake` and a C compiler to build Box2D itself.

```sh
./scripts/build-box2d.sh     # vendor/box2d -> libbox2d.a (CMake), once
alr build                    # compile the Ada binding (static library)
alr test                     # behavioural smoke: drop a box, confirm it falls
```

`alr test` builds the example against the real `libbox2d.a` and runs it; it
fails (non-zero exit) if the box does not fall. To drive the tools directly
instead of through Alire:

```sh
gprbuild -P df_box2d.gpr    # the binding
bash scripts/test.sh         # build + run the smoke test
```

On macOS the Alire-shipped gcc needs the Xcode SDK: the GPR's linker options
carry `-Wl,-syslibroot,…`, and the binding is generated with `-isysroot`.

## Regenerating the binding

`src/*.ads` is pure machine output — never hand-edited. To regenerate it from
the vendored headers (e.g. after bumping `vendor/box2d`):

```sh
./scripts/gen.sh
```

It runs `gcc -fdump-ada-spec` over `box2d/box2d.h`, then keeps exactly the
transitive `with`-closure reachable from the `box2d_*_h` packages — the six
Box2D headers plus the handful of stdint typedefs they actually name — and
drops the rest of the system-header spillover. On an unchanged `vendor/box2d`,
`git diff src/` after a run is empty; that is the recipe's correctness test.

## Layout

| Path | What |
|------|------|
| `src/box2d_*.ads` | **generated** thin binding (one package per Box2D header) |
| `src/*_h.ads` | the few C integer-type bindings the above reference |
| `vendor/box2d/` | vendored Box2D v3 source (MIT, © Erin Catto) |
| `scripts/gen.sh` | regenerates `src/*.ads` from the headers (deterministic) |
| `scripts/build-box2d.sh` | builds `libbox2d.a` via CMake |
| `scripts/test.sh` | behavioural smoke test (also wired as `alr test`) |
| `examples/smoke/` | falling-box smoke demo |

The generated packages keep `-fdump-ada-spec`'s path-based names
(`box2d_box2d_h`, …); a nicer hand-written Ada layer over them is future work.

## Status

Early (v0.1). The full API is bound, and a dynamic box falls through the real
solver, matching free-fall to the integrator's error. A clean Ada-idiomatic
layer over the raw binding, and broader examples, are the next steps.

## License

The binding is MIT (© 2026 The Dark Factory Ltd). Box2D itself is MIT
(© Erin Catto), vendored under `vendor/box2d/`.
