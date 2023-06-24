#lang typed/racket

(require "util.rkt")

(provide id-extension
         id-extension-self
         id-assoc
         id-unit-l
         id-unit-r
         fun-apply-id-comp
         fun-apply-id-inv
         transport-comp
         id-sym
         id-sym-sym
         id-sym-inv-l
         id-sym-inv-r
         id-trans)

(define id-extension/symb (const "ext"))
(define id-extension (make-fun id-extension/symb))
(define id-extension-self/symb (const "ext-self"))
(define id-extension-self (make-fun id-extension-self/symb))
(define id-sym (const "sym"))
(define id-trans (const "trans"))
(define id-sym-sym/symb (const "sym-sym"))
(define id-sym-sym (make-fun id-sym-sym/symb))
(define id-assoc/symb (const "assoc"))
(define id-assoc (make-fun id-assoc/symb))
(define id-unit-l/symb (const "unit-l"))
(define id-unit-r/symb (const "unit-r"))
(define id-unit-l (make-fun id-unit-l/symb))
(define id-unit-r (make-fun id-unit-r/symb))
(define fun-apply-id-comp/symb  (const "ap-comp"))
(define fun-apply-id-inv/symb (const "ap-inv"))
(define fun-apply-id-comp (make-fun fun-apply-id-comp/symb))
(define fun-apply-id-inv (make-fun fun-apply-id-inv/symb))
(define transport-comp/symb (const "transport-comp"))
(define transport-comp (make-fun transport-comp/symb))
(define id-sym-inv-l/symb (const "inv-l"))
(define id-sym-inv-r/symb (const "inv-r"))
(define id-sym-inv-l (make-fun id-sym-inv-l/symb))
(define id-sym-inv-r (make-fun id-sym-inv-r/symb))
