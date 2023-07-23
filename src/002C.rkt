#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt")

(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define B "B")
(define x "x")

@example[
  #:id (current-id)
  @paragraph{
    @(math (a1 a2 . elem-of* . unit-type))を要素とする。同値@(math ((a1 . id-type . a2) . equiv . unit-type))を構成しよう。@ref["001S"]を適用する。@(math (B . elem-of . (unit-type . fun-type . (universe . $ . level:zero))))を@(math (abs x unit-type))と定義する。要素@(math (unit-elem . elem-of . (B . $ . a1)))を得る。@ref["001O"]と@ref["0024"]により、@(math (d-pair-type (x . elem-of . unit-type) (B . $ . x)))は@(math (B . $ . a1))のレトラクトである。再び@ref["001O"]により@(math (B . $ . a1))は可縮なので、@ref["001K"]により@(math (d-pair-type (x . elem-of . unit-type) (B . $ . x)))は可縮である。
  }
]
