#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define p "p")
(define q "q")
(define x "x")
(define y "y")
(define z "z")
(define y1 (y . _ . "1"))
(define y2 (y . _ . "2"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f g . elem-of* . (A . fun-type . B)))を関数、@(math (p . elem-of . (f . homotopy . g)))をホモトピーとする。@(math f)が同値ならば@(math g)も同値である。
  }
  #:proof @proof[
    @paragraph{
      @(math (q . elem-of . (A . fun-type . (d-pair-type (y1 y2 . elem-of* . B) (y1 . id-type . y2)))))を@(math (abs x (pair . $* . (f . $ . x) (pair . $* . (g . $ . x) (p . $ . x)))))と定義すると、@(math (((abs z ((proj 1) . $ . z)) . fun-comp . q) . def-eq . f))かつ@(math (((abs z ((proj 1) . $ . ((proj 2) . $ . z))) . fun-comp . q) . def-eq . g))である。@ref["002E"]と@ref["002J"]と仮定から@(math q)が同値であると分かり、すると@ref["002E"]と@ref["002K"]から@(math g)が同値であると分かる。
    }
  ]
]
