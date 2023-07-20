#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/proposition.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")

@exercise[
  #:id (current-id)
  #:title @%{前圏の構造同一原理}
  @paragraph{
    一価性と関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏とする。同値@disp{
      @(math ((C . id-type . D) . equiv . (prop-compr (F . elem-of . (functor . $* . C D)) (is-precat-equiv . $ . F))))
    }を構成せよ。
  }
]
