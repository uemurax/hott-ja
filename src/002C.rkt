#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @($ (("a" . _ . "1") . elem-of . unit-type))と@($ (("a" . _ . "2") . elem-of . unit-type))を要素とする。同値@($ ((("a" . _ . "1") . id-type . ("a" . _ . "2")) . equiv . unit-type))を構成しよう。@ref["001S"]を適用する。@($ ("B" . elem-of . (unit-type . fun-type . (universe blank))))を@($ (abs "x" unit-type))と定義する。要素@($ (unit-elem . elem-of . ("B" . fun-apply . ("a" . _ . "1"))))を得る。@ref["001O"]と@ref["0024"]により、@($ (d-pair-type ("x" . elem-of . unit-type) ("B" . fun-apply . "x")))は@($ ("B" . fun-apply . ("a" . _ . "1")))のレトラクトである。再び@ref["001O"]により@($ ("B" . fun-apply . ("a" . _ . "1")))は可縮なので、@ref["001K"]により@($ (d-pair-type ("x" . elem-of . unit-type) ("B" . fun-apply . "x")))は可縮である。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
