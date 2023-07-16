#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ (("c" . _ . "1") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ (("c" . _ . "2") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を要素とする。@($ (d-fun-type ("x" . elem-of . "A") (is-prop ("B" . fun-apply . "x"))))の要素があるならば、同値@($ ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . equiv . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))))を得る。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]を適用する。@ref["006B"]より、@($ (d-pair-type ("x" . elem-of . "A") (((proj 1) ("c" . _ . "1")) . id-type . "x")))が可縮であることを示せばよいが、これは@ref["001N"]から従う。
    }
  ]
]
