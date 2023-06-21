#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/function.rkt"
         "lib/markup.rkt")

(provide part:0013)

(define part:0013
  @exercise[
    #:id "0013"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("C" . elem-of . ("A" . fun-type . ("B" . fun-type . @universe{i}))))を型の族、@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of .  "B") ("C" . fun-apply . (seq "x" "y"))))))を関数とする。関数@($ (@swap{f} . elem-of . (d-fun-type ("y" . elem-of . "B") (d-fun-type ("x" . elem-of . "A") ("C" . fun-apply . (seq "x" "y"))))))であって、任意の要素@($ ("a" . elem-of . "A"))と@($ ("b" . elem-of . "B"))に対して@($ ((swap (seq "f" "b" "a")) . def-eq . ("f" . fun-apply . (seq "a" "b"))))となるものを構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0013)))
