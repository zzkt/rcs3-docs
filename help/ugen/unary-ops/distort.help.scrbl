#lang scribble/manual
@(require (for-label racket))

@title{(distort a)}


Nonlinear distortion.


@racketblock[
(audition 
   (out 0 (mul (distort (mul (f-sin-osc ar 500 0.0)
			     (x-line kr 0.1 10 10 do-nothing)))
	       0.25)))
]


