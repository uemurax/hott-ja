#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(require "001Z.rkt"
         "0021.rkt"
         "0020.rkt")

(provide part:001Y)

(define part:001Y
  @section[
    #:id "001Y"
    #:title @%{関数外延性}
    @paragraph{
      関数@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply ."x"))))の「正しい」同一視のしかたは任意の@($ ("x" . elem-of . "A"))に対して@($ ("f" . fun-apply . "x"))と@($ ("g" . fun-apply . "x"))を同一視することである。つまり、同値@($ (("f" . id-type . "g") . equiv . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))が期待される。しかし、関数@($ ((d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x"))) . fun-type . ("f" . id-type . "g")))は関数型の規則と同一視型の規則からは構成できないことが知られている@ref["Streicher--1993-0000"]。そのため、この同値を得るためには何らかの公理が必要である。
    }
    part:001Z
    @paragraph{
      要素@($ ((abs "x" (refl ("f" . fun-apply . "x"))) . elem-of . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("f" . fun-apply . "x")))))があるので@ref["001S"]を適用できて、@($ (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply ."x")))が関数外延性を持つ時、任意の関数@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対して同値@($ (("f" . id-type . "g") . equiv . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))を得る。
    }
    part:0020
    ;part:0029
    #:subsections @list[
      part:0021
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:001Y)))
