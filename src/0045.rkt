#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define B "B")
(define r "r")
(define n "n")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (r . elem-of . (retract . $* . A B)))と@(math (n . elem-of . trunc-level))を要素とする。@(math B)が@(math n)型ならば、@(math A)も@(math n)型である。
  }
  #:proof @proof[
    @paragraph{
      @(math n)についての帰納法による。@(math n)が@(math trunc-level:-2)の時は@ref["001K"]による。
    }
    @paragraph{
      @(math n)について主張が成り立つと仮定し、@(math (trunc-level:succ . $ . n))の場合を示す。@(math (x1 x2 . elem-of* . A))に対して、@(math (is-trunc . $* . n (x1 . id-type . x2)))を示せばよいが、@ref["0046"]と帰納法の仮定から直ちに従う。
    }
  ]
]
