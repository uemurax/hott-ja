#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         morg/eq-reasoning)

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define y "y")
(define f "f")
(define g "g")
(define h "h")
(define p "p")
(define q "q")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x1 x2 . elem-of* . C))を対象、@(math (f . elem-of . (cat:map . $* . x1 x2)))を射とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math f)は同型である。}
      @list-item[#:id "0001"]{任意の対象@(math (y . elem-of . C))に対して、関数@(math ((abs g (f . cat:comp-bin . g)) . elem-of . ((cat:map . $* . y x1) . fun-type . (cat:map . $* . y x2))))は同値である。}
      @list-item[#:id "0002"]{任意の対象@(math (y . elem-of . C))に対して、関数@(math ((abs g (g . cat:comp-bin . f)) . elem-of . ((cat:map . $* . x2 y) . fun-type . (cat:map . $* . x1 y))))は同値である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]を示す。定義から、関数@(math ((abs g (f . cat:comp-bin . g)) . elem-of . ((cat:map . $* . y x1) . fun-type . (cat:map . $* . y x2))))は両側可逆であることが分かる。よって、@ref["004K"]よりこれは同値である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0000"]を示す。@(math ((abs g (f . cat:comp-bin . g)) . elem-of . ((cat:map . $* . x2 x1) . fun-type . (cat:map . $* . x2 x2))))が同値なので、射@(math (h . elem-of . (cat:map . $* . x2 x1)))と同一視@(math (p . elem-of . ((f . cat:comp-bin . h) . id-type . cat:id)))を得る。関数@(math ((abs g (f . cat:comp-bin . g)) . elem-of . ((cat:map . $* . x1 x1) . fun-type . (cat:map . $* . x1 x2))))が同値なので、同一視
      @disp{
        @eq-reasoning[
          @(math (cat:comp-bin f h f))
          @(math id-type/symb) @(math p)
          @(math f)
          @(math id-type/symb) @%{前圏の公理}
          @(math (f . cat:comp-bin . cat:id))
        ]
      }
      から同一視@(math (q . elem-of . ((h . cat:comp-bin . f) . id-type . cat:id)))を得る。よって、@(math f)は同型である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]と@anchor-ref[#:node (current-id) #:anchor "0002"]の同値性も同様である。
    }
  ]
]
