#lang morg

(require "lib/math.rkt"
         "lib/markup/comparison.rkt")

@comparison[
  #:id (current-id)
  @paragraph{
    述語論理において、@${B}を一変数の述語とすると、@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("B" . fun-apply . ("x" . _ . "1")) . fun-type . ("B" . fun-apply . ("x" . _ . "2")))))が成り立つ。これは等しい対象は述語によって区別できないことを表す。@ref["001C"]はこの類似で、型理論においては同一視される要素を型の族では区別できないことを表す。
  }
]
