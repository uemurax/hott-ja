#lang typed/racket

(require "util.rkt")

(provide is-hae:coh
         is-hae)

(define is-hae:coh (const "coh"))

(define is-hae/symb (const "IsHAE"))
(define is-hae (make-fun is-hae/symb))
