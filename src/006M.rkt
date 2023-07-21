#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。@(math (presheaf-cat . $ . C))と@(math (functor-cat . $* . (opposite-cat . $ . C) (set-cat . $ . i)))の間の前圏の同型を構成せよ。
  }
]
