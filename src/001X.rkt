#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define x "x")
(define y "y")
(define z "z")
(define w "w")
(define f "f")
(define f- "f'")
(define g "g")
(define g- "g'")
(define p "p")
(define p- "p'")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (c1 c2 . elem-of* . (d-pair-type (x . elem-of . A) (B . $ . x))))を要素とすると、@disp{
      @(math (retract . $* . (d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2))) (c1 . id-type . c2)))
    }の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      関数@(math (f . elem-of . ((d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2))) . fun-type . (c1 . id-type . c2))))と@(math (g . elem-of . ((c1 . id-type . c2) . fun-type . (d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2))))))と同一視@(math (p . elem-of . (d-fun-type w ((g . $ . (f . $ . w)) . id-type . w))))を構成する。@(math f)についてはカリー化、一般化して@disp{
        @(math (f- . elem-of . (d-fun-type (implicit (x . elem-of . A)) (d-fun-type (implicit (y . elem-of . (B . $ . x))) (d-fun-type (z . elem-of . (((proj 1) . $ . c1) . id-type . x)) (((transport . $* . B z ((proj 2) . $ . c1)) . id-type . y) . fun-type . (c1 . id-type . (pair . $* . x y))))))))
      }を構成すればよいが、同一視型の帰納法により@(math ((f- . $* . refl refl) . def-eq . refl))と定義できる。@(math g)は一般化して@disp{
        @(math (g- . elem-of . (d-fun-type (implicit (y . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x)))) ((c1 . id-type . y) . fun-type . (d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . y))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . y)))))))
      }を帰納法で@(math ((g- . $ . refl) . def-eq . (pair . $* . refl refl)))と定義する。@(math p)も@(math f)と同様にカリー化、一般化して@disp{
        @(math (p- . elem-of . (d-fun-type (implicit x) (d-fun-type (implicit y) (d-fun-type (z . elem-of . (((proj 1) . $ . c1) . id-type . x)) (d-fun-type (w . elem-of . ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . y)) ((g- . $ . (f- . $* . z w)) . id-type . (pair . $* . z w))))))))
      }を帰納法により@(math ((p- . $* . refl refl) . def-eq . refl))と定義する。
    }
  ]
]
