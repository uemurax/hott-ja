#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define c "c")

@notation[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とする。関数外延性の下で@(math (d-fun-type (x . elem-of . A) (is-prop . $ . (B . $ . x))))の要素がある時、@(math (d-pair-type (x . elem-of . A) (B . $ . x)))のことを@(math (prop-compr (x . elem-of . A) (B . $ . x)))と書くことがある。さらに、要素@(math (c . elem-of . (prop-compr (x . elem-of . A) (B . $ . x))))に対して、@(math (proj 1))を省略して@(math c)そのものを@(math A)の要素とみなすことがある。
  }
]
