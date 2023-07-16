#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。このとき、@($ (("A" . fun-type . "B") . elem-of . @universe{i}))を@($ @d-fun-type[("x" . elem-of . "A")]{B})と定義する。
  }
]
