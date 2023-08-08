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
(define x "x")
(define z "z")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (p . elem-of . (a1 . id-type . a2)))を同一視とする。同一視@(math ((id-extension-self . $ . p) . elem-of . ((id-extension . $* . p p) . id-type . refl)))を構成する。定義より@(math ((id-extension . $* . refl refl) . def-eq . refl))なので帰納法により@(math ((id-extension-self . $ . refl) . def-eq . refl))と定義すればよい。
  }
]
