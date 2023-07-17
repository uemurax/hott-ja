#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ (("A" . _ . "1") . elem-of . @universe{i}))と@($ (("A" . _ . "2") . elem-of . @universe{i}))と@($ (("A" . _ . "3") . elem-of . @universe{i}))を型とする。関数@($ ("f" . elem-of . (("A" . _ . "1") . fun-type . ("A" . _ . "2"))))と@($ ("g" . elem-of . (("A" . _ . "2") . fun-type . ("A" . _ . "3"))))と@($ ("h" . elem-of . (("A" . _ . "3") . fun-type . ("A" . _ . "1"))))がある時、各@($ ("A" . _ . "n"))と@($ ("A" . _ . "m"))は論理的に同値であることを確かめよ。
  }
]