#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:0018)

(define part:0018
  @example[
    #:id "0018"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。関数@($ ((pair-sym (seq "A" "B")) . elem-of . (("A" . pair-type . "B") . fun-type . ("B" . pair-type . "A"))))を@($ (abs "z" (pair (seq ((proj 2) "z") ((proj 1) "z")))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0018)))
