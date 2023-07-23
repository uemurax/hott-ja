#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define a "a")
(define x "x")
(define y "y")
(define z "z")
(define w "w")
(define p "p")
(define q "q")
(define r "r")
(define f "f")
(define g "g")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (a . elem-of . A))を要素とする。@(math A)が可縮ならば@(math ((d-pair-type (x . elem-of . A) (B . $ . x)) . bi-retract-rel . (B . $ . a)))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @(math A)が可縮であると仮定する。@ref["001L"]より、関数@(math (p . elem-of . (d-fun-type (x . elem-of . A) (x . id-type . a))))を得る。関数@(math (f . elem-of . ((d-pair-type (x . elem-of . A) (B . $ . x)) . fun-type . (B . $ . a))))を@(math (abs z (transport . $* . B (p . $ . ((proj 1) . $ . z)) ((proj 2) . $ . z))))と定義し、関数@(math (g . elem-of . ((B . $ . a) . fun-type . (d-pair-type (x . elem-of . A) (B . $ . x)))))を@(math (abs y (pair . $* . a y)))と定義する。定義より、任意の@(math (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))))に対して、@(math ((p . $ . ((proj 1) . $ . z)) . elem-of . (((proj 1) . $ . z) . id-type . ((proj 1) . $ . (g . $ . (f . $ . z))))))と@(math (refl . elem-of . ((transport . $* . B (p . $ . ((proj 1) . $ . z)) ((proj 2) . $ . z)) . id-type . ((proj 2) . $ . (g . $ . (f . $ . z))))))を得るので、@ref["001X"]より同一視@(math (q . elem-of . (d-fun-type z ((g . $ . (f . $ . z)) . id-type . z))))を得る。また、@ref["001L"]より同一視@(math (r . elem-of . ((p . $ . a) . id-type . refl)))も得られるので、同一視@(math ((abs y (fun-apply-id . $* . (abs w (transport . $* . B w y)) r)) . elem-of . (d-fun-type (y . elem-of . (B . $ . a)) ((f . $ . (g . $ . y)) . id-type . y))))を得る。
    }
  ]
]
