#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define n "n")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とすると、@(math (is-trunc . $* . n A))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0042"]と@ref["0048"]から、@(math n)についての帰納法で示せる。
    }
  ]
]
