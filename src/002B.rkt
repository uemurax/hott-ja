#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define x "x")
(define z "z")

@corollary[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (c1 c2 . elem-of* . (d-pair-type (x . elem-of . A) (B . $ . x))))を要素とすると、同値
    @disp{
      @(math ((c1 . id-type . c2) . equiv . (d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2)))))
    }を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]と@ref["001X"]による。
    }
  ]
]
