#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define n "n")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とする。@(math A)が@(math n)型ならば、@(math A)は@(math (trunc-level:succ . $ . n))型である。
  }
  #:proof @proof[
    @paragraph{
      @(math n)についての帰納法による。@(math n)が@(math trunc-level:-2)の場合は@ref["001L"]による。
    }
    @paragraph{
      @(math n)の場合に主張が成り立つと仮定して、@(math (trunc-level:succ . $ . n))の場合を示す。@(math A)が@(math (trunc-level:succ . $ . n))型と仮定して、任意の@(math (x1 x2 . elem-of* . A))に対して@(math (x1 . id-type . x2))が@(math (trunc-level:succ . $ . n))型であることを示せばよいが、仮定と帰納法の過程から直ちに従う。
    }
  ]
]
