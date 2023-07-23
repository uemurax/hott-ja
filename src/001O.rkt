#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @(math unit-type)は可縮である。実際、@(math ((record-elem (list center unit-elem) (list contraction (abs "x" refl))) . elem-of . (is-contr . $ . unit-type)))を確かめられる。
  }
]
