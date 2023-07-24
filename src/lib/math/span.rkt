#lang typed/racket

(require "core.rkt")

(provide span
         span:left
         span:right
         span:center
         span:leg-l
         span:leg-r)

(define span (const "Span"))
(define span:left (const "Left"))
(define span:right (const "Right"))
(define span:center (const "Center"))
(define span:leg-l (const "leg-l"))
(define span:leg-r (const "leg-r"))
