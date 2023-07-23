#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define G "G")
(define s "s")
(define t "t")
(define x "x")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F G . elem-of* . (functor . $* . C D)))を関手、@(math (s t . elem-of* . (nat-trans . $* . F G)))を自然変換とすると、同値
    @disp{
      @(math ((s . id-type . t) . equiv . (forall (x . elem-of . C) ((s . $ . x) . id-type . (t . $ . x)))))
    }
    を構成できる。
  }
]
