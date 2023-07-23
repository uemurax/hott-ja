#lang morg

(require "lib/markup/rule.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define b "b")
(define a "a")
(define f "f")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かんすうがた"]{関数型}
    @index[#:key "かんすう"]{関数}
    @index[#:key "らむだちゅうしょう"]{ラムダ抽象}
    @index[#:key "かんすうてきよう"]{関数適用}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (universe . $ . i)))を仮定@(math (x . elem-of . A))の下での型とする。
    @unordered-list[
      @list-item{@dfn{関数型(function type)}@(math ((d-fun-type (x . elem-of . A) B) . elem-of . (universe . $ . i)))を構成できる。@(math (d-fun-type (x . elem-of . A) B))の要素を@dfn{関数(function)}と呼ぶ。}
      @list-item{仮定@(math (x . elem-of . A))の下での要素@(math (b . elem-of . B))に対し、@dfn{ラムダ抽象(lambda abstraction)}@(math ((abs x b) . elem-of . (d-fun-type (x . elem-of . A) B)))を構成できる。}
      @list-item{要素@(math (f . elem-of . (d-fun-type (x . elem-of . A) B)))と@(math (a . elem-of . A))に対し、@dfn{関数適用(function application)}@(math ((f . $ . a) . elem-of . (B . subst-apply . (list x a))))を構成できる。}
      @list-item{@(math (b . elem-of . B))を仮定@(math (x . elem-of . A))の下での要素、@(math (a . elem-of . A))を要素とする。このとき、@(math (((abs x b) . $ . a) . def-eq . (b . subst-apply . (list x a))))と定義される。}
      @list-item{要素@(math (f . elem-of . (d-fun-type (x . elem-of . A) B)))に対し、@(math (f . def-eq . (abs x (f . $ . x))))と定義される。}
    ]
  }
]
