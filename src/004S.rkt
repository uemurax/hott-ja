#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数、@(math (a1 a2 . elem-of* . A))を要素とする。@(math f)が同値ならば@(math ((fun-apply-id . $ . f) . elem-of . ((a1 . id-type . a2) . fun-type . ((f . $ . a1) . id-type . (f . $ . a2)))))は同値である。
  }
  #:proof @proof[
    @paragraph{
      @ref["004F"]と@ref["005R"]から従う。
    }
  ]
]
