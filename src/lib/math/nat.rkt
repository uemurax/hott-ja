#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: "tex.rkt")
         "core.rkt")

(provide nat
         nat:zero
         nat:succ
         nat:plus
         prim-rec
         nat:ind)

(define nat @tex:mathbb{N})
(define nat:zero "0")
(define nat:succ (const "succ"))
(define nat:ind (ind/symb . _ . nat))
(define nat:plus (const "plus"))
(define prim-rec (const "prim-rec"))
