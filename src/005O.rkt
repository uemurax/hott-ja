#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "じゅうまんちゅうじつ"]{充満忠実}
    @index[#:key "ほんしつてきぜんしゃ"]{本質的全射}
    @index[#:key "じゃくけんどうち"]{弱圏同値}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手とする。
    @unordered-list[
      @list-item{型@(math ((is-fully-faithful . $ . F) . elem-of . (universe . $ . i)))を@(math (forall (x1 x2 . elem-of* . C) (is-equiv . $ . ((F . record-field . functor:map) . $i* . x1 x2))))と定義する。@(math (is-fully-faithful . $ . F))の要素がある時、@(math F)は@dfn{充満忠実(fully faithful)}であると言う。}
      @list-item{型@(math ((is-ess-surj . $ . F) . elem-of . (universe . $ . i)))を@(math (forall (y . elem-of . D) (exists (x . elem-of . C) ((F . $ . x) . cat:iso . y))))と定義する。@(math (is-ess-surj . $ . F))の要素がある時、@(math F)は@dfn{本質的全射(essentially surjective)}であると言う。}
      @list-item{型@(math ((is-weak-cat-equiv . $ . F) . elem-of . (universe . $ . i)))を@(math ((is-fully-faithful . $ . F) . logic-and . (is-ess-surj . $ . F)))と定義する。@(math (is-weak-cat-equiv . $ . F))の要素がある時、@(math F)は@dfn{弱圏同値(weak categorical equivalence)}であると言う。}
    ]
  }
]
