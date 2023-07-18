#lang morg

(require "lib/markup/rule.rkt"
         "lib/math.rkt")

(define i "i")
(define j "j")
(define A "A")
(define B "B")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define b "b")
(define p "p")
(define x "x")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "どういつしがた"]{同一視型}
    @index[#:key "どういつし"]{同一視}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 . elem-of . A))を要素とする。
    @unordered-list[
      @list-item{要素@(math (a2 . elem-of . A))に対し、@dfn{同一視型(identity type)}@(math ((a1 . id-type . a2) . elem-of . (universe . $ . i)))を構成できる。@(math (a1 . id-type . a2))の要素を@(math a1)と@(math a2)の@dfn{同一視(identification)}と呼ぶ。}
      @list-item{要素@(math ((refl . $i . a1) . elem-of . (a1 . id-type . a1)))を構成できる。}
      @list-item{@(math (a2 . elem-of . A))と@(math (p . elem-of . (a1 . id-type . a2)))を要素、@(math j)を階数、@(math (B . elem-of . (d-fun-type (implicit (x . elem-of . A)) ((a1 . id-type . x) . fun-type . (universe . $ . j)))))を型の族、@(math (b . elem-of . (B . $ . refl)))を要素とすると、要素@(math ((id-ind . $* . p B b) . elem-of . (B . $ . p)))を構成できる。}
      @list-item{@(math j)を階数、@(math (B . elem-of . (d-fun-type (implicit (x . elem-of . A)) ((a1 . id-type . x) . fun-type . (universe . $ . j)))))を型の族、@(math (b . elem-of . (B . $ . refl)))を要素とすると、@(math ((id-ind . $* . refl B b) . def-eq . b))と定義される。}
    ]
  }
]
