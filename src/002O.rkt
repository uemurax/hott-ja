#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define a3 (a . _ . "3"))
(define a4 (a . _ . "4"))
(define p "p")
(define p1 (p . _ . "1"))
(define p2 (p . _ . "2"))
(define p3 (p . _ . "3"))

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 a3 a4 . elem-of* . A))を要素、@(math (p1 . elem-of . (a1 . id-type . a2)))と@(math (p2 . elem-of . (a2 . id-type . a3)))と@(math (p3 . elem-of . (a3 . id-type . a4)))を同一視とする。同一視@(math ((id-assoc . $* . p3 p2 p1) . elem-of . (((p3 . id-comp . p2) . id-comp . p1) . id-type . (p3 . id-comp . (p2 . id-comp . p1)))))を構成する。同一視型の帰納法により、@(math ((id-assoc . $* . p3 p2 refl) . def-eq . refl))と定義すればよい。
  }
]
