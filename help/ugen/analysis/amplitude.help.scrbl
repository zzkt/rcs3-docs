#lang scribble/manual
@(require (for-label racket))

@title{(amplitude rate in attackTime releaseTime)}


Amplitude follower. Tracks the peak amplitude of a signal.


@racketblock[
(audition
 (out 0 (mul (pulse ar 90 0.3)
	     (amplitude kr (in 1 ar num-output-buses) 0.01 0.01))))
]


@racketblock[
(let* ((a (amplitude kr (in 1 ar num-output-buses) 0.01 0.01))
       (f (mul-add a 1200 400)))
  (audition (out 0 (mul (sin-osc ar f 0) 0.3))))
]

