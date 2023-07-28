#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/coproduct.rkt")

(define i "i")
(define j "j")
(define A "A")
(define B "B")
(define D "D")
(define a "a")
(define b "b")
(define c "c")
(define d "d")
(define d1 (d . _ . "1"))
(define d2 (d . _ . "2"))
(define x "x")
(define y "y")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "よせき"]{余積}
    @notation-index[#:key "A+B"]{@(math (A . coproduct-type . B))}
    @notation-index[#:key "in1"]{@(math (coproduct-type:in 1)) (余積)}
    @notation-index[#:key "in2"]{@(math (coproduct-type:in 2)) (余積)}
    @notation-index[#:key "ind+"]{@(math coproduct-type:ind)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。
    @unordered-list[
      @list-item{@dfn{余積(coproduct)}@(math ((A . coproduct-type . B) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))に対して、要素@(math (((coproduct-type:in 1) . $ . a) . elem-of . (A . coproduct-type . B)))を構成できる。}
      @list-item{要素@(math (b . elem-of . B))に対して、要素@(math (((coproduct-type:in 2) . $ . b) . elem-of . (A . coproduct-type . B)))を構成できる。}
      @list-item{@(math (c . elem-of . (A . coproduct-type . B)))を要素、@(math j)を階数、@(math (D . elem-of . ((A . coproduct-type . B) . fun-type . (universe . $ . j))))を型の族、@(math (d1 . elem-of . (d-fun-type (x . elem-of . A) (D . $ . ((coproduct-type:in 1) . $ . x)))))を要素、@(math (d2 . elem-of . (d-fun-type (y . elem-of . B) (D . $ . ((coproduct-type:in 2) . $ . y)))))を要素とすると、要素@(math ((coproduct-type:ind . $* . c D d1 d2) . elem-of . (D . $ . c)))を構成できる。}
      @list-item{@(math (a . elem-of . A))を要素、@(math j)を階数、@(math (D . elem-of . ((A . coproduct-type . B) . fun-type . (universe . $ . j))))を型の族、@(math (d1 . elem-of . (d-fun-type (x . elem-of . A) (D . $ . ((coproduct-type:in 1) . $ . x)))))を要素、@(math (d2 . elem-of . (d-fun-type (y . elem-of . B) (D . $ . ((coproduct-type:in 2) . $ . y)))))を要素とすると、@(math ((coproduct-type:ind . $* . ((coproduct-type:in 1) . $ . a) D d1 d2) . def-eq . (d1 . $ . a)))と定義される。}
      @list-item{@(math (b . elem-of . B))を要素、@(math j)を階数、@(math (D . elem-of . ((A . coproduct-type . B) . fun-type . (universe . $ . j))))を型の族、@(math (d1 . elem-of . (d-fun-type (x . elem-of . A) (D . $ . ((coproduct-type:in 1) . $ . x)))))を要素、@(math (d2 . elem-of . (d-fun-type (y . elem-of . B) (D . $ . ((coproduct-type:in 2) . $ . y)))))を要素とすると、@(math ((coproduct-type:ind . $* . ((coproduct-type:in 2) . $ . b) D d1 d2) . def-eq . (d2 . $ . b)))と定義される。}
    ]
  }
]
