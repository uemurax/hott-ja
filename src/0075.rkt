#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "C")
(define F "F")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手とする。@(math D)が圏で、@(math F)が本質的全射ならば、@(math ((F . record-field . functor:obj) . elem-of . ((C . record-field . cat:obj) . fun-type . (D . record-field . cat:obj))))は全射である。
  }
  #:proof @proof[
    @paragraph{
      定義からすぐである。
    }
  ]
]
