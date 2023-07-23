#lang typed/racket

(require morg/math
         "core.rkt")

(provide curry
         uncurry
         pair-assoc
         pair-assoc-inv
         pair-sym
         diagonal
         fun-pair-dist
         fun-pair-dist-inv)

(define curry (const "curry"))

(define uncurry (const "uncurry"))

(define pair-assoc (const "assoc"))
(define pair-assoc-inv (pair-assoc . ^ . "-1"))

(define pair-sym (const "sym"))

(define fun-pair-dist (const "dist"))
(define fun-pair-dist-inv (fun-pair-dist . ^ . "-1"))

(define diagonal (const "diag"))
