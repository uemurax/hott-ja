#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math (is-equiv . $ . f))と@(math (is-biinv . $ . f))は論理的に同値である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0026"]と@ref["002G"]と@ref["002F"]と@ref["002H"]から従う。
    }
  ]
]
