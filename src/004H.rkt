#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/empty.rkt")

(define i "i")
(define A "A")
(define d "d")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define E "E")
(define T "T")
(define g "g")
(define h "h")
(define z "z")
(define u "u")
(define v "v")
(define w "w")

@theorem[
  #:id (current-id)
  #:title @%{Hedberg}
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (d . elem-of . (d-fun-type (x1 x2 . elem-of* . A) ((x1 . id-type . x2) . coproduct-type . ((x1 . id-type . x2) . fun-type . empty-type)))))を関数とすると、@(math A)は集合である。@ref["Hedberg--1998-0000"]
  }
  #:proof @proof[
    @paragraph{
      @ref["004E"]を適用する。@(math (E . elem-of . (A . fun-type . (A . fun-type . (universe . $ . i)))))を次のように定義する。@(math (x1 x2 . elem-of* . A))に対して、@(math ((T . $* . x1 x2) . elem-of . (((x1 . id-type . x2) . coproduct-type . ((x1 . id-type . x2) . fun-type . empty-type)) . fun-type . (universe . $ . i))))を@(math ((T . $* . x1 x2 ((coproduct-type:in 1) . $ . z)) . def-eq . unit-type))と@(math ((T . $* . x2 x2 ((coproduct-type:in 2) . $ . z)) . def-eq . empty-type))で定義する。@(math ((E . $* . x1 x2) . def-eq . (T . $* . x1 x2 (d . $* . x1 x2))))と定義する。@ref["001O"]と@ref["004F"]と@ref["004G"]から、各@(math (E . $* . x1 x2))は命題である。関数@(math (g . elem-of . (d-fun-type z ((T . $* . x1 x2 z) . fun-type . (x1 . id-type . x2)))))を@(math ((g . $* . ((coproduct-type:in 1) . $ . u) w) . def-eq . u))と@(math ((g . $* . ((coproduct-type:in 2) . $ . v) w) . def-eq . (empty-type:ind . $* . w blank)))で定義できるので、関数@(math ((E . $* . x1 x2) . fun-type . (x1 . id-type . x2)))を得る。最後に、任意の@(math (x . elem-of . A))に対して同値@(math (h . elem-of . (d-fun-type z ((T . $* . x x z) . equiv . unit-type))))を@(math ((h . $ . ((coproduct-type:in 1) . $ . u)) . def-eq . id-fun))と@(math ((h . $ . ((coproduct-type:in 2) . $ . v)) . def-eq . (empty-type:ind . $* . (v . $ . refl) blank)))と定義できるので、関数@(math (d-fun-type (x . elem-of . A) (E . $* . x x)))を得る。
    }
  ]
]
