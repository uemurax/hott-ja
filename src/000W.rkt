#lang morg

(require "lib/math.rkt"
         "lib/markup/notation.rkt")

(define x "x")
(define A "A")
(define n "n")

@notation[
  #:id (current-id)
  @paragraph{
    大きなレコード型を定義する際には、文章内で@(math (record-type... (list (x . _ . "1") (A . _ . "1")) (list (x . _ . n) (A . _ . n))))と書く代わりに縦に並べて
    @unordered-list[
      @list-item{@(math ((x . _ . "1") . elem-of . (A . _ . "1")))}
      @list-item{@(math vdots)}
      @list-item{@(math ((x . _ . n) . elem-of . (A . _ . n)))}
    ]
    と書くことがある。レコード型の要素を定義する際にも同様に縦に並べて書くことがある。
  }
]
