#lang typed/racket

(require "core.rkt")

(provide qinv
         qinv:inv
         qinv:unit
         qinv:counit)

(define qinv (const "QInv"))
(define qinv:inv (const "inv"))
(define qinv:unit (const "unit"))
(define qinv:counit (const "counit"))
