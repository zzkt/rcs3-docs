#lang scribble/manual
@(require (for-label racket))

@title{(fold2 a b)}


Bilateral folding.  folds a to +/- b.


@racketblock[
(audition
   (out 0 (fold2 (f-sin-osc ar 1000 0)
		 (line kr 0 1 8 do-nothing))))
]


