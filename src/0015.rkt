#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0014"]において、@($ (@uncurry{@curry{f}} . def-eq . "f"))と@($ (@curry{@uncurry{g}} . def-eq . "g"))を確かめよ。
  }
]
