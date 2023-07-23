#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/embedding.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "うめこみ"]{埋め込み}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math ((is-embedding . $ . f) . elem-of . (universe . $ . i)))を@(math (is-trunc-map . $* . trunc-level:-1 f))と定義する。@(math (is-embedding . $ . f))の要素がある時、@(math f)は@dfn{埋め込み(embedding)}であると言う。
  }
]
