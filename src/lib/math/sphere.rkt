#lang typed/racket

(require morg/math)

(provide sphere/symb
         sphere)

(define sphere/symb
  ((macro-1 "mathbb") "S"))

(define (sphere [n : MathTeX+Like])
  (sphere/symb . ^ . n))
