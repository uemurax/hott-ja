#lang morg

(require "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性と一価性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とすると、@(math (presheaf . $ . C))は圏である。
  }
]
