#lang morg

(require "lib/markup/terminology.rkt"
         "lib/math.rkt")

(define i "i")
(define P "P")

@terminology[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しん"]{真}
  ]
  @paragraph{
    @(math i)を階数、@(math (P . elem-of . (universe . $ . i)))を型とする。@(math P)が命題である場合、「@(math P)の要素がある」の代わりに「@(math P)は@dfn{真}である」という言い方をする。
  }
]
