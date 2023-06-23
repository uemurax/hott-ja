#lang at-exp typed/racket

(require morg/math
         "util.rkt")

(provide empty-type
         empty-type:ind)

(define mathbf (macro-1 "mathbf"))

(define empty-type @mathbf{0})

(define empty-type:ind/symb
  ((const "ind") . _ . empty-type))

(define empty-type:ind (make-fun empty-type:ind/symb))
