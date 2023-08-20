#lang morg

(require "lib/markup/notation.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define a "a")
(define A "A")

@notation[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "a:A"]{@(math (a . elem-of . A))}
  ]
  @paragraph{
    要素@(math a)の型が@(math A)であることを明示するときは@(math (a . elem-of . A))と書く。
  }
]
