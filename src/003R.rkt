#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/fiber-coproduct.rkt"
         "lib/math/id-over.rkt")

(define i "i")
(define j "j")
(define A "A")
(define B "B")
(define C "C")
(define E "E")
(define f "f")
(define g "g")
(define a "a")
(define b "b")
(define c "c")
(define d "d")
(define e "e")
(define e1 (e . _ . "1"))
(define e2 (e . _ . "2"))
(define p "p")
(define x "x")
(define y "y")
(define z "z")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ふぁいばーよせき"]{ファイバー余積}
    @notation-index[#:key "A f+g B"]{@(math (A . (fiber-coproduct-type f g) . B))}
    @notation-index[#:key "in1"]{@(math (fiber-coproduct-type:in 1)) (ファイバー余積)}
    @notation-index[#:key "in2"]{@(math (fiber-coproduct-type:in 2)) (ファイバー余積)}
    @notation-index[#:key "glue"]{@(math fiber-coproduct-type:glue)}
    @notation-index[#:key "ind.+."]{@(math fiber-coproduct-type:ind)}
    @notation-index[#:key "ind.+.-glue"]{@(math fiber-coproduct-type:ind-glue)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B C . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (C . fun-type . A)))と@(math (g . elem-of . (C . fun-type . B)))を関数とする。
    @unordered-list[
      @list-item{@dfn{ファイバー余積(fiber coproduct)} @(math ((A . (fiber-coproduct-type f g) . B) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))に対して、要素@(math (((fiber-coproduct-type:in 1) . $ . a) . elem-of . (A . (fiber-coproduct-type f g) . B)))を構成できる。}
      @list-item{要素@(math (b . elem-of . B))に対して、要素@(math (((fiber-coproduct-type:in 2) . $ . b) . elem-of . (A . (fiber-coproduct-type f g) . B)))を構成できる。}
      @list-item{要素@(math (c . elem-of . C))に対して、同一視@(math ((fiber-coproduct-type:glue . $ . c) . elem-of . (((fiber-coproduct-type:in 1) . $ . (f . $ . c)) . id-type . ((fiber-coproduct-type:in 2) . $ . (g . $ . c)))))を構成できる。}
      @list-item{@(math (d . elem-of . (A . (fiber-coproduct-type f g) . B)))を要素、@(math j)を階数、@(math (E . elem-of . ((A . (fiber-coproduct-type f g) . B) . fun-type . (universe . $ . j))))を型の族、@(math (e1 . elem-of . (d-fun-type (x . elem-of . A) (E . $ . ((fiber-coproduct-type:in 1) . $ . x)))))と@(math (e2 . elem-of . (d-fun-type (y . elem-of . B) (E . $ . ((fiber-coproduct-type:in 2) . $ . y)))))を関数、@(math (p . elem-of . (d-fun-type (z . elem-of . C) ((e1 . $ . (f . $ . z)) . (id-type-over E (fiber-coproduct-type:glue . $ . z)) . (e2 . $ . (g . $ . z))))))を同一視とすると、要素@(math ((fiber-coproduct-type:ind . $* . d E e1 e2 p) . elem-of . (E . $ . d)))を構成できる。}
      @list-item{@(math (a . elem-of . A))を要素、@(math j)を階数、@(math (E . elem-of . ((A . (fiber-coproduct-type f g) . B) . fun-type . (universe . $ . j))))を型の族、@(math (e1 . elem-of . (d-fun-type (x . elem-of . A) (E . $ . ((fiber-coproduct-type:in 1) . $ . x)))))と@(math (e2 . elem-of . (d-fun-type (y . elem-of . B) (E . $ . ((fiber-coproduct-type:in 2) . $ . y)))))を関数、@(math (p . elem-of . (d-fun-type (z . elem-of . C) ((e1 . $ . (f . $ . z)) . (id-type-over E (fiber-coproduct-type:glue . $ . z)) . (e2 . $ . (g . $ . z))))))を同一視とすると、@(math ((fiber-coproduct-type:ind . $* . ((fiber-coproduct-type:in 1) . $ . a) E e1 e2 p) . def-eq . (e1 . $ . a)))と定義される。}
      @list-item{@(math (b . elem-of . B))を要素、@(math j)を階数、@(math (E . elem-of . ((A . (fiber-coproduct-type f g) . B) . fun-type . (universe . $ . j))))を型の族、@(math (e1 . elem-of . (d-fun-type (x . elem-of . A) (E . $ . ((fiber-coproduct-type:in 1) . $ . x)))))と@(math (e2 . elem-of . (d-fun-type (y . elem-of . B) (E . $ . ((fiber-coproduct-type:in 2) . $ . y)))))を関数、@(math (p . elem-of . (d-fun-type (z . elem-of . C) ((e1 . $ . (f . $ . z)) . (id-type-over E (fiber-coproduct-type:glue . $ . z)) . (e2 . $ . (g . $ . z))))))を同一視とすると、@(math ((fiber-coproduct-type:ind . $* . ((fiber-coproduct-type:in 2) . $ . b) E e1 e2 p) . def-eq . (e2 . $ . b)))と定義される。}
      @list-item{@(math (c . elem-of . C))を要素、@(math j)を階数、@(math (E . elem-of . ((A . (fiber-coproduct-type f g) . B) . fun-type . (universe . $ . j))))を型の族、@(math (e1 . elem-of . (d-fun-type (x . elem-of . A) (E . $ . ((fiber-coproduct-type:in 1) . $ . x)))))と@(math (e2 . elem-of . (d-fun-type (y . elem-of . B) (E . $ . ((fiber-coproduct-type:in 2) . $ . y)))))を関数、@(math (p . elem-of . (d-fun-type (z . elem-of . C) ((e1 . $ . (f . $ . z)) . (id-type-over E (fiber-coproduct-type:glue . $ . z)) . (e2 . $ . (g . $ . z))))))を同一視とすると、同一視@(math ((fiber-coproduct-type:ind-glue . $* . c E e1 e2 p) . elem-of . ((fun-apply-id/d . $* . (abs d (fiber-coproduct-type:ind . $* . d E e1 e2 p)) (fiber-coproduct-type:glue . $ . c)) . id-type . (p . $ . c))))を構成できる。}
    ]
  }
]
