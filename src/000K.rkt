#lang morg

(require "lib/math/level.rkt"
         "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define a "a")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "たんいがた"]{単位型}
    @notation-index[#:key "1"]{@(math unit-type)}
    @notation-index[#:key "★"]{@(math unit-elem)}
  ]
  @paragraph{
    @unordered-list[
      @list-item{@dfn{単位型(unit type)}@(math (unit-type . elem-of . (universe . $ . level:zero)))を構成できる。}
      @list-item{要素@(math (unit-elem . elem-of . unit-type))を構成できる。}
      @list-item{要素@(math (a . elem-of . unit-type))に対し、@(math (a . def-eq . unit-elem))と定義される。}
    ]
  }
]
