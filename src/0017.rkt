#lang morg

(require "lib/math/pair.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt")

(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0016"]において、@(math (((pair-assoc-inv . $ . C) . fun-comp . (pair-assoc . $ . C)) . def-eq . id-fun))と@(math (((pair-assoc . $ . C) . fun-comp . (pair-assoc-inv . $ . C)) . def-eq . id-fun))を確かめよ。
  }
]
