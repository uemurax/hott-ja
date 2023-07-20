#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@lemma[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A B . elem-of* . (set-cat . $ . i)))を対象、@(math (f . elem-of . (cat:map . $* . A B)))を射とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math f)は@(math (set-cat . $ . i))の射として同型である。}
      @list-item[#:id "0001"]{@(math f)は関数として同値である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @ref["004K"]による。
    }
  ]
]
