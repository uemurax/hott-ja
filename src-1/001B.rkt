#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup.rkt")

(provide part:001B)

(define part:001B
  @exercise[
    #:id "001B"
    @paragraph{
      @ref["001A"]において、@($ ((@fun-pair-dist-inv{C} . fun-comp . @fun-pair-dist{C}) . def-eq . (id-fun blank)))と@($ ((@fun-pair-dist{C} . fun-comp . @fun-pair-dist-inv{C}) . def-eq . (id-fun blank)))を確かめよ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001B)))
