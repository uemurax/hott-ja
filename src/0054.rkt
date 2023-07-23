#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define n "n")
(define A "A")
(define B "B")

@proposition[
  #:id (current-id)
  @paragraph{
    一価性と関数外延性を仮定する。@(math i)を階数、@(math (n . elem-of . trunc-level))を要素とする。@(math ((trunc-type n) . $ . i))は@(math (trunc-level:succ . $ . n))型である。
  }
  #:proof @proof[
    @paragraph{
      @(math (A B . elem-of* . ((trunc-type n) . $ . i)))を要素とする。一価性と@ref["0049"]と@ref["0043"]より、同値@(math ((A . id-type . B) . equiv . ((A . record-field . trunc-type:type) . equiv . (B . record-field . trunc-type:type))))を得て、後者は@ref["0048"]と@ref["004X"]と@ref["0052"]から@(math n)型である。
    }
  ]
]
