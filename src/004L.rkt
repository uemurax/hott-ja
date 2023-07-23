#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "はんずいはんどうち"]{半随伴同値}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math ((is-hae . $ . f) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (is-hae:inv . elem-of . (B . fun-type . A)))}
      @list-item{@(math (is-hae:unit . elem-of . ((is-hae:inv . fun-comp . f) . homotopy . id-fun)))}
      @list-item{@(math (is-hae:counit . elem-of . ((f . fun-comp . is-hae:inv) . homotopy . id-fun)))}
      @list-item{@(math (is-hae:coh . elem-of . (d-fun-type (x . elem-of . A) ((f . $ . (is-hae:unit . $ . x)) . id-type . (is-hae:counit . $ . (f . $ . x))))))}
    ]
    @(math (is-hae . $ . f))の要素がある時、@(math f)は@dfn{半随伴同値(half adjoint equivalence)}であると言う。
  }
]
