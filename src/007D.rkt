#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define z "z")

@theorem[
  #:id (current-id)
  @paragraph{
    @(math i)を階数とする。@(math (universe . $ . i))が一価性を満たすならば、@(math (universe . $ . i))のすべての関数型は関数外延性を満たす。
  }
  #:proof @proof[
    @paragraph{
      @ref["0029"]を適用する。@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とし、各@(math (B . $ . x))は可縮であると仮定する。@ref["007C"]より、関数@(math ((abs z ((proj 1) . $ . z)) . elem-of . ((d-pair-type (x . elem-of . A) (B . $ . x)) . fun-type . A)))は同値である。これと@ref["007B"]より、@(math (section-of-proj . $* . A B))は可縮である。したがって、@ref["007A"]と@ref["001K"]より@(math (d-fun-type (x . elem-of . A) (B . $ . x)))は可縮である。
    }
  ]
]
