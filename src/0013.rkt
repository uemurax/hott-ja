#lang morg

(require "lib/math.rkt"
         "lib/math/function.rkt"
         "lib/markup/example.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define x "x")
(define y "y")
(define a x)
(define b y)

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (C . elem-of . (A . fun-type . (B . fun-type . (universe . $ . i)))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of .  B) (C . $* . x y)))))を関数とする。関数@(math ((swap . $ . f) . elem-of . (d-fun-type (y . elem-of . B) (d-fun-type (x . elem-of . A) (C . $* . x y)))))を@(math ((swap . $* . f b a) . def-eq . (f . $* . a b)))と定義する。
  }
]
