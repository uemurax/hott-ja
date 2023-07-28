#lang morg

(require "lib/markup/notation.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@notation[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "F(x)"]{@(math (F . $ . x)) (関手を対象に適用)}
    @notation-index[#:key "F(f)"]{@(math (F . $ . f)) (関手を射に適用)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手とする。
    @unordered-list[
      @list-item{対象@(math (x . elem-of . C))に対して、@(math (((F . record-field . functor:obj) . $ . x) . elem-of . D))の代わりに単に@(math (F . $ . x))と書く。}
      @list-item{対象@(math (x1 x2 . elem-of* . C))と射@(math (f . elem-of . (cat:map . $* . x1 x2)))に対して、@(math (((F . record-field . functor:map) . $ . f) . elem-of . (cat:map . $* . (F . $ . x1) (F . $ . x2))))の代わりに単に@(math (F . $ . f))と書く。}
    ]
  }
]
