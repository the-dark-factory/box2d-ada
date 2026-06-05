# box2d-ada

An Ada binding to [Box2D](https://box2d.org/) **v3** — Erin Catto's 2D physics
engine, rewritten in pure C for v3.0, which makes it a clean C-ABI binding target.

Alire crate: **`box2d_ada`**.

The thin binding is **generated** from Box2D's C headers with GNAT's
`-fdump-ada-spec`, then compiled against the real `libbox2d.a`. It covers the
full public API — **551 functions** across worlds, bodies, shapes, joints,
collision and maths.

This is a **binding**, not a verified component: a careful bridge to Box2D's C,
not a proof of it. (For provably-deterministic physics, that is a different,
forged engine — not this.)

## Build

Requires GNAT + GPRbuild (e.g. via [Alire](https://alire.ada.dev/)), plus
`cmake` and a C compiler to build Box2D itself.

```sh
./scripts/build-box2d.sh                 # vendor/box2d -> libbox2d.a (CMake)
gprbuild  -P box2d_ada.gpr               # the Ada binding (static library)
gprbuild  -P examples/smoke/smoke.gpr    # the smoke test
./examples/smoke/bin/smoke               # drop a box under gravity; it falls
```

On macOS the Alire-shipped gcc needs the Xcode SDK: the GPR's linker options
carry `-Wl,-syslibroot,…`, and the binding was generated with `-isysroot`.

## Layout

| Path | What |
|------|------|
| `src/box2d_*.ads` | **generated** thin binding (one package per Box2D header) |
| `src/*_h.ads` | the few C integer-type bindings the above reference |
| `vendor/box2d/` | vendored Box2D v3 source (MIT, © Erin Catto) |
| `scripts/build-box2d.sh` | builds `libbox2d.a` via CMake |
| `examples/smoke/` | falling-box smoke test |

The generated packages keep `-fdump-ada-spec`'s path-based names
(`box2d_box2d_h`, …); a nicer hand-written Ada layer over them is future work.

## Status

Early (v0.1). The full API is bound, and a dynamic box falls through the real
solver, matching free-fall to the integrator's error. A clean Ada-idiomatic
layer over the raw binding, and broader examples, are the next steps.

## License

The binding is MIT (© 2026 The Dark Factory Ltd). Box2D itself is MIT
(© Erin Catto), vendored under `vendor/box2d/`.
