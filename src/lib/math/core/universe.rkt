#lang at-exp typed/racket

(require morg/math
         "../util.rkt")

(provide universe
         universe/symb)

(define universe/symb
  ((macro-1 "mathcal") "U"))

(define universe (make-fun universe/symb))
