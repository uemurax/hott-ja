#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("p" . elem-of . ("f" . homotopy . "g")))をホモトピーとする。@${f}が同値ならば@${g}も同値である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("q" . elem-of . ("A" . fun-type . (d-pair-type (("y" . _ . "1") . elem-of . "B") (d-pair-type (("y" . _ . "2") . elem-of . "B") (("y" . _ . "1") . id-type . ("y" . _ . "2")))))))を@($ (abs "x" (pair (seq ("f" . fun-apply . "x") (pair (seq ("g" . fun-apply . "x") ("p" . fun-apply . "x")))))))と定義すると、@($ (((abs "z" ((proj 1) "z")) . fun-comp . "q") . def-eq . "f"))かつ@($ (((abs "z" ((proj 1) ((proj 2) "z"))) . fun-comp . "q") . def-eq . "g"))である。@ref["002E"]と@ref["002J"]と仮定から@${q}が同値であると分かり、すると@ref["002E"]と@ref["002K"]から@${g}が同値であると分かる。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
