#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/set.rkt")

(define i "i")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しゅうごう"]{集合}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。型@(math ((is-set . $ . A) . elem-of . (universe . $ . i)))を@(math (is-trunc . $* . trunc-level:0 A))と定義する。@(math (is-set . $ . A))の要素がある時、@(math A)は@dfn{集合(set)}であると言う。
  }
]
