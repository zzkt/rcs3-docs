#lang scribble/manual
@(require (for-label racket))

@title{(peak trig reset)}


outputs the maximum value read at the `trig' input until `reset' is
triggered.


@racketblock[
(let* ((p (peak (dust ar 20) (impulse ar 0.4 0)))
       (f (mul-add p 500 200)))
  (audition (out 0 (mul (sin-osc ar f 0) 0.2))))
]


