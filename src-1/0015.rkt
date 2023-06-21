#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup.rkt")

(provide part:0015)

(define part:0015
  @exercise[
    #:id "0015"
    @paragraph{
      @ref["0014"]において、@($ (@uncurry{@curry{f}} . def-eq . "f"))と@($ (@curry{@uncurry{g}} . def-eq . "g"))を確かめよ。
    }
  ])

  (module+ main
    (require morg/text)
    (display (->text part:0015)))
