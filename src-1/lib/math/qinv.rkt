#lang typed/racket

(require "util.rkt")

(provide qinv)

(define qinv/symb (const "QInv"))
(define qinv (make-fun qinv/symb))
