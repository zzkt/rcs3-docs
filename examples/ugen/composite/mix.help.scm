;; (mix UGen)

;; Force multiple channel expansion and sum signals.

(let ((f (make-mce (list 600.2 622.0 641.3 677.7))))
  (audition (out 0 (mul (mix (f-sin-osc ar f 0)) 0.1))))

;; Expansion nests.

(let ((l (f-sin-osc ar (mce2 100  500) 0))
      (r (f-sin-osc ar (mce2 5000 501) 0)))
  (audition (out 0 (mul 0.05 (mix (mce2 l r))))))
