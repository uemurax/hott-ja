#lang typed/racket

(require "util.rkt")

(provide is-biinv)

(define is-biinv/symb (const "IsBiinv"))
(define is-biinv (make-fun is-biinv/symb))
