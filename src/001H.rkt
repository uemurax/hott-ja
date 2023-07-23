#lang morg

(require "lib/markup/comparison.rkt"
         "lib/math.rkt")

(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))

@comparison[
  #:id (current-id)
  @paragraph{
    述語論理において、@emph{対称律}@(math ((x1 . id-type . x2) . fun-type . (x2 . id-type . x1)))と@emph{推移律}@(math ((x1 . id-type . x2) . fun-type . ((x2 . id-type . x3) . fun-type . (x1 . id-type . x3))))が成り立つ。@ref["001E"]はこの類似である。ちなみに、@(math (refl . elem-of . (x . id-type . x)))は@emph{反射律}とも思える。
  }
]
