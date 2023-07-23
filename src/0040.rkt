#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "めいだい"]{命題}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。型@(math ((is-prop . $ . A) . elem-of . (universe . $ . i)))を@(math (is-trunc . $* . trunc-level:-1 A))と定義する。@(math (is-prop . $ . A))の要素がある時、@(math A)は@dfn{命題(proposition)}であると言う。
  }
]
