#lang typed/racket

(require "util.rkt")

(provide is-prop)

(define is-prop/symb (const "IsProp"))
(define is-prop (make-fun is-prop/symb))
