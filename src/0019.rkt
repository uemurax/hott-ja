#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @ref["0018"]において、@($ (((pair-sym (seq "B" "A")) . fun-comp . (pair-sym (seq "A" "B"))) . def-eq . (id-fun blank)))であることを確かめよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
