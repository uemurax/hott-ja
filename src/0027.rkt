#lang morg

(require "lib/math/id.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define p "p")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (p . elem-of . (a1 . id-type . a2)))を同一視とする。同一視@(math ((id-sym-sym . $ . p) . elem-of . ((id-inv (id-inv p)) . id-type . p)))を帰納法により@(math ((id-sym-sym . $ . refl) . def-eq . refl))と定義する。
  }
]
