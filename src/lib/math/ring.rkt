#lang typed/racket

(require "util.rkt")

(provide ring-str
         ring:carrier
         ring:zero
         ring:plus
         ring:minus
         ring:mul
         ring:one
         ring-axiom
         ring)

(define ring-str/symb (const "RingStr"))
(define ring-str (make-fun ring-str/symb))
(define ring:carrier (const "Carrier"))
(define ring:zero (const "zero"))
(define ring:plus (const "plus"))
(define ring:minus (const "neg"))
(define ring:mul (const "mul"))
(define ring:one (const "one"))
(define ring-axiom/symb (const "RingAxiom"))
(define ring-axiom (make-fun ring-axiom/symb))
(define ring/symb (const "Ring"))
(define ring (make-fun ring/symb))
