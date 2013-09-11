# Mathmo tests

## Notes on `problems.js`:

* Use `\DeclareMathOperator*` (or even a global stylesheet) rather then `{\rm artanh}` where appropriate.
* Fix `\,\mathrm{d}x` for integrals
* <strikethrough>Use an `align*` environment for Newton-Raphson (and possibly a `\phantom{-}` if we can manage it)</strikethrough>
* Give the `<ul>`'s used in the exercises their own class in CSS, then the formatting can be consistent and global. (And use a list in some of the answers where it isn’t already.)
* Fix `makeMatXforms`
* Add non-breaking spaces in the `3 DP.`
* Explore use of `\left(` and `\right)` delimiters.
