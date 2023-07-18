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
(define f "f")
(define g "g")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かりーか"]{カリー化}
    @index[#:key "ぎゃくかりーか"]{逆カリー化}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (C . elem-of . (d-fun-type (x . elem-of . A) ((B . $ . x) . fun-type . (universe . $ . i)))))を型の族とする。
    @unordered-list[
      @list-item{関数@(math (f . elem-of . (d-fun-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (C . $* . ((proj 1) . $ . z) ((proj 2) . $ . z)))))に対し、@dfn{カリー化(currying)}@disp{
        @(math ((curry . $ . f) . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . (B . $ . x)) (C . $* . x y)))))
      }を@(math (abs* x y (f . $ . (pair . $* . x y))))と定義する。}
      @list-item{関数@(math (g . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . (B . $ . x)) (C . $* . x y)))))に対し、@dfn{逆カリー化(uncurrying)}@disp{
        @(math ((uncurry . $ . g) . elem-of . (d-fun-type (z . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))) (C . $* . ((proj 1) . $ . z) ((proj 2) . $ . z)))))
      }を@(math (abs z (g . $* . ((proj 1) . $ . z) ((proj 2) . $ . z))))と定義する。}
    ]
  }
]
