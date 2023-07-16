#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/level.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("n" . elem-of . trunc-level))を要素とする。型@($ ((trunc-type "n" "i") . elem-of . @universe{@level:succ{i}}))を@($ (record-type (seq (trunc-type:type . elem-of . @universe{i}) (trunc-type:is-trunc . elem-of . (is-trunc (seq "n" trunc-type:type))))))と定義する。
  }
]
