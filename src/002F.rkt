#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))と@($ ("D" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))と@($ ("h" . elem-of . ("C" . fun-type . "D")))を関数とする。@($ ("g" . fun-comp . "f"))と@($ ("h" . fun-comp . "g"))が同値ならば@${f}と@${g}と@${h}と@($ (fun-comp "h" "g" "f"))も同値である。
  }
  #:proof @proof[
    @paragraph{
      任意の要素@($ ("d" . elem-of . "D"))に対して、レトラクト
      @disp{
        @eq-reasoning[
          @($ (fiber (seq (fun-comp "h" "g" "f") "d")))
          @($ retract-rel/symb) @%{@ref["002L"]}
          @($ (d-pair-type ("z" . elem-of . (fiber (seq "h" "d"))) (d-pair-type ("y" . elem-of . (fiber (seq "g" ("z" . record-field . fiber:elem)))) (fiber (seq "f" ("y" . record-field . fiber:elem))))))
          @($ retract-rel/symb) @%{@ref["002M"]}
          @($ (d-pair-type ("z" . elem-of . (fiber (seq "h" "d"))) (d-pair-type ("y'" . elem-of . (fiber (seq "g" ("z" . record-field . fiber:elem)))) (d-pair-type ("y" . elem-of . (fiber (seq "g" ("z" . record-field . fiber:elem)))) (fiber (seq "f" ("y" . record-field . fiber:elem)))))))
          @($ retract-rel/symb) @%{@($ ("h" . fun-comp . "g"))が同値}
          @($ (d-pair-type ("y" . elem-of . (fiber (seq "g" blank))) (fiber (seq  "f" ("y" . record-field . fiber:elem)))))
        ]
      }
      を得て、最後の型は@($ ("g" . fun-comp . "f"))が同値なので可縮である。よって、@($ (fun-comp "h" "g" "f"))は同値である。すると@ref["002E"]より残りの関数もすべて同値である。
    }
  ]
]
