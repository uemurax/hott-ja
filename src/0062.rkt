#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math f)は埋め込みである。}
      @list-item[#:id "0001"]{任意の@(math (x1 . elem-of . A))に対して、@(math (d-pair-type (x2 . elem-of . A) ((f . $ . x1) . id-type . (f . $ . x2))))は可縮である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @ref["005R"]より、@anchor-ref[#:node (current-id) #:anchor "0000"]は任意の@(math (x1 x2 . elem-of* . A))に対して@(math ((fun-apply-id . $ . f) . elem-of . ((x1 . id-type . x2) . fun-type . ((f . $ . x1) . id-type . (f . $ . x2)))))が同値であることと論理的に同値である。@ref["001S"]より、これは@anchor-ref[#:node (current-id) #:anchor "0001"]と論理的に同値である。
    }
  ]
]
