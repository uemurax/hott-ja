#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define x4 (x . _ . "4"))
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))
(define f3 (f . _ . "3"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。
    @ordered-list[
      @list-item[#:id "0000"]{任意の対象@(math (x . elem-of . C))に対して、恒等射@(math (cat:id . elem-of . (cat:map . $* . x x)))は同型である。}
      @list-item[#:id "0001"]{任意の対象@(math (x1 x2 x3 x4 . elem-of* . C))と射@(math (f1 . elem-of . (cat:map . $* . x1 x2)))と@(math (f2 . elem-of . (cat:map . $* . x2 x3)))と@(math (f3 . elem-of . (cat:map . $* . x3 x4)))に対して、@(math (f2 . cat:comp-bin . f1))と@(math (f3 . cat:comp-bin . f2))が同型ならば、@(math f1)と@(math f2)と@(math f3)と@(math (cat:comp-bin f3 f2 f1))も同型である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]は定義からすぐに確かめられる。@anchor-ref[#:node (current-id) #:anchor "0001"]は@ref["005G"]と@ref["002F"]による。
    }
  ]
]
