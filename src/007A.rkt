#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とすると、@($ (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は@($ (section-of-proj (seq "A" "B")))のレトラクトである。
  }
  #:proof @proof[
    @paragraph{
      関数@($ ("F" . elem-of . ((d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . (section-of-proj (seq "A" "B")))))を
      @disp{
        @($ (abs "f" (record-elem (seq (fiber:elem . def-eq . (abs "x" (pair (seq "x" ("f" . fun-apply . "x"))))) (fiber:id . def-eq . @refl{@id-fun{A}})))))
      }
      と定義し、関数@($ ("G" . elem-of . ((section-of-proj (seq "A" "B")) . fun-type . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))))を
      @disp{
        @($ (abs "z" (abs "x" (transport (seq (abs "g" ("B" . fun-apply . ("g" . fun-apply . "x"))) ("z" . record-field . fiber:id) ((proj 2) (("z" . record-field . fiber:elem) . fun-apply . "x")))))))
      }
      と定義すると、@($ (("G" . fun-comp . "F") . def-eq . (id-fun blank)))である。
    }
  ]
]
