#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))を関数とする。@${f}と@${g}と@($ ("g" . fun-comp . "f"))のうちいずれか二つが同値ならば残りの一つも同値である。つまり、次の型の要素を構成できる。
    @unordered-list[
      @list-item{@($ (@is-equiv{f} . fun-type . (@is-equiv{g} . fun-type . (is-equiv ("g" . fun-comp . "f")))))}
      @list-item{@($ (@is-equiv{f} . fun-type . ((is-equiv ("g".  fun-comp . "f")) . fun-type . @is-equiv{g})))}
      @list-item{@($ (@is-equiv{g} . fun-type . ((is-equiv ("g" . fun-comp . "f")) . fun-type . @is-equiv{f})))}
    ]
  }
  #:proof @proof[
    @paragraph{
      @${f}が同値であると仮定すると、@ref["002L"]と@ref["001K"]から@($ (@is-equiv{g} . log-equiv . (is-equiv ("g" . fun-comp . "f"))))が従う。
    }
    @paragraph{
      @${g}と@($ ("g" . fun-comp . "f"))が同値であると仮定する。@($ ("b" . elem-of . "B"))を仮定する。@($ ("r" . elem-of . (fiber (seq "g" ("g" . fun-apply . "b")))))を@($ (record-elem (seq (fiber:elem . def-eq . "b") (fiber:id . def-eq . (refl ("g" . fun-apply . "b"))))))と定義する。レトラクト
      @disp{
        @eq-reasoning[
          @($ (fiber (seq ("g" . fun-comp . "f") ("g" . fun-apply . "b"))))
          @($ bi-retract-rel/symb) @%{@ref["002L"]}
          @($ (d-pair-type ("y" . elem-of . (fiber (seq "g" ("g" . fun-apply . "b")))) (fiber (seq "f" ("y" . record-field . fiber:elem)))))
          @($ bi-retract-rel/symb) @%{@${g}が同値}
          @($ (fiber (seq "f" ("r" . record-field . fiber:elem))))
        ]
      }
      を得て、@($ (("r" . record-field . fiber:elem) . def-eq . "b"))であることに注意すると、@($ ("g" . fun-comp . "f"))が同値なので@($ (fiber (seq "f" "b")))は可縮である。
    }
  ]
]
