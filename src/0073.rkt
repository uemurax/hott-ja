#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")
(define A "A")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A . elem-of . (presheaf . $ . C)))を前層とする。@(math C)が圏ならば、@(math (is-repr-psh . $ . A))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0071"]と@ref["006V"]と@ref["006Z"]から従う。
    }
  ]
]
