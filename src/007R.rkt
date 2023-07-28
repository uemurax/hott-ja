#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt"
         "lib/math/span.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かるてしあんすぱん"]{カルテシアンスパン}
    @notation-index[#:key "IsCart"]{@(math span-is-cartesian) (スパン)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパンとする。型@(math ((span-is-cartesian . $ . B) . elem-of . (universe . $ . i)))を@(math ((forall (x . elem-of . (A . record-field . span:center)) (is-equiv . $ . ((B . record-field . span-over:leg-l) . $i . x))) . logic-and . (forall (x . elem-of . (A . record-field . span:center)) (is-equiv . $ . ((B . record-field . span-over:leg-r) . $i . x)))))と定義する。@(math (span-is-cartesian . $ . B))の要素があるとき、@(math B)は@dfn{カルテシアン(cartesian)}であると言う。
  }
]
