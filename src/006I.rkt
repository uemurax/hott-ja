#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

@lemma[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @set-cat{i}))と@($ ("B" . elem-of . @set-cat{i}))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq "A" "B"))))を射とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@${f}は@${@set-cat{i}}の射として同型である。}
      @list-item[#:id "0001"]{@${f}は関数として同値である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @ref["004K"]による。
    }
  ]
]
