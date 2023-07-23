#lang typed/racket

(require "core.rkt")

(provide ring-str
         ring:carrier
         ring:zero
         ring:plus
         ring:minus
         ring:mul
         ring:one
         ring-axiom
         ring)

(define ring-str (const "RingStr"))
(define ring:carrier (const "Carrier"))
(define ring:zero (const "zero"))
(define ring:plus (const "plus"))
(define ring:minus (const "neg"))
(define ring:mul (const "mul"))
(define ring:one (const "one"))
(define ring-axiom (const "RingAxiom"))
(define ring (const "Ring"))
