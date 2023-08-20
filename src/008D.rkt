#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt")

(define a "a")
(define a1 (a . _ . "1"))
(define f "f")
(define x "x")
(define p "p")
(define A "A")
(define B "B")
(define b "b")

@notation[
  #:id (current-id)
  @paragraph{
    @(math id-ind)を使って関数を定義するには次のいずれかのような言い回しをする。
    @unordered-list[
      @list-item{
        関数@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . A)) (d-fun-type (p . elem-of . (a1 . id-type . x)) (B . $ . p)))))を@(math (abs* x p (id-ind . $* . p B b)))と定義する。
      }
      @list-item{
        関数@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . A)) (d-fun-type (p . elem-of . (a1 . id-type . x)) (B . $ . p)))))を@(math ((f . $ . refl) . def-eq . b))で定義する。
      }
      @list-item{
        @(math (x . elem-of . A))を要素、@(math (p . elem-of . (a1 . id-type . x)))を同一視とする。要素@(math ((f . $ . p) . elem-of . (B . $ . p)))を@(math ((f . $ . refl) . def-eq . b))で定義する。
      }
    ]
  }
]
