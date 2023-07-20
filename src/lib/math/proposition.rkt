#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide is-prop
         prop-compr)

(define is-prop (const "IsProp"))

(define (prop-compr [A : MathTeX+Like] [P : MathTeX+Like])
  ((delimiter #:left tex:lbrace
              #:right tex:rbrace)
   A tex:mid P))
