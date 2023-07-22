#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/level.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define C "C")
(define x "x")
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "けん"]{圏}
  ]
  @paragraph{
    @(math i)を階数とする。
    @unordered-list[
      @list-item{前圏@(math (C . elem-of . (precat . $ . i)))に対して、型@(math ((is-cat . $ . C) . elem-of . (universe . $ . i)))を
      @disp{
        @(math (d-fun-type (x . elem-of . C) (is-contr . $ . (d-pair-type (y . elem-of . C) (x . cat:iso . y)))))
      }
      と定義する。}
      @list-item{型@(math ((cat . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を@(math (prop-compr (C . elem-of . (precat . $ . i)) (is-cat . $ . C)))と定義する。}
    ]
    @(math (cat . $ . i))の要素を(階数@(math i)の)@dfn{圏(category)}と呼ぶ。
  }
]
