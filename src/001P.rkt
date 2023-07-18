#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define b "b")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数、@(math (b . elem-of . B))を要素とする。型@(math ((fiber . $* . f b) . elem-of . (universe . $ . i)))を@(math (record-type (list fiber:elem A) (list fiber:id ((f . $ . fiber:elem) . id-type . b))))と定義する。
  }
]
