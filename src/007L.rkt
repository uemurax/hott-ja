#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/fiber-coproduct.rkt")

(define i "i")
(define A "A")
(define C "C")
(define x "x")
(define y "y")
(define z "z")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐とする。関数@disp{
      @(math ((span/cocone:comparison . $ . C) . elem-of . (((A . record-field . span:left) . (fiber-coproduct-type (A . record-field . span:leg-l) (A . record-field . span:leg-r)) . (A . record-field . span:right)) . fun-type . (C . record-field . span/cocone:vertex))))
    }を次のように定義する。
    @unordered-list[
      @list-item{@(math (x . elem-of . (A . record-field . span:left)))に対して@(math ((span/cocone:comparison . $* . C ((fiber-coproduct-type:in 1) . $ . x)) . def-eq . ((C . record-field . span/cocone:in-left) . $ . x)))}
      @list-item{@(math (y . elem-of . (A . record-field . span:right)))に対して@(math ((span/cocone:comparison . $* . C ((fiber-coproduct-type:in 2) . $ . y)) . def-eq . ((C . record-field . span/cocone:in-right) . $ . y)))}
      @list-item{@(math (z . elem-of . (A . record-field . span:center)))に対して@(math ((span/cocone:comparison . $* . C (fiber-coproduct-type:glue . $ . z)) . id-type . ((id-inv ((C . record-field . span/cocone:in-leg-r) . $ . z)) . id-comp . ((C . record-field . span/cocone:in-leg-l) . $ . z))))}
    ]
  }
]
