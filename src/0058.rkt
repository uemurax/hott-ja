#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt"
         "lib/math/level.rkt"
         "lib/math/empty.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(define i "i")
(define P "P")
(define Q "Q")
(define A "A")
(define B "B")
(define x "x")

@notation[
  #:id (current-id)
  @paragraph{
    @(math i)を階数とする。
    @unordered-list[
      @list-item{型@(math (logic-true . elem-of . (universe . $ . level:zero)))を@(math unit-type)と定義する。}
      @list-item{型@(math (P Q . elem-of* . (universe . $ . i)))に対して、型@(math ((P . logic-and . Q) . elem-of . (universe . $ . i)))を@(math (P . pair-type . Q))と定義する。}
      @list-item{型@(math (logic-false . elem-of . (universe . $ . level:zero)))を@(math empty-type)と定義する。}
      @list-item{型@(math (P Q . elem-of* . (universe . $ . i)))に対して、型@(math ((P . logic-or . Q) . elem-of . (universe . $ . i)))を@(math (trunc trunc-level:-1 (P . coproduct-type . Q)))と定義する。}
      @list-item{型@(math (P Q . elem-of* . (universe . $ . i)))に対して、型@(math ((P . logic-impl . Q) . elem-of . (universe . $ . i)))を@(math (P . fun-type . Q))と定義する。}
      @list-item{型@(math (P . elem-of . (universe . $ . i)))に対して、型@(math ((logic-neg P) . elem-of . (universe . $ . i)))を@(math (P . logic-impl . logic-false))と定義する。}
      @list-item{型@(math (P Q . elem-of* . (universe . $ . i)))に対して、型@(math ((P . logic-equiv . Q) . elem-of . (universe . $ . i)))を@(math ((P . logic-impl . Q) . logic-and . (Q . logic-impl . P)))と定義する。}
      @list-item{型@(math (A . elem-of . (universe . $ . i)))と型の族@(math (P . elem-of . (A . fun-type . (universe . $ . i))))に対して、型@(math ((forall (x . elem-of . A) (P . $ . x)) . elem-of . (universe . $ . i)))を@(math (d-fun-type (x . elem-of . A) (P . $ . x)))と定義する。}
      @list-item{型@(math (A . elem-of . (universe . $ . i)))と型の族@(math (B . elem-of . (A . fun-type . (universe . $ . i))))に対して、型@(math ((exists (x . elem-of . A) (B . $ . x)) . elem-of . (universe . $ . i)))を@(math (trunc trunc-level:-1 (d-pair-type (x . elem-of . A) (B . $ . x))))と定義する。}
    ]
    これらの記法は@(math P)や@(math Q)が命題である場合に使い、結果も命題であることが分かる。
  }
]
