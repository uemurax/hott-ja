#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define y "y")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手とする。@(math C)と@(math D)が圏で、@(math F)が充満忠実ならば、@(math ((F . record-field . functor:obj) . elem-of . ((C . record-field . cat:obj) . fun-type . (D . record-field . cat:obj))))は埋め込みである。
  }
  #:proof @proof[
    @paragraph{
      @(math (y . elem-of . D))を対象とする。@(math D)が圏であることから、@(math (fiber . $* . (F . record-field . functor:obj) y))は@(math (iso-fiber . $* . F y))のレトラクトであることが分かる。後者は@ref["006Z"]より命題である。
    }
  ]
]
