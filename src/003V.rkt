#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")

@exercise[
  #:id (current-id)
  @paragraph{
    関数外延性と一価性を仮定する。@(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐とする。@(math B)がカルテシアンで、@(math C)が普遍余錐であると仮定すると、型@disp{
      @(math (prop-compr (D . elem-of . (span/cocone-over . $* . B C)) (span/cocone-is-cartesian . $ . D)))
    }は可縮である。さらに、任意の@(math (D . elem-of . (span/cocone-over . $* . B C)))に対して、@(math D)がカルテシアンならば@(math ((total-span/cocone . $ . D) . elem-of . (span/cocone . $ . (total-span . $ . B))))は普遍余錐である。
  }
]
