#lang typed/racket

(require morg/math
         "core/function.rkt"
         "util.rkt")

(provide trunc-level
         trunc-level:-2
         trunc-level:-1
         trunc-level:0
         is-trunc
         trunc-type
         trunc-type:type
         trunc-type:is-trunc
         trunc-level:succ)

(define trunc-level (const "TruncLevel"))
(define trunc-level:-2 "-2")
(define trunc-level:-1 "-1")
(define trunc-level:0 "0")
(define trunc-level:succ/symb (const "succ"))
(define trunc-level:succ (make-fun trunc-level:succ/symb))

(define is-trunc/symb (const "IsTrunc"))
(define is-trunc (make-fun is-trunc/symb))

(define mathord (macro-1 "mathord"))
(define (trunc-type/symb [n : MathTeX+Like])
  (mathord (macro "langle") n (macro "rangle")
           (const "-Type")))
(define (trunc-type [n : MathTeX+Like] [i : MathTeX+Like])
  ((trunc-type/symb n) . fun-apply . i))
(define trunc-type:type (const "Type"))
(define trunc-type:is-trunc (const "is-trunc"))
