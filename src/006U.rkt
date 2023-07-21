#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")
(define x "x")

@notation[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x . elem-of . C))を対象とする。要素@(math ((yoneda-gen . $ . x) . elem-of . (((yoneda . $ . C) . $ . x) . $ . x)))を@(math (cat:id . $ . x))と定義する。
  }
]
