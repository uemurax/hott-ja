#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/level.rkt")

(define i "i")
(define n "n")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (n . elem-of . trunc-level))を要素とする。型@(math (((trunc-type n) . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を@(math (record-type (list trunc-type:type (universe . $ . i)) (list trunc-type:is-trunc (is-trunc . $* . n trunc-type:type))))と定義する。
  }
]
