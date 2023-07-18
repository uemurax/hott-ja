#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: "tex.rkt")
         "util.rkt")

(provide nat
         nat:zero
         nat:succ
         nat:succ/symb
         nat:plus
         prim-rec
         nat:ind
         nat:ind/symb)

(define nat @tex:mathbb{N})
(define nat:zero "0")
(define nat:succ/symb (const "succ"))
(define nat:succ (make-fun nat:succ/symb))
(define nat:ind/symb ((const "ind") . _ . nat))
(define nat:ind (make-fun nat:ind/symb))
(define nat:plus/symb (const "plus"))
(define nat:plus (make-fun nat:plus/symb))
(define prim-rec/symb (const "prim-rec"))
(define prim-rec (make-fun prim-rec/symb))
