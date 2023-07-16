#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とする。@${A}が@${n}型ならば、@${A}は@${@trunc-level:succ{n}}型である。
  }
  #:proof @proof[
    @paragraph{
      @${n}についての帰納法による。@${n}が@($ trunc-level:-2)の場合は@ref["001L"]による。
    }
    @paragraph{
      @${n}の場合に主張が成り立つと仮定して、@${@trunc-level:succ{n}}の場合を示す。@${A}が@${@trunc-level:succ{n}}型と仮定して、任意の@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して@($ (("x" . _ . "1") . id-type . ("x" . _ . "2")))が@${@trunc-level:succ{n}}型であることを示せばよいが、仮定と帰納法の過程から直ちに従う。
    }
  ]
]
