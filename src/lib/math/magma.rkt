#lang typed/racket

(require "util.rkt")

(provide magma
         magma:carrier
         magma:operator)

(define magma/symb (const "Magma"))
(define magma (make-fun magma/symb))
(define magma:carrier carrier/symb)
(define magma:operator (const "op"))
