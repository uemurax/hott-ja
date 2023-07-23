#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(define i "i")
(define C "C")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")
(define a "a")

@notation[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (A . elem-of . (presheaf . $ . C)))を前層とする。
    @unordered-list[
      @list-item{対象@(math (x . elem-of . C))に対して、@(math ((A . record-field . presheaf:carrier) . $ . x))の代わりに単に@(math (A . $ . x))と書く。}
      @list-item{対象@(math (x1 x2 . elem-of* . C))と射@(math (f . elem-of . (cat:map . $* . x1 x2)))と要素@(math (a . elem-of . (A . $ . x2)))に対して、要素@(math ((a . presheaf:act-bin . f) . elem-of . (A . $ . x1)))を@(math ((A . record-field . presheaf:act) . $* . a f))と定義する。}
    ]
  }
]
