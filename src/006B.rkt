#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define P "P")
(define B "B")
(define c "c")
(define b "b")
(define x "x")
(define z "z")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (P B . elem-of* . (A . fun-type . (universe . $ . i))))を型の族、@(math (c . elem-of . (d-pair-type (x . elem-of . A) (P . $ . x))))を要素、@(math (b . elem-of . (B . $ . ((proj 1) . $ . c))))を要素とする。@(math (d-fun-type (x . elem-of . A) (is-prop . $ . (P . $ . x))))の要素があり、@(math (d-pair-type (x . elem-of . A) (B . $ . x)))は可縮であるならば、@(math (d-pair-type (z . elem-of . (d-pair-type (x . elem-of . A) (P . $ . x))) (B . $ . ((proj 1) . $ . z))))は可縮である。
  }
  #:proof @proof[
    @paragraph{
      並び換えによりレトラクト@(math ((d-pair-type (z . elem-of . (d-pair-type (x . elem-of . A) (P . $ . x))) (B . $ . ((proj 1) . $ . z))) . retract-rel . (d-pair-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (P . $ . ((proj 1) . $ . z)))))を得る。後者は@ref["004F"]と@ref["004X"]より命題であり、要素@(math (pair . $* . (pair . $* . ((proj 1) . $ . c) b) ((proj 2) . $ . c)))を持つので、@ref["0041"]より可縮である。
    }
  ]
]
