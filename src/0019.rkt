#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0018"]において、@($ (((pair-sym (seq "B" "A")) . fun-comp . (pair-sym (seq "A" "B"))) . def-eq . (id-fun blank)))であることを確かめよ。
  }
]
