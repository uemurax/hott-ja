#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide trunc-level
         trunc-level:-2
         trunc-level:-1
         trunc-level:0
         is-trunc
         is-trunc-map
         trunc-type
         trunc-type:type
         trunc-type:is-trunc
         trunc-level:succ)

(define trunc-level (const "TruncLevel"))
(define trunc-level:-2 "-2")
(define trunc-level:-1 "-1")
(define trunc-level:0 "0")
(define trunc-level:succ (const "succ"))

(define is-trunc (const "IsTrunc"))

(define is-trunc-map (const "IsTruncMap"))

(define (trunc-type [n : MathTeX+Like])
  (tex:mathord tex:langle n tex:rangle
               (const "-Type")))
(define trunc-type:type (const "Type"))
(define trunc-type:is-trunc (const "is-trunc"))
