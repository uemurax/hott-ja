#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/embedding.rkt"
         "lib/math/n-type.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "うめこみ"]{埋め込み}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@($ (@is-embedding{f} . elem-of . @universe{i}))を@($ (is-trunc-map (seq trunc-level:-1 "f")))と定義する。@${@is-embedding{f}}の要素がある時、@${f}は@dfn{埋め込み(embedding)}であると言う。
  }
]
