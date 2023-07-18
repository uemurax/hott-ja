#lang at-exp typed/racket

(require (prefix-in tex: morg/math/tex)
         "../util.rkt")

(provide universe
         universe/symb)

(define universe/symb
  @tex:mathcal{U})

(define universe (make-fun universe/symb))
