#lang typed/racket

(require "util.rkt")

(provide is-set)

(define is-set/symb (const "IsSet"))
(define is-set (make-fun is-set/symb))
