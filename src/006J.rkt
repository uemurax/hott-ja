#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define A "A")
(define B "B")

@theorem[
  #:id (current-id)
  @paragraph{
    関数外延性と一価性を仮定する。@(math i)を階数とすると、@(math (set-cat . $ . i))は圏である。
  }
  #:proof @proof[
    @paragraph{
      対象@(math (A B . elem-of* . (set-cat . $ . i)))に対して、@ref["006I"]より@(math ((A . cat:iso . B) . equiv . (A . equiv . B)))を得て、一価性と@ref["0049"]より@(math ((A . equiv . B) . equiv . (A . id-type . B)))を得る。
    }
  ]
]
