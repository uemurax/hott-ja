#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/coproduct.rkt")

(define f "f")
(define z "z")
(define A "A")
(define B "B")
(define D "D")
(define d "d")
(define d1 (d . _ . "1"))
(define d2 (d . _ . "2"))
(define x "x")
(define y "y")

@notation[
  #:id (current-id)
  @paragraph{
    @(math coproduct-type:ind)を使って関数を定義するには次のような言い回しをする。
    @unordered-list[
      @list-item{関数@(math (f . elem-of . (d-fun-type (z . elem-of . (A . coproduct-type . B)) (D . $ . z))))を@(math (abs z (coproduct-type:ind . $* . z D d1 d2)))と定義する。}
      @list-item{関数@(math (f . elem-of . (d-fun-type (z . elem-of . (A . coproduct-type . B)) (D . $ . z))))を@(math ((f . $ . ((coproduct-type:in 1) . $ . x)) . def-eq . (d1 . $ . x)))と@(math ((f . $ . ((coproduct-type:in 2) . $ . y)) . def-eq . (d2 . $ . y)))で定義する。}
      @list-item{@(math (z . elem-of . (A . coproduct-type . B)))を要素とする。要素@(math ((f . $ . z) . elem-of . (D . $ . z)))を@(math ((f . $ . ((coproduct-type:in 1) . $ . x)) . def-eq . (d1 . $ . x)))と@(math ((f . $ . ((coproduct-type:in 2) . $ . y)) . def-eq . (d2 . $ . y)))で定義する。}
    ]
  }
]
