#lang typed/racket

(require morg/math
         (prefix-in l: "paren-level.rkt")
         "core.rkt")

(provide id-type-over
         fun-apply-id/d)

(define (id-type-over [A : MathTeX+Like] [p : MathTeX+Like])
  (binary #:level l:relation
          (sub-sup id-type/symb #:^ A #:_ p)))

(define fun-apply-id/d (const "apd"))
