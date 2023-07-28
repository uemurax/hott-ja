#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぜんけんのどうち"]{前圏の同型}
    @notation-index[#:key "IsIso"]{@(math is-precat-equiv) (前圏の同型)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手とする。型@(math ((is-precat-equiv . $ . F) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (blank . elem-of . (is-equiv . $ . (F . record-field . functor:obj))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 . elem-of* . C) (is-equiv . $ . ((F . record-field . functor:map) . $i* . x1 x2)))))}
    ]
    @(math (is-precat-equiv . $ . F))の要素がある時、@(math F)は@dfn{前圏の同型(isomorphism of precategories)}であると言う。
  }
]
