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
    関数外延性を仮定する。@(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とすると、型@(math (is-biinv . $ . f))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@(math f)が両側可逆であると仮定して@(math (is-biinv . $ . f))が可縮であることを示せばよいが、@ref["004K"]より@(math f)は同値なので、@ref["004Q"]から@(math (is-biinv . $ . f))が可縮であることが従う。
    }
  ]
]
