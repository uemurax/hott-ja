#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/fiber-coproduct.rkt"
         "lib/math/suspension.rkt")

(define i "i")
(define A "A")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "けんすい"]{懸垂}
    @notation-index[#:key "Susp"]{@(math suspension)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。関数@(math (f . elem-of . (A . fun-type . unit-type)))を@(math (abs blank unit-elem))とする。@dfn{懸垂(suspension)} @(math ((suspension . $ . A) . elem-of . (universe . $ . i)))を@(math (unit-type . (fiber-coproduct-type f f) . unit-type))と定義する。
  }
]
