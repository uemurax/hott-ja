#lang morg

(require "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define n "n")

@corollary[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (n . elem-of . trunc-level))を要素とする。@(math A)が@(math n)型ならば、@(math (a1 . id-type . a2))も@(math n)型である。
  }
]
