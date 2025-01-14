#lang racket
;; status - working as of 20220820

(require rsc3)

;; trkl (rd)

(define trkl
  (lambda (d ul fu dy la fy)
    (let* ((tf (x-line kr 1 ul d remove-synth))
           (st (impulse ar (mul tf 8) 0))
           (t  (impulse ar tf 0))
           (a  (db-amp (line kr 12 la d remove-synth)))
           (f  (x-line kr fu 900 d remove-synth))
           (p  (line kr (rand -1 1) (rand -1 1) d remove-synth))
           (fh (t-rand 1.75 2.25 t)))
      (pan2 (add (mix (ringz (decay2 t 0.01 dy) (mce2 f (mul f fh)) fy))
                 (mix (mul3 (saw ar (mce2 f (mul f fh)))
                            (decay2 t 0.1 (t-rand 0.05 1.0 t))
                            (t-exp-rand 0.001 0.25 st))))
            p a))))

(audition
 (out 0 (trkl (rand 0.5 16)
              (rand 16 64)
              (rand 1200 9000)
              (rand 0.005 0.175)
              (rand -60 -25)
              (rand 0.015 0.125))))
