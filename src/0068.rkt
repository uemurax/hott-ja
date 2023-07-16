#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/logic.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))と@($ ("G" . elem-of . (functor (seq "C" "D"))))を関手、@($ ("s" . elem-of . (nat-trans (seq "F" "G"))))と@($ ("t" . elem-of . (nat-trans (seq "F" "G"))))を自然変換とすると、同値
    @disp{
      @($ (("s" . id-type . "t") . equiv . (forall ("x" . elem-of . "C") (("s" . fun-apply . "x") . id-type . ("t" . fun-apply . "x")))))
    }
    を構成できる。
  }
]
