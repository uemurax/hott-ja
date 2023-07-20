#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define X "X")
(define Y "Y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "いっかせい"]{一価性}
  ]
  @paragraph{
    @(math i)を階層とする。宇宙@(math (universe . $ . i))が@dfn{一価性(univalence)}を満たすとは、@(math (d-fun-type (X . elem-of . (universe . $ . i)) (is-contr . $ . (d-pair-type (Y . elem-of . (universe . $ . i)) (X . equiv . Y)))))の要素があることである。
  }
]
