#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/bifunctor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define X "X")

@exercise[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C D X . elem-of* . (precat . $ . i)))を前圏とする。同値
    @disp{
      @(math ((functor . $* . X (functor-cat . $* . C D)) . equiv . (bifunctor C X D)))
    }
    を構成せよ。
  }
]
