#lang typed/racket

(require "core.rkt")

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

(define id-extension (const "ext"))
(define id-extension-self (const "ext-self"))
(define id-sym (const "sym"))
(define id-trans (const "trans"))
(define id-sym-sym (const "sym-sym"))
(define id-assoc (const "assoc"))
(define id-unit-l (const "unit-l"))
(define id-unit-r (const "unit-r"))
(define fun-apply-id-comp  (const "ap-comp"))
(define fun-apply-id-inv (const "ap-inv"))
(define transport-comp (const "transport-comp"))
(define id-sym-inv-l (const "inv-l"))
(define id-sym-inv-r (const "inv-r"))
