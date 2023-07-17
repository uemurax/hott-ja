#lang typed/racket

(require morg/math
         (prefix-in l: "paren-level.rkt")
         "util.rkt"
         "empty.rkt")

(provide coproduct-type
         coproduct-type:ind
         coproduct-type:in/symb
         coproduct-type:in)

(define coproduct-type/symb "+")

(define coproduct-type
  (monoid #:level l:+ empty-type coproduct-type/symb))

(define (coproduct-type:in/symb [n : Natural])
  ((const "in") . _ . (number->string n)))

(define (coproduct-type:in [n : Natural])
  (make-fun (coproduct-type:in/symb n)))

(define coproduct-type:ind/symb
  ((const "ind") . _ . coproduct-type/symb))

(define coproduct-type:ind (make-fun coproduct-type:ind/symb))
