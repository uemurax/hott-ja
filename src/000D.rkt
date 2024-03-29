#lang morg

(require "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/index/notation.rkt"
         "lib/markup/rule.rkt")

(define i "i")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かいすう"]{階数}
    @notation-index[#:key "0"]{@(math level:zero) (階数)}
    @notation-index[#:key "succ(i)"]{@(math (level:succ . $ . i)) (階数)}
  ]
  @paragraph{
    @dfn{階数(level)}についての規則は次で与えられる。
    @unordered-list[
      @list-item{階数@(math level:zero)を構成できる。}
      @list-item{階数@(math i)に対し、階数@(math (level:succ . $ . i))を構成できる。}
    ]
  }
]
