#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を射とすると、型@${@cat:is-iso{f}}は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@${f}が同型であると仮定して@${@cat:is-iso{f}}が可縮であることを示せばよいが、これは@ref["005G"]からすぐに従う。
    }
  ]
]
