#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

@corollary[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ (("c" . _ . "1") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ (("c" . _ . "2") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を要素とすると、同値
    @disp{
      @($ ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . equiv . (d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))) ((transport "B" "z" ((proj 2) ("c" . _ . "1"))) . id-type . ((proj 2) ("c" . _ . "2"))))))
    }を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]と@ref["001X"]による。
    }
  ]
]
