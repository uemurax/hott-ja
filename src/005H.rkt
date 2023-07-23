#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x1 x2 . elem-of* . C))を対象、@(math (f . elem-of . (cat:map . $* . x1 x2)))を射とすると、型@(math (cat:is-iso . $ . f))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@(math f)が同型であると仮定して@(math (cat:is-iso . $ . f))が可縮であることを示せばよいが、これは@ref["005G"]からすぐに従う。
    }
  ]
]
