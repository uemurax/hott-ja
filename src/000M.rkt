#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "A×B"]{@(math (A . pair-type . B))}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。型@(math ((A . pair-type . B) . elem-of . (universe . $ . i)))を@(math (d-pair-type (x . elem-of . A) B))と定義する。
  }
]
