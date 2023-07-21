#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define A "A")
(define B "B")
(define n "n")
(define x "x")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define z "z")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (n . elem-of . trunc-level))を要素とする。@(math A)が@(math n)型で、任意の@(math (x . elem-of . A))に対して@(math (B . $ . x))が@(math n)型ならば、@(math (d-pair-type (x . elem-of . A) (B . $ . x)))も@(math n)型である。
  }
  #:proof @proof[
    @paragraph{
      @(math n)についての帰納法による。@(math n)が@(math trunc-level:-2)の場合は容易である。
    }
    @paragraph{
      @(math n)の場合に主張が成り立つと仮定し、@(math (trunc-level:succ . $ . n))の場合を示す。@(math (c1 c2 . elem-of* . (d-pair-type (x . elem-of . A) (B . $ . x))))に対し、@(math (c1 . id-type . c2))が@(math n)型であることを示す。@ref["002B"]より、同値
      @disp{
        @(math ((c1 . id-type . c2) . equiv . (d-pair-type (z . elem-of . (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2))) ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2)))))
      }
      を得る。仮定より、@(math (((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2)))と各@(math ((transport . $* . B z ((proj 2) . $ . c1)) . id-type . ((proj 2) . $ . c2)))は@(math n)型である。よって、帰納法の仮定を適用すればよい。
    }
  ]
]
