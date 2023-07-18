#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/qinv.rkt"
         "lib/math/hae.rkt"
         "lib/math/biinv.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math (is-equiv . $ . f))と@(math (qinv . $ . f))は論理的に同値である。
  }
  #:proof @proof[
    @paragraph{
      @(math ((is-hae . $ . f) . fun-type . (qinv . $ . f)))と@(math ((qinv . $ . f) . fun-type . (is-biinv . $ . f)))は容易に示せるので、@ref["004K"]と@ref["004M"]を使う。
    }
  ]
]
