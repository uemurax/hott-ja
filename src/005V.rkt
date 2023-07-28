#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/connected.rkt")

(define n "n")
(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nれんけつかんすう"]{@(math n)連結関数}
    @notation-index[#:key "IsConnMap"]{@(math is-connected-map)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数、@(math (n . elem-of . trunc-level))を要素とする。型@(math ((is-connected-map . $* . n f) . elem-of . (universe . $ . i)))を@(math (d-fun-type (y . elem-of . B) (is-connected . $* . n (fiber . $* . f y))))と定義する。@(math (is-connected-map . $* . n f))の要素がある時、@(math f)は@dfn{@(math n)連結}であると言う。
  }
]
