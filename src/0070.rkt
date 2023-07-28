#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define A "A")
(define x "x")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ひょうげんかのう"]{表現可能}
    @index[#:key "ふへんようそ"]{普遍要素}
    @notation-index[#:key "IsRepr"]{@(math is-repr-psh)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A . elem-of . (presheaf . $ . C)))を前層とする。型@(math ((is-repr-psh . $ . A) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (is-repr-psh:obj . elem-of . C))}
      @list-item{@(math (is-repr-psh:elem . elem-of . (A . $ . is-repr-psh:obj)))}
      @list-item{@(math (blank . elem-of . (forall (x . elem-of . C) (is-equiv . $ . (abs (f . elem-of . (cat:map . $* . x is-repr-psh:obj)) (is-repr-psh:elem . presheaf:act-bin . f))))))}
    ]
    @(math (is-repr-psh . $ . A))の要素がある時、@(math A)は@dfn{表現可能(representable)}であると言う。また、@(math (is-repr-psh . $ . A))の要素のことを@(math A)の@dfn{普遍要素(universal element)}と呼ぶ。
  }
]
