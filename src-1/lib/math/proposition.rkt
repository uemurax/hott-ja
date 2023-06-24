#lang typed/racket

(require morg/math
         "util.rkt")

(provide is-prop
         prop-compr)

(define is-prop/symb (const "IsProp"))
(define is-prop (make-fun is-prop/symb))

(define (prop-compr [A : MathTeX+Like] [P : MathTeX+Like])
  ((delimiter #:left (macro "lbrace")
              #:right (macro "rbrace"))
   A (macro "mid") P))
