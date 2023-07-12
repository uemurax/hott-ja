#lang typed/racket

(require morg/math
         "util.rkt"
         "core/universe.rkt")

(provide pointed-type
         pointed-type:carrier
         pointed-type:point)

(define pointed-type/symb
  (universe/symb . _ . (macro "bullet")))
(define pointed-type (make-fun pointed-type/symb))
(define pointed-type:carrier carrier/symb)
(define pointed-type:point (const "point"))
