#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/surjection.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define y "y")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぜんしゃ"]{全射}
    @notation-index[#:key "IsSurj"]{@(math is-surjective)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math ((is-surjective . $ . f) . elem-of . (universe . $ . i)))を@(math (forall (y . elem-of . B) (exists (x . elem-of . A) ((f . $ . x) . id-type . y))))と定義する。@(math (is-surjective . $ . f))の要素がある時、@(math f)は@dfn{全射(surjection)}であると言う。
  }
]
