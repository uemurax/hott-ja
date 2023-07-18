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
(define z "z")
(define w "w")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (C . elem-of . (d-fun-type (x . elem-of . A) ((B . $ . x) . fun-type . (universe . $ . i)))))を型の族とする。
    @unordered-list[
      @list-item{関数@(math ((pair-assoc . $ . C) . elem-of . ((d-pair-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (C . $* . ((proj 1) . $ . z) ((proj 2) . $ . z))) . fun-type . (d-pair-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) (C . $* . x y))))))を@(math (abs w (pair . $* . ((proj 1) . $ . ((proj 1) . $ . w)) (pair . $* . ((proj 2) . $ . ((proj 1) . $ . w)) ((proj 2) . $ . w)))))と定義する。}
      @list-item{関数@(math ((pair-assoc-inv . $ . C) . elem-of . ((d-pair-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) (C . $* . x y))) . fun-type . (d-pair-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (C . $* . ((proj 1) . $ . z) ((proj 2) . $ . z))))))を@(math (abs w (pair . $* . (pair . $* . ((proj 1) . $ . w) ((proj 1) . $ . ((proj 2) . $ . w))) ((proj 2) . $ . ((proj 2) . $ . w)))))と定義する。}
    ]
  }
]
