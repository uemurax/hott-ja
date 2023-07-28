#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "どうけい"]{同型}
    @notation-index[#:key "IsIso"]{@(math cat:is-iso)}
    @notation-index[#:key "LInv"]{@(math cat:linv) (前圏)}
    @notation-index[#:key "RInv"]{@(math cat:rinv) (前圏)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x1 x2 . elem-of* . C))を対象、@(math (f . elem-of . (cat:map . $* . x1 x2)))を射とする。
    @unordered-list[
      @list-item{型@(math ((cat:linv . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list cat:linv:inv (cat:map . $* . x2 x1)) (list cat:linv:id ((cat:linv:inv . cat:comp-bin . f) . id-type . cat:id))))と定義する。}
      @list-item{型@(math ((cat:rinv . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list cat:rinv:inv (cat:map . $* . x2 x1)) (list cat:rinv:id ((f . cat:comp-bin . cat:rinv:inv) . id-type . cat:id))))と定義する。}
      @list-item{型@(math ((cat:is-iso . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list cat:is-iso:linv (cat:linv . $ . f)) (list cat:is-iso:rinv (cat:rinv . $ . f))))と定義する。}
    ]
    @(math (cat:is-iso . $ . f))の要素がある時、@(math f)は@dfn{同型(isomorphism)}であるという。
  }
]
