#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/example.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。関数@($ ((pair-sym (seq "A" "B")) . elem-of . (("A" . pair-type . "B") . fun-type . ("B" . pair-type . "A"))))を@($ (abs "z" (pair (seq ((proj 2) "z") ((proj 1) "z")))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
