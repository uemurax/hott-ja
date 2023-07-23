#lang typed/racket

(require "core.rkt")

(provide level:zero
         level:succ)

(define level:zero "0")
(define level:succ (const "succ"))
