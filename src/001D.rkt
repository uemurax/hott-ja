#lang morg

(require "lib/math.rkt"
         "lib/math/id.rkt"
         "lib/index/notation.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a0 (a . _ . "0"))
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define p "p")
(define p1 (p . _ . "1"))
(define p2 (p . _ . "2"))
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "ext"]{@(math id-extension)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a0 a1 a2 . elem-of* . A))を要素、@(math (p1 . elem-of . (a0 . id-type . a1)))と@(math (p2 . elem-of . (a0 . id-type . a2)))を同一視とする。同一視@(math ((id-extension . $* . p1 p2) . elem-of . (a1 . id-type . a2)))を@(math (transport . $* . (abs x (x . id-type . a2)) p1 p2))と定義する。
  }
]
