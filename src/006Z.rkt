#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         morg/eq-reasoning)

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手、@($ ("y" . elem-of . "D"))を対象とする。@${C}が圏で、@${F}が充満忠実ならば、@($ (iso-fiber (seq "F" "y")))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]を適用し、@($ ("a" . elem-of . (iso-fiber (seq "F" "y"))))を仮定して@($ (iso-fiber (seq "F" "y")))が可縮であることを示す。レトラクト
      @disp{
        @eq-reasoning[
          @($ (iso-fiber (seq "F" "y")))
          @($ retract-rel/symb) @%{定義}
          @($ (d-pair-type ("x" . elem-of . "C") (("F" . fun-apply . "x") . cat:iso . "y")))
          @($ retract-rel/symb) @%{@($ ("a" . record-field . iso-fiber:iso))と合成}
          @($ (d-pair-type ("x" . elem-of . "C") (("F" . fun-apply . ("a" . record-field . iso-fiber:obj)) . cat:iso . ("F" . fun-apply . "x"))))
          @($ retract-rel/symb) @%{@ref["0060"]と@ref["0061"]}
          @($ (d-pair-type ("x" . elem-of . "C") (("a" . record-field . iso-fiber:obj) . cat:iso . "x")))
        ]
      }
      を得て、最後の型は@${C}が圏なので可縮である。
    }
  ]
]
