#lang scribble/manual
@(require (for-label racket))

@title{(leak-dc in coef)}


Remove DC.  This filter removes a DC offset from a signal.

in   - input signal
coef - leak coefficient


@racketblock[
(let ((a (mul (lf-pulse ar 800 0.5 0.5) 0.1)))
  (audition (out 0 (mce2 a (leak-dc a 0.995)))))
]


