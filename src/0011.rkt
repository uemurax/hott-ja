#lang morg

(require "lib/math.rkt"
         "lib/index/notation.rkt"
         "lib/markup/example.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define g "g")
(define x "x")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ごうせいかんすう"]{合成関数}
    @notation-index[#:key "gof"]{@(math (g . fun-comp . f)) (関数)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B C . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))と@(math (g . elem-of . (B . fun-type . C)))を関数とする。@dfn{合成関数(composed function)}@(math ((g . fun-comp . f) . elem-of . (A . fun-type . C)))を@(math (abs x (g . $ . (f . $ . x))))と定義する。
  }
]
