#lang typed/racket

(require "core.rkt")

(provide group-str
         group:carrier
         group:unit
         group:mul
         group:inv
         group-axiom
         group)

(define group-str (const "GroupStr"))
(define group:carrier (const "Carrier"))
(define group:unit (const "unit"))
(define group:mul (const "mul"))
(define group:inv (const "inv"))
(define group-axiom (const "GroupAxiom"))
(define group (const "Group"))
