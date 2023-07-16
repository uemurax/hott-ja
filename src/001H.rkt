#lang morg

(require "lib/markup/comparison.rkt"
         "lib/math.rkt")

@comparison[
  #:id (current-id)
  @paragraph{
    述語論理において、@emph{対称律}@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("x" . _ . "2") . id-type . ("x" . _ . "1"))))と@emph{推移律}@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . ((("x" . _ . "2") . id-type . ("x" . _ . "3")) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "3")))))が成り立つ。@ref["001E"]はこの類似である。ちなみに、@($ (@refl{x} . elem-of . ("x" . id-type . "x")))は@emph{反射律}とも思える。
  }
]
