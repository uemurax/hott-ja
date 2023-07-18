#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define h "h")
(define p "p")
(define q "q")
(define G "G")
(define P "P")
(define x "x")
(define y "y")
(define z "z")
(define r "r")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。@(math f)が同値ならば、関数@(math (g h . elem-of* . (B . fun-type . A)))とホモトピー@(math (p . elem-of . ((f . fun-comp . g) . homotopy . id-fun)))と@(math (q . elem-of . ((h . fun-comp . f) . homotopy . id-fun)))を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @(math f)が同値であると仮定する。関数@(math (G . elem-of . (d-fun-type (y . elem-of . B) (fiber . $* . f y))))と同一視@(math (P . elem-of . (d-fun-type (y . elem-of . B) (d-fun-type (z . elem-of . (fiber . $* . f y)) ((G . $ . y) . id-type . z)))))を得る。@(math (g . def-eq . (abs y ((G . $ . y) . record-field . fiber:elem))))と@(math (p . def-eq . (abs y ((G . $ . y) . record-field . fiber:id))))と定義する。@(math (r . elem-of . (d-fun-type (x . elem-of . A) (fiber . $* . f (f . $ . x)))))を@(math (r . def-eq . (abs x (record-elem (list fiber:elem x) (list fiber:id refl)))))と定義する。@(math (h . def-eq . g))と定義し、@(math (q . def-eq . (abs x (fun-apply-id . $* . (abs z (z . record-field . fiber:id)) (P . $* . (f . $ . x) (r . $ . x))))))と定義すればよい。
    }
  ]
]
