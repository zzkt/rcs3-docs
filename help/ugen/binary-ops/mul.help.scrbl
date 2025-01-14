#lang scribble/manual
@(require (for-label racket))

@title{(mul a b)}


multiplication, written '*' in sclang.


@racketblock[
(audition
 (out 0 (mul (sin-osc ar 440 0) 0.5)))
]

Creates a beating effect (subaudio rate).


@racketblock[
(audition
 (out 0 (mul3 (f-sin-osc kr 10 0) 
	      (pink-noise ar)
	      0.5)))
]

Ring modulation.


@racketblock[
(audition
 (out 0 (mul3 (sin-osc ar (x-line kr 100 1001 10 do-nothing) 0)
	      (sync-saw ar 100 200)
	      0.25)))
]


