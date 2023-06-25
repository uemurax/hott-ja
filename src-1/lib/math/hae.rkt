#lang typed/racket

(require "util.rkt")

(provide is-hae:coh
         is-hae:inv
         is-hae:unit
         is-hae:counit
         is-hae)

(define is-hae:coh (const "coh"))

(define is-hae/symb (const "IsHAE"))
(define is-hae (make-fun is-hae/symb))
(define is-hae:inv (const "inv"))
(define is-hae:unit (const "unit"))
(define is-hae:counit (const "counit"))
