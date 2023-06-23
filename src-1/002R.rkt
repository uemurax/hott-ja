#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      いわゆる@emph{Mac Lane五角形}を表す型とその要素を構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
