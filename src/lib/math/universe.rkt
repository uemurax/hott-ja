#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "core.rkt")

(provide universe:el
         universe:name
         universe:lift)

(define name-of
  (delimiter
   #:left tex:lceil
   #:right tex:rceil))

(define universe:el @const{El})
(define universe:name (name-of universe))
(define universe:lift @const{Lift})
