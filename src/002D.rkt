#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ (("c" . _ . "1") . elem-of . ("A" . pair-type . "B")))と@($ (("c" . _ . "2") . elem-of . ("A" . pair-type . "B")))を要素とする。同値@($ ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . equiv . ((((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2"))) . pair-type . (((proj 2) ("c" . _ . "1")) . id-type . ((proj 2) ("c" . _ . "2"))))))を構成しよう。@ref["001S"]を適用する。@($ ("E" . elem-of . (("A" . pair-type . "B") . fun-type . @universe{i})))を@($ (abs "z" ((((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) "z")) . pair-type . (((proj 2) ("c" . _ . "1")) . id-type . ((proj 2) "z")))))と定義する。要素@($ ((pair (seq (refl blank) (refl blank))) . elem-of . ("E" . fun-apply . ("c" . _ . "1"))))を得る。レトラクトの列
    @disp{
      @eq-reasoning[
        @($ (d-pair-type ("z" . elem-of . ("A" . pair-type . "B")) ("E" . fun-apply . "z")))
        @($ retract-rel/symb) @%{並び換え}
        @($ (d-pair-type ("x" . elem-of . "A") (d-pair-type ("p" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . "x")) (d-pair-type ("y" . elem-of . "B") (((proj 2) ("c" . _ . "1")) . id-type . "y")))))
        @($ retract-rel/symb) @%{@ref["001N"]と@ref["0025"]}
        @($ (d-pair-type ("y" . elem-of . "B") (((proj 2) ("c" . _ . "1")) . id-type . "y")))
      ]
    }
    を得て、最後の型は@ref["001N"]により可縮なので、@ref["001K"]より@($ (d-pair-type ("z" . elem-of . ("A" . pair-type . "B")) ("E" . fun-apply . "z")))も可縮である。
  }
]
