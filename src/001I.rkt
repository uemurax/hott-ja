#lang morg

(require "lib/markup/comparison.rkt"
         "lib/math.rkt")

(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@comparison[
  #:id (current-id)
  @paragraph{
    述語論理において、@(math f)を一変数の関数とすると、@(math ((x1 . id-type . x2) . fun-type . ((f . $ . x1) . id-type . (f . $ . x2))))が成り立つ。これは関数が等しさを保つことを表す。@ref["001F"]はこの類似で、型理論において関数は同一視を保つことを表す。
  }
]
 