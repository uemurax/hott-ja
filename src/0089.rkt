#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt")

(define f "f")
(define x "x")
(define A "A")
(define B "B")
(define b "b")

@notation[
  #:id (current-id)
  @paragraph{
    関数を定義するには次のような言い回しをする。
    @unordered-list[
      @list-item{
        関数@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))を@(math (abs x b))と定義する。
      }
      @list-item{
        関数@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))を@(math ((f . $ . x) . def-eq . b))と定義する。
      }
      @list-item{
        @(math (x . elem-of . A))を要素とする。要素@(math ((f . $ . x) . elem-of . (B . $ . x)))を@(math b)と定義する。
      }
    ]
    最後の記法において、@(math f)の引数のリストに現れない仮定は@(math f)の暗黙的引数(@ref["000J"])と解釈する。
  }
]
