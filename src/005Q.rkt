#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define n "n")
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "IsTruncMap"]{@(math is-trunc-map)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数、@(math (n . elem-of . trunc-level))を要素とする。型@(math ((is-trunc-map . $* . n f) . elem-of . (universe . $ . i)))を@(math (d-fun-type (y . elem-of . B) (is-trunc . $* . n (fiber . $* . f y))))と定義する。
  }
]
