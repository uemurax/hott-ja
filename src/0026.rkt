#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define a "a")
(define x "x")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とすると、関数@(math (id-fun . elem-of . (A . fun-type . A)))は同値である。
  }
  #:proof @proof[
    @paragraph{
      @(math (a . elem-of . A))を要素とする。@(math (fiber . $* . id-fun a))の定義から、@(math (d-pair-type (x . elem-of . A) (x . id-type . a)))が可縮であることを示せばよい。@ref["0027"]より@(math (x . id-type . a))は@(math (a . id-type . x))のレトラクトなので、@ref["001S"]より@(math (d-pair-type (x . elem-of . A) (x . id-type . a)))は可縮である。
    }
  ]
]
