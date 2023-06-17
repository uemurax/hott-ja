#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001P)

(define part:001P
  @definition[
    #:id "001P"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("b" . elem-of . "B"))を要素とする。型@($ ((fiber (seq "f" "b")) . elem-of . @universe{i}))を@($ (record-type (seq (fiber-elem . elem-of . "A") (fiber-id . elem-of . ("f" . fun-apply . (fiber-elem . id-type . "b"))))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001P)))
