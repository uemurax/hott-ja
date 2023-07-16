#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/pair.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。関数@($ (@diagonal{A} . elem-of . ("A" . fun-type . ("A" . pair-type . "A"))))であって、任意の@($ ("a" . elem-of . "A"))に対して@($ (((proj 1) (diagonal (seq "A" "a"))) . def-eq . "a"))かつ@($ (((proj 2) (diagonal (seq "A" "a"))) . def-eq . "a"))となるものを構成せよ。
  }
]
