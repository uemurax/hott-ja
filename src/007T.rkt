#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐、@(math (D . elem-of . (span/cocone-over . $* . B C)))を@(math C)上の余錐とする。@(math B)がカルテシアンで、@(math C)が普遍余錐で、@(math D)がカルテシアンならば、@(math ((total-span/cocone . $ . D) . elem-of . (span/cocone . $ . (total-span . $ . B))))は普遍余錐である。
  }
]
