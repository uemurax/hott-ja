#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/id-over.rkt")

(define i "i")
(define A "A")
(define B "B")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define b "b")
(define b1 (b . _ . "1"))
(define b2 (b . _ . "2"))
(define p "p")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "pじょうのどういつし"]{@(math p)上の同一視}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (a1 a2 . elem-of* . A))を要素、@(math (p . elem-of . (a1 . id-type . a2)))を同一視、@(math (b1 . elem-of . (B . $ . a1)))と@(math (b2 . elem-of . (B . $ . a2)))を要素とする。型@(math ((b1 . (id-type-over B p) . b2) . elem-of . (universe . $ . i)))を@(math ((transport . $* . B p b1) . id-type . b2))と定義する。@(math (b1 .  (id-type-over B p) . b2))の要素を@(math b1)と@(math b2)の@dfn{@(math p)上の同一視(identification over @(math p))}と呼ぶ。
  }
]
