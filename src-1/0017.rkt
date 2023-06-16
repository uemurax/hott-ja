#lang at-exp typed/racket

(require morg/markup
         "lib/article.rkt"
         "lib/math.rkt")

(provide part:0017)

(define part:0017
  @exercise[
    #:id "0017"
    @paragraph{
      @ref["0016"]において、@($ ((@pair-assoc-inv{C} . fun-comp . @pair-assoc{C}) . def-eq . (id-fun blank)))と@($ ((@pair-assoc{C} . fun-comp . @pair-assoc-inv{C}) . def-eq . (id-fun blank)))を確かめよ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0017)))