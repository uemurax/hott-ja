#lang morg

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup/example.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define x "x")
(define y "y")
(define f "f")
(define h "h")
(define k "k")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (C . elem-of . (d-fun-type (x . elem-of . A) ((B . $ . x) . fun-type . (universe . $ . i)))))を型の族とする。
    @unordered-list[
      @list-item{関数@(math ((fun-pair-dist . $ . C) . elem-of . ((d-fun-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) (C . $* . x y))) . fun-type . (d-pair-type (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (d-fun-type (x . elem-of . A) (C . $* . x (f . $ . x)))))))を@(math (abs h (pair . $* . (abs x ((proj 1) . $ . (h . $ . x))) (abs x ((proj 2) . $ . (h . $ . x))))))と定義する。}
      @list-item{関数@(math ((fun-pair-dist-inv . $ . C) . elem-of . ((d-pair-type (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (d-fun-type (x . elem-of . A) (C . $* . x (f . $ . x)))) . fun-type . (d-fun-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) (C . $* . x y))))))を@(math (abs k (abs x (pair . $* . ((proj 1) . $ . (k . $ . x)) ((proj 2) . $ . (k . $ . x))))))と定義する。}
    ]
  }
]
