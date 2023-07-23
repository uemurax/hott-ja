#lang morg

(require "lib/math.rkt"
         "lib/markup/comparison.rkt")

(define B "B")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@comparison[
  #:id (current-id)
  @paragraph{
    述語論理において、@(math B)を一変数の述語とすると、@(math ((x1 . id-type . x2) . fun-type . ((B . $ . x1) . fun-type . (B . $ . x2))))が成り立つ。これは等しい対象は述語によって区別できないことを表す。@ref["001C"]はこの類似で、型理論においては同一視される要素を型の族では区別できないことを表す。
  }
]
