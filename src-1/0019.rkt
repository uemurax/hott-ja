#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup.rkt")

(provide part:0019)

(define part:0019
  @exercise[
    #:id "0019"
    @paragraph{
      @ref["0018"]において、@($ (((pair-sym (seq "B" "A")) . fun-comp . (pair-sym (seq "A" "B"))) . def-eq . (id-fun blank)))であることを確かめよ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0019)))
