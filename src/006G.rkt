#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/proposition.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define A "A")
(define B "B")
(define h "h")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")
(define a "a")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぜんそうのしゃ"]{前層の射}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A B . elem-of* . (presheaf . $ . C)))を前層とする。型@(math ((presheaf-hom . $* . A B) . elem-of . (universe . $ . i)))を
    @disp{
      @(math (prop-compr (h . elem-of . (d-fun-type (implicit (x . elem-of . C)) ((A . $ . x) . fun-type . (B . $ . x)))) (forall (x1 x2 . elem-of* . C) (forall (f . elem-of . (cat:map . $* . x1 x2)) (forall (a . elem-of . (A . $ . x2)) ((h . $ . (a . presheaf:act-bin . f)) . id-type . ((h . $ . a) . presheaf:act-bin . f)))))))
    }
    と定義する。@(math (presheaf-hom . $* . A B))の要素を@dfn{前層の射(morphism of presheaves)}と呼ぶ。
  }
]
