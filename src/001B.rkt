#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @ref["001A"]において、@($ ((@fun-pair-dist-inv{C} . fun-comp . @fun-pair-dist{C}) . def-eq . (id-fun blank)))と@($ ((@fun-pair-dist{C} . fun-comp . @fun-pair-dist-inv{C}) . def-eq . (id-fun blank)))を確かめよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
