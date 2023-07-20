#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define X "X")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。@(math (universe . $ . i))が一価性を満たし、@(math f)が同値ならば、任意の型@(math (X . elem-of . (universe . $ . i)))に対して関数@(math ((abs g (f . fun-comp . g)) . elem-of . ((paren (X . fun-type . A)) . fun-type . (paren (X . fun-type . B)))))は同値である。
  }
  #:proof @proof[
    @paragraph{
      一価性より、@(math f)が恒等関数の場合を示せば十分であるが、@(math ((abs g (id-fun . fun-comp . g)) . def-eq . (abs g g)))なのでこれは同値である。
    }
  ]
]
