#lang scribble/manual
@(require (for-label racket))

@title{(fos in a0 a1 b1)}


First order filter section.

Same as one-pole.


@racketblock[
(let ((x (mul (lf-tri ar 0.4 0) 0.99))
      (i (mul (lf-saw ar 200 0) 0.2)))
  (audition (out 0 (fos i (sub 1 (u:abs x)) 0 x))))
]

Same as one-zero


@racketblock[
(let ((x (mul (lf-tri ar 0.4 0) 0.99))
      (i (mul (lf-saw ar 200 0) 0.2)))
  (audition (out 0 (fos i (sub 1 (u:abs x)) x 0))))
]


