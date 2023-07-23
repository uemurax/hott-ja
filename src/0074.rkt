#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define y "y")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。次は論理的に同値である。
    @ordered-list[
      @list-item{@(math f)は全射である。}
      @list-item{@(math f)は@(math trunc-level:-1)連結である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @(math (y . elem-of . B))を要素とする。@ref["0041"]より、@(math (trunc trunc-level:-1 (fiber . $* . f y)))と@(math (is-contr . $ . (trunc trunc-level:-1 (fiber . $* . f y))))は論理的に同値であるから主張が従う。
    }
  ]
]
