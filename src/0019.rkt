#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt")

(define A "A")
(define B "B")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0018"]において、@(math (((pair-sym . $* . B A) . fun-comp . (pair-sym . $* . A B)) . def-eq . id-fun))であることを確かめよ。
  }
]
