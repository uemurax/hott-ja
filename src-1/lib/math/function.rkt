#lang typed/racket

(require "util.rkt")

(provide swap)

(define swap/symb (const "swap"))
(define swap (make-fun swap/symb))
