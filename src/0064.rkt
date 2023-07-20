#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")

@corollary[
  #:id (current-id)
  #:title @%{圏の構造同一原理}
  @paragraph{
    一価性と関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (cat . $ . i)))を圏とすると、同値
    @disp{
      @(math ((C . id-type . D) . equiv . (prop-compr (F . elem-of . (functor . $* . C D)) (is-weak-cat-equiv . $ . F))))
    }
    を得る。
  }
]
