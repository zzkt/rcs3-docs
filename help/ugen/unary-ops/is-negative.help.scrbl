#lang scribble/manual
@(require (for-label racket))

@title{(is-negative a)}


Predicate to determine if a value is negative.


@racketblock[
(define (is-negative a)
  (lt a 0.0))
]


@racketblock[
(let* ((a (line ar -1 1 1 remove-synth))
       (b (is-negative a))
       (f (mul-add (mce2 a b) 600 900)))
  (audition 
   (out 0 (mul (sin-osc ar f 0) 0.1))))
]


