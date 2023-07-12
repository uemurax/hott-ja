#lang typed/racket

(require "util.rkt")

(provide level:zero
         level:succ)

(define level:zero "0")
(define level:succ/symb (const "succ"))
(define level:succ (make-fun level:succ/symb))
