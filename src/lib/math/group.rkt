#lang typed/racket

(require "util.rkt")

(provide group-str
         group:carrier
         group:unit
         group:mul
         group:inv
         group-axiom
         group)

(define group-str/symb (const "GroupStr"))
(define group-str (make-fun group-str/symb))
(define group:carrier (const "Carrier"))
(define group:unit (const "unit"))
(define group:mul (const "mul"))
(define group:inv (const "inv"))
(define group-axiom/symb (const "GroupAxiom"))
(define group-axiom (make-fun group-axiom/symb))
(define group/symb (const "Group"))
(define group (make-fun group/symb))
