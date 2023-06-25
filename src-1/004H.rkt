#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/theorem.rkt"
         "lib/math.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/empty.rkt")

(provide-part (id)
  @theorem[
    #:id id
    #:title @%{Hedberg}
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("d" . elem-of . (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . coproduct-type . ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . empty-type))))))を関数とすると、@${A}は集合である。@ref["Hedberg--1998-0000"]
    }
    #:proof @proof[
      @paragraph{
        @ref["004E"]を適用する。@($ ("E" . elem-of . ("A" . fun-type . ("A" . fun-type . @universe{i}))))を次のように定義する。@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して、@($ (("T" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . elem-of . (((("x" . _ . "1") . id-type . ("x" . _ . "2")) . coproduct-type . ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . empty-type)) . fun-type . @universe{i})))を@($ (("T" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2") ((coproduct-type:in 1) "z"))) . def-eq . unit-type))と@($ (("T" . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "2") ((coproduct-type:in 2) "z"))) . def-eq . empty-type))で定義する。@($ (("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . def-eq . ("T" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2") ("d" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))と定義する。@ref["001O"]と@ref["004F"]と@ref["004G"]から、各@($ ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))は命題である。関数@($ ("g" . elem-of . (d-fun-type "z" (("T" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2") "z")) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "2"))))))を@($ (("g" . fun-apply . (seq ((coproduct-type:in 1) "u") "w")) . def-eq . "u"))と@($ (("g" . fun-apply . (seq ((coproduct-type:in 2) "v") "w")) . def-eq . (empty-type:ind (seq "w" blank))))で定義できるので、関数@($ (("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "2"))))を得る。最後に、任意の@($ ("x" . elem-of . "A"))に対して同値@($ ("h" . elem-of . (d-fun-type "z" (("T" . fun-apply . (seq "x" "x" "z")) . equiv . unit-type))))を@($ (("h" . fun-apply . ((coproduct-type:in 1) "u")) . def-eq . (id-fun unit-type)))と@($ (("h" . fun-apply . ((coproduct-type:in 2) "v")) . def-eq . (empty-type:ind (seq ("v" . fun-apply . @refl{x}) blank))))と定義できるので、関数@($ (d-fun-type ("x" . elem-of . "A") ("E" . fun-apply . (seq "x" "x"))))を得る。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
