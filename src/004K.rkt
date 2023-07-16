#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@${@is-equiv{f}}と@${@is-biinv{f}}は論理的に同値である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0026"]と@ref["002G"]と@ref["002F"]と@ref["002H"]から従う。
    }
  ]
]
