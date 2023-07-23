#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x1 x2 . elem-of* . C))を対象とする。型@(math ((x1 . cat:iso . x2) . elem-of . (universe . $ . i)))を@(math (prop-compr (f . elem-of . (cat:map . $* . x1 x2)) (cat:is-iso . $ . f)))と定義する。
  }
]
