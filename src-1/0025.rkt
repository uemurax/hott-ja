#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:0025)

(define part:0025
  @lemma[
    #:id "0025"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("C" . elem-of . (d-fun-type ("x" . elem-of . "A") (("B" . fun-apply . "x") . fun-type . @universe{i}))))を型の族、@($ ("a" . elem-of . "A"))と@($ ("b" . elem-of . ("B" . fun-apply . "a")))を要素とする。@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))が可縮ならば@($ ((d-pair-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y")))) . bi-retract-rel . ("C" . fun-apply . (seq "a" "b"))))の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        @ref["0024"]からすぐに従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:0025)))
