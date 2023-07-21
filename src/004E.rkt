#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define E "E")
(define r "r")
(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define g "g")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (E . elem-of . (A . fun-type . (A . fun-type . (universe . $ . i)))))を型の族、@(math (r . elem-of . (d-fun-type (x . elem-of . A) (E . $* . x x))))と@(math (f . elem-of . (d-fun-type (x1 x2 . elem-of* . A) ((E . $* . x1 x2) . fun-type . (x1 . id-type . x2)))))を関数とする。@(math (d-fun-type (x1 x2 . elem-of* . A) (is-prop . $ . (E . $* . x1 x2))))の要素がある時、同値@(math (d-fun-type (x1 x2 . $* . A) ((x1 . id-type . x2) . equiv . (E . $* . x1 x2))))を構成でき、特に@(math A)は集合である。
  }
  #:proof @proof[
    @paragraph{
      @(math r)から同一視型の帰納法より関数@(math (g . elem-of . (d-fun-type (x1 x2 . elem-of* . A) ((x1 . id-type . x2) . fun-type . (E . $* . x1 x2)))))を得る。@(math (E . $* . x1 x2))が命題であるという仮定から、@(math f)と@(math g)はレトラクト@(math ((E . $* . x1 x2) . retract-rel . (x1 . id-type . x2)))を定める。よって、@ref["001S"]より同値@(math ((x1 . id-type . x2) . equiv . (E . $* . x1 x2)))を得る。
    }
  ]
]
