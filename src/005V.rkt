#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/connected.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nれんけつかんすう"]{@${n}連結関数}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("n" . elem-of . trunc-level))を要素とする。型@($ ((is-connected-map (seq "n" "f")) . elem-of . @universe{i}))を@($ (d-fun-type ("y" . elem-of . "B") (is-connected (seq "n" (fiber (seq "f" "y"))))))と定義する。@($ (is-connected-map (seq "n" "f")))の要素がある時、@${f}は@dfn{@${n}連結}であると言う。
  }
]
