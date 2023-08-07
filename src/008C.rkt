#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/refl-graph.rkt")

(define i "i")
(define x "x")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "はんしゃてきぐらふ"]{反射的グラフ}
    @notation-index[#:key "ReflGraph(i)"]{@(math (refl-graph . $ . i))}
  ]
  @paragraph{
@(math i)を階数とする。型@(math ((refl-graph . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (refl-graph:vertex . elem-of . (universe . $ . i)))}
      @list-item{@(math (refl-graph:edge . elem-of . (refl-graph:vertex . fun-type . (refl-graph:vertex . fun-type . (universe . $ . i)))))}
      @list-item{@(math (refl-graph:refl . elem-of . (d-fun-type (x . elem-of . refl-graph:vertex) (refl-graph:edge . $* . x x))))}
    ]
    @(math (refl-graph . $ . i))の要素を@dfn{反射的グラフ(reflexive graph)}と呼ぶ。
  }
]
