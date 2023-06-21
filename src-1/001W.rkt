#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide part:001W)

(define part:001W
  @lemma[
    #:id "001W"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))と@($ ("C" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("r" . elem-of . (d-fun-type ("x" . elem-of . "A") (retract (seq ("B" . fun-apply . "x") ("C" . fun-apply . "x"))))))を要素とすると、@($ (retract (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) (d-pair-type ("x" . elem-of . "A") ("C" . fun-apply . "x"))))の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        仮定@${r}から関数@($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) (("B" . fun-apply . "x") . fun-type . ("C" . fun-apply . "x")))))と@($ ("g" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) (("C" . fun-apply . "x") . fun-type . ("B" . fun-apply . "x")))))と同一視@($ ("p" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . ("B" . fun-apply . "x")) (("g" . fun-apply . ("f" . fun-apply . "y")) . id-type . "y")))))を得る。関数@($ ("F" . elem-of . ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . (d-pair-type ("x" . elem-of . "A") ("C" . fun-apply . "x")))))を@($ (abs "z" (pair (seq ((proj 1) "z") ("f" . fun-apply . ((proj 2) "z"))))))と定義する。関数@($ ("G" . elem-of . ((d-pair-type ("x" . elem-of . "A") ("C" . fun-apply . "x")) . fun-type . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))))も同様に@${g}を使って定義される。同一視@($ ("P" . elem-of . (d-fun-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (("G" . fun-apply . ("F" . fun-apply . "z")) . id-type . "z"))))を定義するために、@($ ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を仮定する。構成から@($ (((proj 1) ("G" . fun-apply . ("F" . fun-apply . "z"))) . def-eq . ((proj 1) "z")))であり、@($ (("p" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z"))) . elem-of . (((proj 2) ("G" . fun-apply . ("F" . fun-apply . "z"))) . id-type . ((proj 2) "z"))))を得る。@ref["001X"]を使って、@($ (pair (seq (refl ((proj 1) "z")) ("p" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z"))))))から@($ (("G" . fun-apply . ("F" . fun-apply . "z")) . id-type . "z"))の要素を構成できる。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:001W)))
