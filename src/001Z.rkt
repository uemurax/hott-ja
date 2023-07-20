#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define f "f")
(define g "g")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かんすうがいえんせい"]{関数外延性}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とする。関数型@(math (d-fun-type (x . elem-of . A) (B . $ . x)))が@dfn{関数外延性(function extensionality)}を満たすとは、@(math (d-fun-type (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (is-contr . $ . (d-pair-type (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))))の要素があることである。
  }
]
