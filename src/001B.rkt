#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt")

(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["001A"]において、@(math (((fun-pair-dist-inv . $ . C) . fun-comp . (fun-pair-dist . $ . C)) . def-eq . id-fun))と@(math (((fun-pair-dist . $ . C) . fun-comp . (fun-pair-dist-inv . $ . C)) . def-eq . id-fun))を確かめよ。
  }
]
