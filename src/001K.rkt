#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define r "r")
(define d "d")
(define a "a")
(define p "p")
(define x "x")
(define y "y")
(define b "b")
(define q "q")
(define f "f")
(define g "g")
(define t "t")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (r . elem-of . (retract . $* . A B)))を要素とする。@(math B)が可縮ならば@(math A)も可縮である。
  }
  #:proof @proof[
    @paragraph{
      @(math (d . elem-of . (is-contr . $ . B)))と仮定する。要素@(math (a . elem-of . A))と@(math (p . elem-of . (d-fun-type (x . elem-of . A) (a . id-type . x))))を構成すればよい。仮定@(math d)から@(math (b . elem-of . B))と@(math (q . elem-of . (d-fun-type (y . elem-of . B) (b . id-type . y))))を得る。仮定@(math r)から@(math (f . elem-of . (B . fun-type . A)))と@(math (g . elem-of . (A . fun-type . B)))と@(math (t . elem-of . (d-fun-type (x . elem-of . A) ((f . $ . (g . $ . x)) . id-type . x))))を得る。@(math (a . def-eq . (f . $ . b)))と定義する。@(math p)を定義するために、@(math (x . elem-of . A))を仮定する。@(math ((q . $ . (g . $ . x)) . elem-of . (b . id-type . (g . $ . x))))と@(math ((t . $ . x) . elem-of . ((f . $ . (g . $ . x)) . id-type . x)))に注意して、@(math ((p . $ . x) . def-eq . ((t . $ . x) . id-comp . (fun-apply-id . $* . f (q . $ . (g . $ . x))))))と定義すればよい。
    }
  ]
]
