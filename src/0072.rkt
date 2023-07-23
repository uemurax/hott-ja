#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")
(define A "A")
(define B "B")
(define f "f")
(define x "x")
(define a "a")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A B . elem-of* . (presheaf-cat . $ . C)))を前層、@(math (f . elem-of . (cat:map . $* . A B)))を射とする。次は論理的に同値である。
    @ordered-list[
      @list-item{@(math f)は@(math (presheaf-cat . $ . C))の射として同型である。}
      @list-item{任意の対象@(math (x . elem-of . C))に対して、関数@(math ((abs a (f . $ . a)) . elem-of . ((A . $ . x) . fun-type . (B . $ . x))))は同値である。}
    ]
  }
]
