#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define p " p")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (p . elem-of . (a1 . id-type . a2)))を同一視とする。同一視@(math ((id-unit-l . $ . p) . elem-of . ((refl . id-comp . p) . id-type . p)))と@(math ((id-unit-r . $ . p) . elem-of . (p . id-type . (p . id-comp . refl))))を構成せよ。
  }
]
