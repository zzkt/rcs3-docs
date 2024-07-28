#lang scribble/manual
@(require (for-label racket))

@title{(clip in lo hi)}


clip `in' to lie between `lo' and `hi', which are i-rate inputs.


@racketblock[
(audition (out 0 (clip (mul (sin-osc ar 440 0) 0.4) -0.25 0.25)))
]


