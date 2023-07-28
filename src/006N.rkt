#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define f "f")
(define g "g")

@example[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "Op(C)"]{@(math opposite-cat)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。前圏@(math ((opposite-cat . $ . C) . elem-of . (precat . $ . i)))を次のように定義する。
    @unordered-list[
      @list-item{@(math (cat:obj . def-eq . (C . record-field . cat:obj)))}
      @list-item{@(math (cat:map . def-eq . (abs* x1 x2 ((C . record-field . cat:map) . $* . x2 x1))))}
      @list-item{@(math (cat:id . def-eq . (abs x ((C . record-field . cat:id) . $i . x))))}
      @list-item{@(math (cat:comp . def-eq . (abs* x1 x2 x3 (abs* (g . elem-of . (cat:map . $* . x2 x3)) (f . elem-of . (cat:map . $* . x1 x2)) ((C . record-field . cat:comp) . $* . f g)))))}
      @list-item{前圏の公理は@(math C)のそれから分かる。}
    ]
  }
]
