#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define B "B")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。型@(math ((A . equiv . B) . elem-of . (universe . $ . i)))を@(math (record-type (list equiv:fun (A . fun-type . B)) (list equiv:is-equiv (is-equiv . $ . equiv:fun))))と定義する。
  }
]
