#lang at-exp typed/racket

(require morg/math
         "util.rkt"
         "core/universe.rkt")

(provide universe:el/symb
         universe:el
         universe:name
         universe:lift/symb
         universe:lift)

(define name-of
  (delimiter
   #:left (macro "lceil")
   #:right (macro "rceil")))

(define universe:el/symb @const{El})
(define universe:el (make-fun universe:el/symb))
(define universe:name (make-fun (name-of universe/symb)))
(define universe:lift/symb @const{Lift})
(define universe:lift (make-fun universe:lift/symb))
