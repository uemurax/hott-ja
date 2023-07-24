#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/fiber-coproduct.rkt")

(define i "i")
(define A "A")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "すぱんかのふへんよすい"]{スパン下の普遍余錐}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐とする。型@(math ((span/cocone-is-universal . $ . C) . elem-of . (universe . $ . i)))を@(math (is-equiv . $ . (span/cocone:comparison . $ . C)))と定義する。@(math (span/cocone-is-universal . $ . C))の要素があるとき、@(math C)は@dfn{普遍余錐(universal cocone)}であると言う。
  }
]
