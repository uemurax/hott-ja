#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . pair-type . "B") . elem-of . @universe{i}))を@($ (d-pair-type ("x" . elem-of . "A") "B"))と定義する。
  }
]
