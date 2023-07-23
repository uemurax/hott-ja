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
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (p . elem-of . (a1 . id-type . a2)))を同一視とする。同一視@(math ((id-extension-self . $ . p) . elem-of . ((id-extension . $* . p p) . id-type . refl)))を次のように構成する。同一視型の帰納法により、@(math a2)が@(math a1)で@(math p)が@(math refl)の場合を考えれば十分である。定義より@(math ((id-extension . $* . refl refl) . def-eq . refl))なので@(math ((id-extension-self . $ . refl) . def-eq . refl))と定義する。形式的に書けば@(math ((id-extension-self . $ . p) . def-eq . (id-ind . $* . p (abs* x z ((id-extension . $* . z z) . id-type . (refl . $i . x))) refl)))である。
  }
]
