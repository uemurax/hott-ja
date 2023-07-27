#lang typed/racket

(require morg/math
         (prefix-in l: "paren-level.rkt")
         "core.rkt"
         "empty.rkt")

(provide coproduct-type
         coproduct-type/symb
         coproduct-type:ind
         coproduct-type:in)

(define coproduct-type/symb "+")

(define coproduct-type
  (monoid #:level l:+ empty-type coproduct-type/symb))

(define (coproduct-type:in [n : Natural])
  ((const "in") . _ . (number->string n)))

(define coproduct-type:ind (ind/symb . _ . coproduct-type/symb))
