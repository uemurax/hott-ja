#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt")

(define f "f")
(define h "h")
(define A "A")
(define x "x")
(define a "a")

@notation[
  #:id (current-id)
  @paragraph{
    @(math nat:ind)を使って関数を定義するには次のいずれかのような言い回しをする。
    @unordered-list[
      @list-item{関数@(math (h . elem-of . (d-fun-type (x . elem-of . nat) (A . $ . x))))を@(math (abs x (nat:ind . $* . x A a f)))と定義する。}
      @list-item{関数@(math (h . elem-of . (d-fun-type (x . elem-of . nat) (A . $ . x))))を@(math ((h . $ . nat:zero) . def-eq . a))と@(math ((h . $ . (nat:succ . $ . x)) . def-eq . (f . $ . (h . $ . x))))で定義する。}
      @list-item{@(math (x . elem-of . nat))を要素とする。要素@(math ((h . $ . x) . elem-of . (A . $ . x)))を@(math ((h . $ . nat:zero) . def-eq . a))と@(math ((h . $ . (nat:succ . $ . x)) . def-eq . (f . $ . (h . $ . x))))で定義する。}
    ]
  }
]
