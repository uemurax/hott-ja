#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define A "A")

@lemma[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A . elem-of . (presheaf . $ . C)))を前層とすると、同値
    @disp{
      @(math ((is-repr-psh . $ . A) . equiv . (iso-fiber . $* . (yoneda . $ . C) A)))
    }
    を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["006T"]と@ref["0072"]から従う。
    }
  ]
]
