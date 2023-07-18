#lang morg

(require "lib/markup/rule.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define a "a")
(define b "b")
(define c "c")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ついがた"]{対型}
    @index[#:key "つい"]{対}
    @index[#:key "しゃえい"]{射影}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とする。
    @unordered-list[
      @list-item{@dfn{対型(pair type)}@(math ((d-pair-type (x . elem-of . A) (B . $ . x)) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))と@(math (b . elem-of . (B . $ . a)))に対し、@dfn{対(pair)}@(math ((pair . $* . a b) . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))))を構成できる。}
      @list-item{要素@(math (c . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))))に対し、@dfn{射影(projection)}@(math (((proj 1) . $ . c) . elem-of . A))と@(math (((proj 2) . $ . c) . elem-of . (B . $ . ((proj 1) . $ . c))))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))と@(math (b . elem-of . (B . $ . a)))に対し、@(math (((proj 1) . $ . (pair . $* . a b)) . def-eq . a)), @(math (((proj 2) . $ . (pair . $* . a b)) . def-eq . b))と定義される。}
      @list-item{要素@(math (c . elem-of . (d-pair-type (x . elem-of . A) (B . $ . x))))に対し、@(math (c . def-eq . (pair . $* . ((proj 1) . $ . c) ((proj 2) . $ . c))))と定義される。}
    ]
  }
]
