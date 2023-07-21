#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define r "r")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define f "f")
(define g "g")
(define p "p")
(define F "F")
(define G "G")
(define q "q")
(define z "z")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (r . elem-of . (retract . $* . A B)))を要素、@(math (a1 a2 . elem-of* . A))を要素とすると、@(math (retract . $* . (a1 . id-type . a2) (((r . record-field . retract:section) . $ . a1) . id-type . ((r . record-field . retract:section) . $ . a2))))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @(math (f . def-eq . (r . record-field . retract:section)))と@(math (g . def-eq . (r . record-field . retract:retraction)))と@(math (p . def-eq . (r . record-field . retract:id)))と定義する。@(math (F . elem-of . ((a1 . id-type . a2) . fun-type . ((f . $ . a1) . id-type . (f . $ . a2)))))を@(math (fun-apply-id . $ . f))と定義する。@(math (G . elem-of . (((f . $ . a1) . id-type . (f . $ . a2)) . fun-type . (a1 . id-type . a2))))を@(math (abs q (((p . $ . a2) . id-comp . (fun-apply-id . $* . g q)) . id-comp . (id-inv (p . $ . a1)))))と定義する。@(math (d-fun-type (z . elem-of . (a1 . id-type . a2)) ((G . $ . (F . $ . z)) . id-type . z)))を示すには、同一視型の帰納法により@(math ((G . $ . (F . $ . (refl . $i . a1))) . id-type . (refl . $i . a1)))を示せばよいが、@(math ((G . $ . (F . $ . (refl . $i . a1))) . def-eq . (id-comp (p . $ . a1) (id-inv (p . $ . a1)))))なので@ref["0047"]を適用すればよい。
    }
  ]
]
