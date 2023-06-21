#lang typed/racket

(require "util.rkt")

(provide ua)

(define ua/symb (const "ua"))
(define ua (make-fun ua/symb))
