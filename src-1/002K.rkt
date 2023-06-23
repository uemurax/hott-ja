#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。関数@($ ((abs "x" (pair (seq "x" (pair (seq "x" @refl{x}))))) . elem-of . ("A" . fun-type . (d-pair-type (("x" . _ . "1") . elem-of . "A") (d-pair-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2")))))))と@($ ((abs "z"((proj 1) ((proj 2) "z"))) . elem-of . ((d-pair-type (("x" . _ . "1") . elem-of . "A") (d-pair-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2")))) . fun-type . "A")))は同値である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("f" . def-eq . (abs "z" ((proj 1) "z"))))と@($ ("g" . def-eq . (abs "x" (pair (seq "x" (pair (seq "x" @refl{x})))))))と@($ ("h" . def-eq . (abs "z" ((proj 1) ((proj 2) "z")))))と定義すると、@($ (("f" . fun-comp . "g") . def-eq . @id-fun{A}))かつ@($ (("h" . fun-comp . "g") . def-eq . @id-fun{A}))である。@ref["002J"]より@${f}は同値であるから、@ref["002E"]と@ref["0026"]から@${g}も同値であると分かる。すると、再び@ref["002E"]と@ref["0026"]から@${h}も同値であると分かる。
      }
    ]
])

(module+ main
  (require morg/text)
  (preview))
