#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("a" . elem-of . "A"))と@($ ("c" . elem-of . (fiber (seq "f" ("f" . fun-apply . "a")))))を要素とすると、同値
    @disp{
      @($ (((record-elem (seq (fiber:elem . def-eq . "a") (fiber:id . def-eq . (refl ("f" . fun-apply . "a"))))) . id-type . "c") . equiv . (fiber (seq ((fun-apply-id "f") . fun-apply/implicit . (seq ((proj 1) "c") "a")) ((proj 2) "c")))))
    }
    を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]を適用する。レトラクト
      @disp{
        @eq-reasoning[
          @($ (d-pair-type ("z" . elem-of . (fiber (seq "f" ("f" . fun-apply . "a")))) (fiber (seq ((fun-apply-id "f") . fun-apply/implicit . (seq ((proj 1) "c") "a")) ((proj 2) "c")))))
          @($ retract-rel/symb) @%{並び替え}
          @($ (d-pair-type ("x" . elem-of . "A") (d-pair-type ("p" . elem-of . ("x" . id-type . "a")) (d-pair-type ("q" . elem-of . (("f" . fun-apply . "x") . id-type . ("f" . fun-apply . "a"))) (("f" . fun-apply . "p") . id-type . "q")))))
          @($ retract-rel/symb) @%{@ref["0026"]}
          @($ (d-pair-type ("q" . elem-of . (("f" . fun-apply . "a") . id-type . ("f" . fun-apply . "a"))) (("f" . fun-apply . @refl{a}) . id-type . "q")))
        ]
      }
      を得て、最後の型は@ref["001N"]より可縮である。
    }
  ]
]
