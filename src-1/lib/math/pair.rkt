#lang typed/racket

(require morg/math
         "util.rkt")

(provide curry
         uncurry
         pair-assoc
         pair-assoc-inv
         pair-sym
         fun-pair-dist
         fun-pair-dist-inv)

(define curry/symb (const "curry"))
(define curry (make-fun curry/symb))

(define uncurry/symb (const "uncurry"))
(define uncurry (make-fun uncurry/symb))

(define pair-assoc/symb (const "assoc"))
(define pair-assoc (make-fun pair-assoc/symb))
(define pair-assoc-inv/symb (pair-assoc/symb . ^ . "-1"))
(define pair-assoc-inv (make-fun pair-assoc-inv/symb))

(define pair-sym/symb (const "sym"))
(define pair-sym (make-fun pair-sym/symb))

(define fun-pair-dist/symb (const "dist"))
(define fun-pair-dist (make-fun fun-pair-dist/symb))
(define fun-pair-dist-inv/symb (fun-pair-dist/symb . ^ . "-1"))
(define fun-pair-dist-inv (make-fun fun-pair-dist-inv/symb))
