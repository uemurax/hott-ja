#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/id.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide part:001D)

(define part:001D
  @definition[
    #:id "001D"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "0") . elem-of . "A"))と@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ (("p" . _ . "1") . elem-of . (("a" . _ . "0") . id-type . ("a" . _ . "1"))))と@($ (("p" . _ . "2") . elem-of . (("a" . _ . "0") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ ((id-extension (seq ("p" . _ . "1") ("p" . _ . "2"))) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を@($ (transport (seq (abs "x" ("x" . id-type . ("a" . _ . "2"))) ("p" . _ . "1") ("p" . _ . "2"))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001D)))
