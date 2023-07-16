#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/proposition.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "めいだい"]{命題}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。型@($ (@is-prop{A} . elem-of . @universe{i}))を@($ (is-trunc (seq trunc-level:-1 "A")))と定義する。@${@is-prop{A}}の要素がある時、@${A}は@dfn{命題(proposition)}であると言う。
  }
]
