#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define a "a")
(define x "x")
(define c "c")
(define r "r")
(define z "z")
(define w "w")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a . elem-of . A))を要素とする。型@(math (d-pair-type (x . elem-of . A) (a . id-type . x)))は可縮である。
  }
  #:proof @proof[
    @paragraph{
      要素@(math (c . elem-of . (d-pair-type (x . elem-of . A) (a . id-type . x))))と@(math (r . elem-of . (d-fun-type (z . elem-of . (d-pair-type (x . elem-of . A) (a . id-type . x))) (c . id-type . z))))を構成すればよい。@(math (c . def-eq . (pair . $* . a refl)))と定義する。@(math r)については、カリー化(@ref["0014"])により、@(math (d-fun-type (x . elem-of . A) (d-fun-type (w . elem-of . (a . id-type . x)) (c . id-type . (pair . $* . x w)))))の要素を構成すればよい。同一視型の帰納法により、@(math (c . id-type . (pair . $* . a refl)))の要素を構成すればよいが、@(math c)の定義より@(math refl)とすればよい。
    }
  ]
]
