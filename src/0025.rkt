#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define a "a")
(define b "b")
(define x "x")
(define y "y")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (C . elem-of . (d-fun-type (x . elem-of . A) ((B . $ . x) . fun-type . (universe . $ . i)))))を型の族、@(math (a . elem-of . A))と@(math (b . elem-of . (B . $ . a)))を要素とする。@(math (d-pair-type (x . elem-of . A) (B . $ . x)))が可縮ならば@(math ((d-pair-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) (C . $* . x y))) . bi-retract-rel . (C . $* . a b)))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["0024"]からすぐに従う。
    }
  ]
]
