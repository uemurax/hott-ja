#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide trunc
         trunc:in
         trunc:ind)

(define (trunc [n : MathTeX+Like] [A : MathTeX+Like])
  ((group
    ((delimiter #:left tex:\|
                #:right tex:\|)
     A))
   . _ . n))

(define (trunc:in [n : MathTeX+Like] [a : MathTeX+Like])
  ((group
    ((delimiter #:left "|"
                #:right "|")
     a))
   . _ . n))

(define (trunc:ind [n : MathTeX+Like] [A : MathTeX+Like])
  (ind/symb . _ . (trunc n A)))
