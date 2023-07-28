#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/bifunctor.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x11 (x . _ . "11"))
(define x12 (x . _ . "12"))
(define x21 (x . _ . "21"))
(define x22 (x . _ . "22"))
(define f "f")
(define h "h")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "Map(Fun)"]{@(math cat:map/fun)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。@(math ((cat:map/fun . $ . C) . elem-of . (bifunctor (opposite-cat . $ . C) C (set-cat . $ . i))))を次のように定義する。
    @unordered-list[
      @list-item{@(math (bifunctor:obj . def-eq . (abs* x1 x2 (cat:map . $* . x1 x2))))}
      @list-item{@(math (bifunctor:map-1 . def-eq . (abs* x11 x12 f x2 (abs h (h . cat:comp-bin . f)))))}
      @list-item{@(math (bifunctor:map-2 . def-eq . (abs* x1 x21 x22 f (abs h (f . cat:comp-bin . h)))))}
    ]
  }
]
