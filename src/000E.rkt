#lang morg

(require "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/universe.rkt"
         "lib/index/notation.rkt"
         "lib/markup/rule.rkt")

(define i "i")
(define A "A")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "うちゅう"]{宇宙}
    @notation-index[#:key "U(i)"]{@(math (universe . $ . i))}
  ]
  @paragraph{
    @dfn{宇宙(universe)}についての規則は次で与えられる。
    @unordered-list[
      @list-item{階数@(math i)に対して、型@(math (universe . $ . i))を構成できる。}
      @list-item{階数@(math i)と要素@(math (A . elem-of . (universe . $ . i)))に対して、型@(math (universe:el . $ . A))を構成できる。}
      @list-item{階数@(math i)に対して、要素@(math ((universe:name . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を構成できる。}
      @list-item{階数@(math i)に対して、@(math ((universe:el . $ . (universe:name . $ . i)) . def-eq . (universe . $ . i)))と定義される。}
      @list-item{階数@(math i)と要素@(math (A . elem-of . (universe . $ . i)))に対して、@(math ((universe:lift . $ . A) . elem-of . (universe . $ . (level:succ . $ . i))))を構成できる。}
      @list-item{階数@(math i)と要素@(math (A . elem-of . (universe . $ . i)))に対して、@(math ((universe:el . $ . (universe:lift . $ . A)) . def-eq . (universe:el . $ . A)))と定義される。}
    ]
  }
]
