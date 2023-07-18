#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "util.rkt")

(provide is-prop
         prop-compr)

(define is-prop/symb (const "IsProp"))
(define is-prop (make-fun is-prop/symb))

(define (prop-compr [A : MathTeX+Like] [P : MathTeX+Like])
  ((delimiter #:left tex:lbrace
              #:right tex:rbrace)
   A tex:mid P))
