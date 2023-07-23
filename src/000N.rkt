#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt")

(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define x "x")
(define y "y")

@notation[
  #:id (current-id)
  @paragraph{
    @unordered-list[
      @list-item{@(math pair-type/symb)は右結合の演算子である。例えば、@(math (pair-type A B C))は@(math (A . pair-type . (paren (B . pair-type . C))))と読む。}
      @list-item{@(math (d-pair-type (x . elem-of . A) ""))の結合は弱い。例えば、@(math (d-pair-type (x . elem-of . A) (d-pair-type (y . elem-of . B) (C . pair-type . D))))は@(math (d-pair-type (x . elem-of . A) (paren (d-pair-type (y . elem-of . B) (paren (C . pair-type . D))))))と読む。}
    ]
  }
]
