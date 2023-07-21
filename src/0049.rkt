#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define x "x")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (c1 c2 . elem-of* . (d-pair-type (x . elem-of . A) (B . $ . x))))を要素とする。@(math (d-fun-type (x . elem-of . A) (is-prop . $ . (B . $ . x))))の要素があるならば、同値@(math ((c1 . id-type . c2) . equiv . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))))を得る。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]を適用する。@ref["006B"]より、@(math (d-pair-type (x . elem-of . A) (((proj 1) . $ . c1) . id-type . x)))が可縮であることを示せばよいが、これは@ref["001N"]から従う。
    }
  ]
]
