#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")
(define h "h")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。米田埋め込み@(math ((yoneda . $ . C) . elem-of . (functor . $* . C (presheaf-cat . $ . C))))は充満忠実である。
  }
  #:proof @proof[
    @paragraph{
      @(math (x1 x2 . elem-of* . C))を対象とする。関数@(math ((abs f ((yoneda . $ . C) . $ . f)) . elem-of . ((cat:map . $* . x1 x2) . fun-type . (cat:map . $* . ((yoneda . $ . C) . $ . x1) ((yoneda . $ . C) . $ . x2)))))と@(math ((abs h (h . $ . (yoneda-gen . $ . x1))) . elem-of . ((cat:map . $* . ((yoneda . $ . C) . $ . x1) ((yoneda . $ . C) . $ . x2)) . fun-type . (((yoneda . $ . C) . $ . x2) . $ . x1))))の合成は@(math (cat:map . $* . x1 x2))上の恒等関数と同一であることが分かる。よって、@ref["002E"]と@ref["006T"]から@(math (abs f ((yoneda . $ . C) . $ . f)))は同値である。
    }
  ]
]
