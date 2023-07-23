#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define z "z")
(define F "F")
(define G "G")
(define f "f")
(define g "g")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とすると、@(math (d-fun-type (x . elem-of . A) (B . $ . x)))は@(math (section-of-proj . $* . A B))のレトラクトである。
  }
  #:proof @proof[
    @paragraph{
      関数@(math (F . elem-of . ((d-fun-type (x . elem-of . A) (B . $ . x)) . fun-type . (section-of-proj . $* . A B))))を
      @disp{
        @(math (abs f (record-elem (list fiber:elem (abs x (pair . $* . x (f . $ . x)))) (list fiber:id refl))))
      }
      と定義し、関数@(math (G . elem-of . ((section-of-proj . $* . A B) . fun-type . (d-fun-type (x . elem-of . A) (B . $ . x)))))を
      @disp{
        @(math (abs z (abs x (transport . $* . (abs g (B . $ . (g . $ . x))) (z . record-field . fiber:id) ((proj 2) . $ . ((z . record-field . fiber:elem) . $ . x))))))
      }
      と定義すると、@(math ((G . fun-comp . F) . def-eq . id-fun))である。
    }
  ]
]
