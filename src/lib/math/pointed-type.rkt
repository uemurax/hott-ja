#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide pointed-type
         pointed-type:carrier
         pointed-type:point)

(define pointed-type (universe . _ . tex:bullet))
(define pointed-type:carrier (const "Carrier"))
(define pointed-type:point (const "point"))
