#lang typed/racket

(require morg/math
         "util.rkt")

(provide trunc
         trunc:in
         trunc:ind)

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

(define (trunc:ind/symb [n : MathTeX+Like] [A : MathTeX+Like])
  ((const "ind") . _ . (trunc n A)))

(define (trunc:ind [n : MathTeX+Like] [A : MathTeX+Like])
  (make-fun (trunc:ind/symb n A)))
