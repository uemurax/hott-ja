#lang typed/racket

(require "core.rkt")

(provide magma
         magma:carrier
         magma:operator)

(define magma (const "Magma"))
(define magma:carrier (const "Carrier"))
(define magma:operator (const "op"))
