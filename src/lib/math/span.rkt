#lang typed/racket

(require "core.rkt"
         morg/math
         "cocone.rkt")

(provide span
         span:left
         span:right
         span:center
         span:leg-l
         span:leg-r
         span-over
         (rename-out
          [span:left span-over:left]
          [span:right span-over:right]
          [span:center span-over:center]
          [span:leg-l span-over:leg-l]
          [span:leg-r span-over:leg-r])
         span/cocone:comparison
         span/cocone-is-universal
         span/cocone
         span/cocone:vertex
         span/cocone:in-left
         span/cocone:in-right
         span/cocone:in-center
         span/cocone:in-leg-l
         span/cocone:in-leg-r)

(define span (const "Span"))
(define span:left (const "Left"))
(define span:right (const "Right"))
(define span:center (const "Center"))
(define span:leg-l (const "leg-l"))
(define span:leg-r (const "leg-r"))

(define span/cocone cocone)
(define span/cocone:vertex cocone:vertex)
(define span/cocone:in-left (cocone:in . _ . span:left))
(define span/cocone:in-right (cocone:in . _ . span:right))
(define span/cocone:in-center (cocone:in . _ . span:center))
(define span/cocone:in-leg-l (cocone:in . _ . span:leg-l))
(define span/cocone:in-leg-r (cocone:in . _ . span:leg-r))

(define span/cocone:comparison (const "cmp"))
(define span/cocone-is-universal (const "IsUniversal"))

(define span-over (const "SpanOver"))
