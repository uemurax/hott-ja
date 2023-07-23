#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/refl-graph.rkt"
         morg/eq-reasoning)

(define i "i")
(define x "x")
(define A "A")
(define E "E")
(define X "X")
(define Y "Y")
(define Z "Z")
(define v "v")
(define e "e")
(define r "r")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define z "z")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "はんしゃてきぐらふ"]{反射的グラフ}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((refl-graph . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (refl-graph:vertex . elem-of . (universe . $ . i)))}
      @list-item{@(math (refl-graph:edge . elem-of . (refl-graph:vertex . fun-type . (refl-graph:vertex . fun-type . (universe . $ . i)))))}
      @list-item{@(math (refl-graph:refl . elem-of . (d-fun-type (x . elem-of . refl-graph:vertex) (refl-graph:edge . $* . x x))))}
    ]
    @(math (refl-graph . $ . i))の要素は@dfn{反射的グラフ(reflexive graph)}と呼ばれる。@(math (A . elem-of . (refl-graph . $ . i)))と@(math (Z . elem-of . (refl-graph . $ . i)))に対し、@(math ((E . $ . Z) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (v . elem-of . ((A . record-field . refl-graph:vertex) . equiv . (Z . record-field . refl-graph:vertex))))}
      @list-item{@(math (e . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . (A . record-field . refl-graph:vertex))) (((A . record-field . refl-graph:edge) . $* . x1 x2) . equiv . ((Z . record-field . refl-graph:edge) . $* . (v . $ . x1) (v . $ . x2))))))}
      @list-item{@(math (r . elem-of . (d-fun-type (x . elem-of . (A . record-field . refl-graph:vertex)) ((e . $ . ((A . record-field . refl-graph:refl) . $ . x)) . id-type . ((Z . record-field . refl-graph:refl) . $ . (v . $ . x))))))}
    ]
    要素@(math ((record-elem (list v id-fun) (list e (abs* x1 x2 id-fun)) (list r (abs x refl))) . elem-of . (E . $ . A)))を得る。レトラクトの列
    @disp{
      @eq-reasoning[
        @(math (d-pair-type (Z . elem-of . (refl-graph . $ . i)) (E . $ . Z)))
        @(math retract-rel/symb) @%{並び換え}
        @(math (d-pair-type (X . elem-of . (universe . $ . i)) (d-pair-type (v . elem-of . ((A . record-field . refl-graph:vertex) . equiv . X)) (d-pair-type Y (d-pair-type e (d-pair-type z (d-fun-type x blank)))))))
        @(math retract-rel/symb) @%{一価性}
        @(math (d-pair-type (Y . elem-of . ((A . record-field . refl-graph:vertex) . fun-type . ((A . record-field . refl-graph:vertex) . fun-type . (universe . $ . i)))) (d-pair-type (e . elem-of . (d-fun-type (x1 x2 . elem-of* . (A . record-field . refl-graph:vertex)) (((A . record-field . refl-graph:edge) . $* . x1 x2) . equiv . (Y . $* . x1 x2)))) (d-pair-type z (d-fun-type x blank)))))
        @(math retract-rel/symb) @%{関数外延性と一価性}
        @(math (d-pair-type (z . elem-of . (d-fun-type (x . elem-of . (A . record-field . refl-graph:vertex)) ((A . record-field . refl-graph:edge) . $* . x x))) (d-fun-type (x . elem-of . (A . record-field . refl-graph:vertex)) (((A . record-field . refl-graph:refl) . $ . x) . id-type . (z . $ . x)))))
      ]
    }
    を得て、最後の型は関数外延性により可縮なので、@(math (d-pair-type (Z . elem-of . (refl-graph . $ . i)) (E . $ . Z)))は可縮である。
  }
]
