#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とすると、@($ (is-trunc (seq "n" "A")))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0042"]と@ref["0048"]から、@${n}についての帰納法で示せる。
    }
  ]
]
