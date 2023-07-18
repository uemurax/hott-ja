#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "util.rkt")

(provide empty-type
         empty-type:ind)

(define empty-type @tex:mathbf{0})

(define empty-type:ind/symb
  ((const "ind") . _ . empty-type))

(define empty-type:ind (make-fun empty-type:ind/symb))
