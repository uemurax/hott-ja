#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手、@(math (x1 x2 . elem-of* . C))を対象、@(math (f . elem-of . (cat:map . $* . x1 x2)))を射とする。@(math F)は充満忠実であると仮定する。@(math (F . $ . f))が同型ならば@(math f)は同型であることを示せ。
  }
]
