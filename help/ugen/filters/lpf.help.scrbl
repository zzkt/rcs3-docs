#lang scribble/manual
@(require (for-label racket))

@title{(lpf in freq)}


Second order Butterworth lowpass filter.


@racketblock[
(audition
 (let ((f (x-line kr 0.7 300 20 remove-synth)))
   (out 0 (lpf (mul (saw ar 200) 0.1)
	       (mul-add (f-sin-osc kr f 0) 3600 4000)))))
]


