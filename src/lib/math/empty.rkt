#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide empty-type
         empty-type:ind)

(define empty-type @tex:mathbf{0})

(define empty-type:ind (ind/symb . _ . empty-type))
