#lang typed/racket

(require "util.rkt")

(provide is-embedding)

(define is-embedding/symb (const "IsEmb"))
(define is-embedding (make-fun is-embedding/symb))
