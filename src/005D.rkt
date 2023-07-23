#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))

@notation[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。@(math x)が@(math C)の対象であることを@(math (x . elem-of . (C . record-field . cat:obj)))の代わりに単に@(math (x . elem-of . C))と書く。対象@(math (x1 x2 . elem-of* . C))に対して、@(math ((C . record-field . cat:map) . $* . x1 x2))の代わりに単に@(math (cat:map . $* . x1 x2))と書く。@(math (x1 . elem-of . C))と書いた時点で@(math C)の前圏の構造が暗黙に了解されるのでこの表記で曖昧性はない。同様に、対象@(math (x . elem-of . C))に対して、@(math ((C . record-field . cat:id) . $i . x))の代わりに単に@(math (cat:id . $i . x))と書く。合成@(math (cat:comp . $* . f2 f1))は二項演算子を使って@(math (f2 . cat:comp-bin . f1))と書く。
  }
]
