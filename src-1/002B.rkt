#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt")

(provide part:002B)

(define part:002B
  @corollary[
    #:id "002B"
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
  ])

(module+ main
  (require morg/text)
  (display (->text part:002B)))