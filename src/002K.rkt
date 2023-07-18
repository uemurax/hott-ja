#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define z "z")
(define f "f")
(define g "g")
(define h "h")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。関数@(math ((abs x (pair . $* . x (pair . $* . x refl))) . elem-of . (A . fun-type . (d-pair-type (x1 x2 . elem-of* . A) (x1 . id-type . x2)))))と@(math ((abs z ((proj 1) . $ . ((proj 2) . $ . z))) . elem-of . ((d-pair-type (x1 x2 . elem-of* . A) (x1 . id-type . x2)) . fun-type . A)))は同値である。
  }
  #:proof @proof[
    @paragraph{
      @(math (f . def-eq . (abs z ((proj 1) . $ . z))))と@(math (g . def-eq . (abs x (pair . $* . x (pair . $* . x refl)))))と@(math (h . def-eq . (abs z ((proj 1) . $ . ((proj 2) . $ . z)))))と定義すると、@(math ((f . fun-comp . g) . def-eq . id-fun))かつ@(math ((h . fun-comp . g) . def-eq . id-fun))である。@ref["002J"]より@(math f)は同値であるから、@ref["002E"]と@ref["0026"]から@(math g)も同値であると分かる。すると、再び@ref["002E"]と@ref["0026"]から@(math h)も同値であると分かる。
    }
  ]
]
