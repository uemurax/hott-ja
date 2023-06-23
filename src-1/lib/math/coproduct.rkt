#lang typed/racket

(require morg/math
         "util.rkt"
         "empty.rkt")

(provide coproduct-type
         coproduct-type:in/symb
         coproduct-type:in)

(define coproduct-type
  (monoid #:level '+ empty-type "+"))

(define (coproduct-type:in/symb [n : Natural])
  ((const "in") . _ . (number->string n)))

(define (coproduct-type:in [n : Natural])
  (make-fun (coproduct-type:in/symb n)))
