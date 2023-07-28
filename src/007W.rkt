#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cofiber.rkt"
         "lib/math/fiber-coproduct.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "こふぁいばー"]{コファイバー}
    @notation-index[#:key "Cofiber"]{@(math cofiber)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。関数@(math (g . elem-of . (A . fun-type . unit-type)))を@(math (abs blank unit-elem))とする。@(math f)の@dfn{コファイバー(cofiber)} @(math (cofiber . $ . f))を@(math (B . (fiber-coproduct-type f g) . unit-type))と定義する。
  }
]
