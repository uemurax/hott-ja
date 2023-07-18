#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/pair.rkt")

(define i "i")
(define A "A")
(define a "a")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。関数@(math ((diagonal . $ . A) . elem-of . (A . fun-type . (A . pair-type . A))))であって、任意の@(math (a . elem-of . A))に対して@(math (((proj 1) . $ . (diagonal . $* . A a)) . def-eq . a))かつ@(math (((proj 2) . $ . (diagonal . $* . A a)) . def-eq . a))となるものを構成せよ。
  }
]
