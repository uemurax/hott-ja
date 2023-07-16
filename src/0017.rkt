#lang morg

(require "lib/math/pair.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0016"]において、@($ ((@pair-assoc-inv{C} . fun-comp . @pair-assoc{C}) . def-eq . (id-fun blank)))と@($ ((@pair-assoc{C} . fun-comp . @pair-assoc-inv{C}) . def-eq . (id-fun blank)))を確かめよ。
  }
]
