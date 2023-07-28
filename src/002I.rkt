#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ほもとぴー"]{ホモトピー}
    @notation-index[#:key "f~g"]{@(math (f . homotopy . g))}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (f g . elem-of* . (d-fun-type (x . elem-of . A) (B . $ . x))))を関数とする。型@(math ((f . homotopy . g) . elem-of . (universe . $ . i)))を@(math (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x))))と定義する。@(math (f . homotopy . g))の要素を@(math f)と@(math g)の間の@dfn{ホモトピー(homotopy)}と呼ぶ。
  }
]
