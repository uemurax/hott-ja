#lang typed/racket

(require "util.rkt")

(provide qinv
         qinv:inv
         qinv:unit
         qinv:counit)

(define qinv/symb (const "QInv"))
(define qinv (make-fun qinv/symb))
(define qinv:inv (const "inv"))
(define qinv:unit (const "unit"))
(define qinv:counit (const "counit"))
