#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define n "n")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とする。@(math A)が@(math n)型かつ@(math n)連結ならば、@(math A)は可縮である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0051"]から従う。
    }
  ]
]
