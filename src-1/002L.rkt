#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))を型、@($ ("c" . elem-of . "C"))を要素とすると、@($ ((d-pair-type ("y" . elem-of . (fiber (seq "g" "c"))) (fiber (seq "f" ("y" . record-field . fiber:elem)))) . bi-retract-rel .  (fiber (seq ("g" . fun-comp . "f") "c"))))の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        次のようにわかる。
        @disp{
          @eq-reasoning[
            @($ (d-pair-type ("y" . elem-of . (fiber (seq "g" "c"))) (fiber (seq "f" ("y" . record-field . fiber:elem)))))
            @($ bi-retract-rel/symb) @%{並び換え}
            @($ (d-pair-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . "B") (d-pair-type ("p" . elem-of . (("f" . fun-apply . "x") . id-type . "y")) (("g" . fun-apply . "y") . id-type . "c")))))
            @($ bi-retract-rel/symb) @%{@ref["001W"]と@ref["0025"]と@ref["001N"]}
            @($ (d-pair-type ("x" . elem-of . "A") (("g" . fun-apply . ("f" . fun-apply . "x")) . id-type . "c")))
          ]
        }
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
