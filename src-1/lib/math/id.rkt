#lang typed/racket

(require "util.rkt")

(provide id-extension
         id-extension-self
         id-assoc
         id-sym
         id-sym-sym
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
