#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/set.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しゅうごう"]{集合}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。型@($ (@is-set{A} . elem-of . @universe{i}))を@($ (is-trunc (seq trunc-level:0 "A")))と定義する。@${@is-set{A}}の要素がある時、@${A}は@dfn{集合(set)}であると言う。
  }
]
