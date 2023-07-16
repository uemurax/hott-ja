#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nかた"]{@${n}型}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。@($ ("n" . elem-of . trunc-level))に対して、型@($ ((is-trunc (seq "n" "A")) . elem-of . @universe{i}))を次のように定義する。
    @unordered-list[
      @list-item{@($ ((is-trunc (seq trunc-level:-2 "A")) . def-eq . @is-contr{A}))}
      @list-item{@($ ((is-trunc (seq @trunc-level:succ{n} "A")) . def-eq . (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (is-trunc (seq "n" (("x" . _ . "1") . id-type . ("x" . _ . "2"))))))))}
    ]
    @($ (is-trunc (seq "n" "A")))の要素がある時、@${A}は@dfn{@${n}型(@${n}-type)}である、または@${n}-truncatedであると言う。
  }
]
