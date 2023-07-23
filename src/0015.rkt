#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/exercise.rkt")

(define f "f")
(define g "g")

@exercise[
  #:id (current-id)
  @paragraph{
    @ref["0014"]において、@(math ((uncurry . $ . (curry . $ . f)) . def-eq . f))と@(math ((curry . $ . (uncurry . $ . g)) . def-eq . g))を確かめよ。
  }
]
