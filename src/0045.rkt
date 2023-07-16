#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("r" . elem-of . (retract (seq "A" "B"))))と@($ ("n" . elem-of . trunc-level))を要素とする。@${B}が@${n}型ならば、@${A}も@${n}型である。
  }
  #:proof @proof[
    @paragraph{
      @${n}についての帰納法による。@${n}が@($ trunc-level:-2)の時は@ref["001K"]による。
    }
    @paragraph{
      @${n}について主張が成り立つと仮定し、@${@trunc-level:succ{n}}の場合を示す。@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して、@($ (is-trunc (seq "n" (("x" . _ . "1") . id-type . ("x" . _ . "2")))))を示せばよいが、@ref["0046"]と帰納法の仮定から直ちに従う。
    }
  ]
]
