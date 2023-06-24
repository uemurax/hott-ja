#lang typed/racket

(require "util.rkt")

(provide trunc-level
         trunc-level:-2
         trunc-level:-1
         trunc-level:0
         trunc-level:succ)

(define trunc-level (const "TruncLevel"))
(define trunc-level:-2 "-2")
(define trunc-level:-1 "-1")
(define trunc-level:0 "0")
(define trunc-level:succ/symb (const "succ"))
(define trunc-level:succ (make-fun trunc-level:succ/symb))
