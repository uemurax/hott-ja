#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @($ unit-type)は可縮である。実際、@($ ((record-elem (seq (center . def-eq . unit-elem) (contraction . def-eq . (abs "x" (refl unit-elem))))) . elem-of . (is-contr unit-type)))を確かめられる。
  }
]
