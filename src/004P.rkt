#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define h "h")
(define X "X")
(define Y "Y")

@exercise[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。@(math f)は同値であると仮定して、次を示せ。
    @ordered-list[
      @list-item[#:id "0000"]{任意の型@(math (X . elem-of . (universe . $ . i)))に対して、関数@(math ((abs g (f . fun-comp . g)) . elem-of . ((paren (X . fun-type . A)) . fun-type . (paren (X . fun-type . B)))))は同値である。}
      @list-item[#:id "0001"]{任意の型@(math (Y . elem-of . (universe . $ . i)))に対して、関数@(math ((abs h (h . fun-comp . f)) . elem-of . ((paren (B . fun-type . Y)) . fun-type . (paren (A . fun-type . Y)))))は同値である。}
    ]
  }
]
