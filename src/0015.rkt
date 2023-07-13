#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @ref["0014"]において、@($ (@uncurry{@curry{f}} . def-eq . "f"))と@($ (@curry{@uncurry{g}} . def-eq . "g"))を確かめよ。
    }
  ])

  (module+ main
    (require morg/text)
    (preview))
