#lang typed/racket

(require morg/math
         morg
         (prefix-in tex: morg/math/tex)
         "core/function.rkt")

(provide make-fun
         const
         carrier/symb)

(define ((make-fun [f : MathTeX+Like]) . [xs : MathTeX+Like *])
  (fun-apply f (apply % xs)))

(define const
  (tex:mathord . compose . (tex:textnormal . compose . tex:textsf)))

(define carrier/symb (const "Carrier"))
