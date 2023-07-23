#lang morg

(require "lib/markup/axiom.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define P "P")

@axiom[
  #:id (current-id)
  #:title @%{排中律}
  #:indexes @list[
    @index[#:key "はいちゅうりつ"]{排中律}
  ]
  @paragraph{
    @dfn{排中律(law of excluded middle)}は任意の階数@(math i)と型@(math (P . elem-of . (universe . $ . i)))に対して、@(math P)が命題ならば@(math (P . logic-or . (logic-neg P)))が真であることを要請する。
  }
]
