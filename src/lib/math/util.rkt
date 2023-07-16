#lang typed/racket

(require morg/math
         morg
         "core/function.rkt")

(provide make-fun
         const
         carrier/symb)

(define ((make-fun [f : MathTeX+Like]) . [xs : MathTeX+Like *])
  (fun-apply f (apply % xs)))

(define const
  ((macro-1 "mathord") . compose . ((macro-1 "textnormal") . compose . (macro-1 "textsf"))))

(define carrier/symb (const "Carrier"))
