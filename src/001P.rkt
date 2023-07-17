#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("b" . elem-of . "B"))を要素とする。型@($ ((fiber (seq "f" "b")) . elem-of . @universe{i}))を@($ (record-type (seq (fiber:elem . elem-of . "A") (fiber:id . elem-of . (("f" . fun-apply . fiber:elem) . id-type . "b")))))と定義する。
  }
]