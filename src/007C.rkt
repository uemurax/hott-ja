#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。@($ (d-fun-type ("x" . elem-of . "A") (is-contr ("B" . fun-apply . "x"))))の要素があるならば、関数@($ ((abs "z" ((proj 1) "z")) . elem-of . ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . "A")))は同値である。
  }
  #:proof @proof[
    @paragraph{
      任意の@($ ("a" . elem-of . "A"))に対して、レトラクト
      @disp{
        @eq-reasoning[
          @($ (fiber (seq (abs "z" ((proj 1) "z")) "a")))
          @($ retract-rel/symb) @%{並び換え}
          @($ (d-pair-type ("x" . elem-of . "A") (d-pair-type ("p" . elem-of . ("x" . id-type . "a")) ("B" . fun-apply . "x"))))
          @($ retract-rel/symb) @%{@ref["0026"]}
          @($ ("B" . fun-apply . "a"))
        ]
      }
      を得て、最後の型は仮定より可縮である。
    }
  ]
]
