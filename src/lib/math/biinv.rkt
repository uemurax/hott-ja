#lang typed/racket

(require "core.rkt")

(provide is-biinv
         is-biinv:linv
         is-biinv:rinv
         linv
         linv:inv
         linv:id
         rinv
         rinv:inv
         rinv:id)

(define is-biinv (const "IsBiinv"))
(define is-biinv:linv (const "linv"))
(define is-biinv:rinv (const "rinv"))

(define linv (const "LInv"))
(define linv:inv (const "inv"))
(define linv:id (const "is-linv"))

(define rinv (const "RInv"))
(define rinv:inv (const "inv"))
(define rinv:id (const "is-rinv"))
