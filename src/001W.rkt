#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define r "r")
(define x "x")
(define y "y")
(define z "z")
(define f "f")
(define g "g")
(define p "p")
(define F "F")
(define G "G")
(define P "P")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B C . elem-of* . (A . fun-type . (universe . $ . i))))を型の族、@(math (r . elem-of . (d-fun-type (x . elem-of . A) (retract . $* . (B . $ . x) (C . $ . x)))))を要素とすると、@(math (retract . $* . (d-pair-type (x . elem-of . A) (B . $ . x)) (d-pair-type (x . elem-of . A) (C . $ . x))))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      仮定@(math r)から関数@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . A)) ((B . $ . x) . fun-type . (C . $ . x)))))と@(math (g . elem-of . (d-fun-type (implicit (x . elem-of . A)) ((C . $ . x) . fun-type . (B . $ . x)))))と同一視@(math (p . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . (B . $ . x)) ((g . $ . (f . $ . y)) . id-type . y)))))を得る。関数@(math (F . elem-of . ((d-pair-type (x . elem-of . A) (B . $ . x)) . fun-type . (d-pair-type (x . elem-of . A) (C . $ . x)))))を@(math (abs z (pair . $* . ((proj 1) . $ . z) (f . $ . ((proj 2) . $ . z)))))と定義する。関数@(math (G . elem-of . ((d-pair-type (x . elem-of . A) (C . $ . x)) . fun-type . (d-pair-type (x . elem-of . A) (B . $ . x)))))も同様に@(math g)を使って定義される。同一視@(math (P . elem-of . (d-fun-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) ((G . $ . (F . $ . z)) . id-type . z))))を定義するために、@(math (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))))を仮定する。構成から@(math (((proj 1) . $ . (G . $ . (F . $ . z))) . def-eq . ((proj 1) . $ . z)))であり、@(math ((p . $* . ((proj 1) . $ . z) ((proj 2) . $ . z)) . elem-of . (((proj 2) . $ . (G . $ . (F . $ . z))) . id-type . ((proj 2) . $ . z))))を得る。@ref["001X"]を使って、@(math (pair . $* . refl (p . $* . ((proj 1) . $ . z) ((proj 2) . $ . z))))から@(math ((G . $ . (F . $ . z)) . id-type . z))の要素を構成できる。
    }
  ]
]
