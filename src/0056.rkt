#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define T "T")
(define n "n")
(define x "x")
(define y "y")
(define z "z")
(define u "u")
(define v "v")
(define H "H")
(define f "f")
(define g "g")
(define h "h")

@theorem[
  #:id (current-id)
  @paragraph{
    一価性と関数外延性を仮定する。@(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (n . elem-of . trunc-level))を要素とする。任意の@(math (x . elem-of . A))に対して@(math (B . $ . x))は@(math n)型であると仮定する。@ref["0054"]より、帰納法で型の族@(math (T . elem-of . ((trunc (trunc-level:succ . $ . n) A) . fun-type . (universe . $ . i))))であって、任意の@(math (u . elem-of . (trunc (trunc-level:succ . $ . n) A)))に対して@(math (T . $ . u))は@(math n)型であり、任意の@(math (x . elem-of . A))に対して@(math ((T . $ . (trunc:in (trunc-level:succ . $ . n) x)) . def-eq . (B . $ . x)))であるものを構成できる。@ref["004X"]と@ref["004F"]より@(math (d-pair-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (T . $ . u)))は@(math (trunc-level:succ . $ . n))型なので、関数@(math ((abs z (pair . $* . (trunc:in (trunc-level:succ . $ . n) ((proj 1) . $ . z)) ((proj 2) . $ . z))) . elem-of . ((d-pair-type (x . elem-of . A) (B . $ . x)) . fun-type . (d-pair-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (T . $ . u)))))は関数
    @disp{
      @(math (H . elem-of . ((trunc (trunc-level:succ . $ . n) (d-pair-type (x . elem-of . A) (B . $ . x))) . fun-type . (d-pair-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (T . $ . u)))))
    }
    を誘導する。この時、関数@(math H)は同値である。
  }
  #:proof @proof[
    @paragraph{
      @(math (d-pair-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (T . $ . u)))が@(math (trunc (trunc-level:succ . $ . n) (d-pair-type (x . elem-of . A) (B . $ . x))))と同じ帰納法原理を満たすことを見る。@(math (C . elem-of . ((d-pair-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (T . $ . u)) . fun-type . (universe . $ . i))))を型の族とし、各@(math (C . $ . u))は@(math (trunc-level:succ . $ . n))型であると仮定する。@(math (f . elem-of . (d-fun-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (C . $ . (pair . $* . (trunc:in (trunc-level:succ . $ . n) z) ((proj 2) . $ . z))))))を関数とする。@(math (D . elem-of . (d-fun-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) ((T . $ . u) . fun-type . (universe . $ . i)))))を@(math C)のカリー化、@(math (g . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . (B . $ . x)) (D . $* . (trunc:in (trunc-level:succ . $ . n) x) y)))))を@(math f)のカリー化とする。@ref["0048"]より各@(math (d-fun-type (v . elem-of . (T . $ . u)) (D . $* . u v)))は@(math (trunc-level:succ . $ . n))型なので、帰納法で関数@(math (h . elem-of . (d-fun-type (u . elem-of . (trunc (trunc-level:succ . $ . n) A)) (d-fun-type (v . elem-of . (T . $ . u)) (D . $* . u v)))))を得る。@(math h)を逆カリー化すればよい。
    }
  ]
]
