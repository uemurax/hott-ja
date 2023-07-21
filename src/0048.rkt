#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define B "B")
(define n "n")
(define x "x")
(define f "f")
(define g "g")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (n . elem-of . trunc-level))を要素とする。@(math (d-fun-type (x . elem-of . A) (is-trunc . $* . n (B . $ . x))))の要素があるならば、@(math (d-fun-type (x . elem-of . A) (B . $ . x)))は@(math n)型である。
  }
  #:proof @proof[
    @paragraph{
      @(math n)についての帰納法による。@(math n)が@(math trunc-level:-2)の場合は@ref["0029"]による。
    }
    @paragraph{
      @(math n)の場合に主張が成り立つと仮定し、@(math (trunc-level:succ . $ . n))の場合を示す。@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))と@(math (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))に対し、@(math (f . id-type . g))が@(math n)型であることを示す。関数外延性より、同値@(math ((f . id-type . g) . equiv . (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))を得る。各@(math ((f . $ . x) . id-type . (g . $ . x)))は@(math B)についての仮定より@(math n)型であるから、帰納法の仮定と@ref["0045"]から@(math (f . id-type . g))は@(math n)型である。
    }
  ]
]
