#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/pointed-type.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define E "E")
(define X "X")
(define Z "Z")
(define e "e")
(define x "x")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "てんつきかた"]{点付き型}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((pointed-type . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (pointed-type:carrier . elem-of . (universe . $ . i)))}
      @list-item{@(math (pointed-type:point . elem-of . pointed-type:carrier))}
    ]
    @(math (pointed-type . $ . i))の要素を(階数@(math i)の)@dfn{点付き型(pointed type)}と呼ぶ。@(math (A . elem-of . (pointed-type . $ . i)))に対し、@(math (E . elem-of . ((pointed-type . $ . i) . fun-type . (universe . $ . i))))を@(math (abs Z (d-pair-type (e . elem-of . ((A . record-field . pointed-type:carrier) . equiv . (Z . record-field . pointed-type:carrier))) ((e . $ . (A . record-field . pointed-type:point)) . id-type . (Z . record-field . pointed-type:point)))))と定義する。要素@(math ((pair . $* . id-fun refl) . elem-of . (E . $ . A)))を得る。レトラクトの列
    @disp{
      @eq-reasoning[
        @(math (d-pair-type (Z . elem-of . (pointed-type . $ . i)) (E . $ . Z)))
        @(math retract-rel/symb) @%{並び換え}
        @(math (d-pair-type (X . elem-of . (universe . $ . i)) (d-pair-type (e . elem-of . ((A . record-field . pointed-type:carrier) . equiv . X)) (d-pair-type (x . elem-of . X) ((e . $ . (A . record-field . pointed-type:point)) . id-type . x)))))
        @(math retract-rel/symb) @%{一価性}
        @(math (d-pair-type (x . elem-of . (A . record-field . pointed-type:carrier)) ((A . record-field . pointed-type:point) . id-type . x)))
      ]
    }
    を得て、最後の型は@ref["001N"]より可縮なので、@(math (d-pair-type (Z . elem-of . (pointed-type . $ . i)) (E . $ . Z)))は可縮である。
  }
]
