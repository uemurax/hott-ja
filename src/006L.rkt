#lang morg

(require "lib/markup/exercise.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")
(define A "A")
(define A1 (A . _ . "1"))
(define A2 (A . _ . "2"))
(define A3 (A . _ . "3"))
(define x "x")
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))

@exercise[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "id"]{@(math id-presheaf-hom) (前層の射)}
    @notation-index[#:key "gof"]{@(math (f2 . presheaf-hom-comp . f1)) (前層の射)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。
    @ordered-list[
      @list-item{前層@(math (A . elem-of . (presheaf . $ . C)))に対して、前層の射@(math ((id-presheaf-hom . $i . A) . elem-of . (presheaf-hom . $* . A A)))を@(math (abs x (id-fun . $i . (A . $ . x))))と定義する。これが前層の射の公理を満たすことを確かめよ。}
      @list-item{前層@(math (A1 A2 A3 . elem-of* . (presheaf . $ . C)))と前層の射@(math (f1 . elem-of . (presheaf-hom . $* . A1 A2)))と@(math (f2 . elem-of . (presheaf-hom . $* . A2 A3)))に対して、前層の射@(math ((f2 . presheaf-hom-comp . f1) . elem-of . (presheaf-hom . $* . A1 A3)))を@(math (abs x ((f2 . $i . x) . fun-comp . (f1 . $i . x))))と定義する。これが前層の射の公理を満たすことを確かめよ。}
    ]
  }
]
