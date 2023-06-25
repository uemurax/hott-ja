#lang typed/racket

(require morg/math)

(provide trunc
         trunc:in)

(define (trunc [n : MathTeX+Like] [A : MathTeX+Like])
  ((group
    ((delimiter #:left (macro "|")
                #:right (macro "|"))
     A))
   . _ . n))

(define (trunc:in [n : MathTeX+Like] [a : MathTeX+Like])
  ((group
    ((delimiter #:left "|"
                #:right "|")
     a))
   . _ . n))
