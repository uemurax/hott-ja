#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/qinv.rkt"
         "lib/math/hae.rkt"
         "lib/math/biinv.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@${@is-equiv{f}}と@${@qinv{f}}は論理的に同値である。
  }
  #:proof @proof[
    @paragraph{
      @($ (@is-hae{f} . fun-type . @qinv{f}))と@($ (@qinv{f} . fun-type . @is-biinv{f}))は容易に示せるので、@ref["004K"]と@ref["004M"]を使う。
    }
  ]
]
