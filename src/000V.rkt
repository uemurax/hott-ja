#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . equiv . "B") . elem-of . @universe{i}))を@($ (record-type (seq (equiv:fun . elem-of . ("A" . fun-type . "B")) (equiv:is-equiv . elem-of . (is-equiv equiv:fun)))))と定義する。
  }
]