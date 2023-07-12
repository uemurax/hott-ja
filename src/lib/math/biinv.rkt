#lang typed/racket

(require "util.rkt")

(provide is-biinv
         is-biinv:linv
         is-biinv:rinv
         linv
         linv:inv
         linv:id
         rinv
         rinv:inv
         rinv:id)

(define is-biinv/symb (const "IsBiinv"))
(define is-biinv (make-fun is-biinv/symb))
(define is-biinv:linv (const "linv"))
(define is-biinv:rinv (const "rinv"))

(define linv/symb (const "LInv"))
(define linv (make-fun linv/symb))
(define linv:inv (const "inv"))
(define linv:id (const "is-linv"))

(define rinv/symb (const "RInv"))
(define rinv (make-fun rinv/symb))
(define rinv:inv (const "inv"))
(define rinv:id (const "is-rinv"))
