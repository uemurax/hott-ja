#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/example.rkt")

(define i "i")
(define A "A")
(define B "B")
(define z "z")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。関数@(math ((pair-sym . $* . A B) . elem-of . ((A . pair-type . B) . fun-type . (B . pair-type . A))))を@(math (abs z (pair . $* . ((proj 2) . $ . z) ((proj 1) . $ . z))))と定義する。
  }
]
