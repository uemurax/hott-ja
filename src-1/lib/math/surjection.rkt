#lang typed/racket

(require "util.rkt")

(provide is-surjective)

(define is-surjective/symb (const "IsSurj"))
(define is-surjective (make-fun is-surjective/symb))
