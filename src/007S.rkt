#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt"
         "lib/math/span.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かるてしあんよすい"]{カルテシアン余錐}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐、@(math (D . elem-of . (span/cocone-over . $* . B C)))を@(math C)上の余錐とする。型@(math ((span/cocone-is-cartesian . $ . D) . elem-of . (universe . $ . i)))を@(math (logic-and (forall (x . elem-of . (A . record-field . span:left)) (is-equiv . $ . ((D . record-field . span/cocone-over:in-left) . $i . x))) (forall (x . elem-of . (A . record-field . span:right)) (is-equiv . $ . ((D . record-field . span/cocone-over:in-right) . $i . x))) (forall (x . elem-of . (A . record-field . span:center)) (is-equiv . $ . ((D . record-field . span/cocone-over:in-center) . $i . x)))))と定義する。@(math (span/cocone-is-cartesian . $ . D))の要素があるとき、@(math D)は@dfn{カルテシアン(cartesian)}であると言う。
  }
]
