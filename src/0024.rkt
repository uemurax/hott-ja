#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("a" . elem-of . "A"))を要素とする。@${A}が可縮ならば@($ ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . bi-retract-rel . ("B" . fun-apply . "a")))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @${A}が可縮であると仮定する。@ref["001L"]より、関数@($ ("p" . elem-of . (d-fun-type ("x" . elem-of . "A") ("x" . id-type . "a"))))を得る。関数@($ ("f" . elem-of . ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . ("B" . fun-apply . "a"))))を@($ (abs "z" (transport (seq "B" ("p" . fun-apply . ((proj 1) "z")) ((proj 2) "z")))))と定義し、関数@($ ("g" . elem-of . (("B" . fun-apply . "a") . fun-type . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))))を@($ (abs "y" (pair (seq "a" "y"))))と定義する。定義より、任意の@($ ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対して、@($ (("p" . fun-apply . ((proj 1) "z")) . elem-of . (((proj 1) "z") . id-type . ((proj 1) ("g" . fun-apply . ("f" . fun-apply . "z"))))))と@($ ((refl blank) . elem-of . ((transport (seq "B" ("p" . fun-apply . ((proj 1) "z")) ((proj 2) "z"))) . id-type . ((proj 2) ("g" . fun-apply . ("f" . fun-apply . "z"))))))を得るので、@ref["001X"]より同一視@($ ("q" . elem-of . (d-fun-type "z" (("g" . fun-apply . ("f" . fun-apply . "z")) . id-type . "z"))))を得る。また、@ref["001L"]より同一視@($ ("r" . elem-of . (("p" . fun-apply . "a") . id-type . @refl{a})))も得られるので、同一視@($ ((abs "y" (fun-apply-id (seq (abs "w" (transport (seq "B" "w" "y"))) "r"))) . elem-of . (d-fun-type ("y" . elem-of . ("B" . fun-apply . "a")) (("f" . fun-apply . ("g" . fun-apply . "y")) . id-type . "y"))))を得る。
    }
  ]
]
