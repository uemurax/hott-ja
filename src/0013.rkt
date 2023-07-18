#lang morg

(require "lib/math.rkt"
         "lib/math/function.rkt"
         "lib/markup/exercise.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define x "x")
(define y "y")
(define a "a")
(define b "b")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (C . elem-of . (A . fun-type . (B . fun-type . (universe . $ . i)))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of .  B) (C . $* . x y)))))を関数とする。関数@(math ((swap . $ . f) . elem-of . (d-fun-type (y . elem-of . B) (d-fun-type (x . elem-of . A) (C . $* . x y)))))であって、任意の要素@(math (a . elem-of . A))と@(math (b . elem-of . B))に対して@(math ((swap . $* . f b a) . def-eq . (f . $* . a b)))となるものを構成せよ。
  }
]
