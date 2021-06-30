# headlens-optics

An exploration of the idea of using optics to work with
[heads](https://hackage.haskell.org/package/base-4.15.0.0/docs/Prelude.html#v:head).

This library is a continuation of the work done in
[headlens](https://github.com/gregorias/headlens). This time, I use
[optics](https://hackage.haskell.org/package/optics) to test out an affine
traversals.

In the end, I believe I've constructed a valid affine traversal,
`AffineTraversal' [a] a`, that traverses over the head if present.  I've used
[lens-properties](https://hackage.haskell.org/package/lens-properties) to test
that it is indeed a valid traversal.
