#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。このとき、@(math ((A . fun-type . B) . elem-of . (universe . $ . i)))を@(math (d-fun-type (x . elem-of . A) B))と定義する。
  }
]
