#lang morg

(require "lib/math.rkt")

(define f "f")
(define g "g")
(define x "x")
(define A "A")
(define B "B")

@section[
  #:id (current-id)
  #:title @%{関数外延性}
  @paragraph{
    関数@(math (f g . elem-of* . (d-fun-type (x . elem-of . A) (B . $ . x))))の「正しい」同一視のしかたは任意の@(math (x . elem-of . A))に対して@(math (f . $ . x))と@(math (g . $ . x))を同一視することである。つまり、同値@(math ((f . id-type . g) . equiv . (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))が期待される。しかし、関数@(math ((d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x))) . fun-type . (f . id-type . g)))は関数型の規則と同一視型の規則からは構成できないことが知られている@ref["Streicher--1993-0000"]。そのため、この同値を得るためには何らかの公理が必要である。
  }
  (include-part "001Z.rkt")
  @paragraph{
    要素@(math ((abs x (refl . $i . (f . $ . x))) . elem-of . (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (f . $ . x)))))があるので@ref["001S"]を適用できて、@(math (d-fun-type (x . elem-of . A) (B . $ . x)))が関数外延性を持つ時、任意の関数@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))と@(math (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))に対して同値@(math ((f . id-type . g) . equiv . (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))を得る。
  }
  (include-part "0020.rkt")
  (include-part "0029.rkt")
  #:subsections @list[
    (include-part "0021.rkt")
  ]
]
