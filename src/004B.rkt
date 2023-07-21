#lang morg

(require "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/empty.rkt")

(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define P "P")

@section[
  #:id (current-id)
  #:title @%{集合}
  @paragraph{
    @(math trunc-level:-1)型の次に単純な型は@(math trunc-level:0)型である。@(math A)が@(math trunc-level:0)型の時は、任意の@(math (x1 x2 . elem-of* . A))に対して@(math (x1 . id-type . x2))は命題である。よって、二つの要素が同一視されるかどうかには興味があるが、どう同一視されるかは考える意味がない。このような型を@emph{集合}であると考える。
  }
  (include-part "004C.rkt")
  (include-part "004D.rkt")
  @paragraph{
    型が集合であることの十分条件として、同一視型が@emph{決定可能}であるというのがある(@ref["004H"])。ここで、型@(math P)が決定可能とは、@(math (P . coproduct-type . (P . fun-type . empty-type)))の要素があることを言う。
  }
  (include-part "004E.rkt")
  (include-part "004H.rkt")
]
