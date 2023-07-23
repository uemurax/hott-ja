#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math (is-equiv . $ . f))と@(math (is-hae . $ . f))は論理的に同値であることを示せ。(ヒント:@ref["002H"]の証明を拡張すれば@(math ((is-equiv . $ . f) . fun-type . (is-hae . $ . f)))を示せる。)
  }
]
