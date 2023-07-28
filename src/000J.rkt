#lang morg

(require "lib/markup/notation.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define x "x")
(define y "y")
(define b "b")
(define a "a")
(define f "f")

@notation[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "λ(x..).b"]{@(math (abs* (x . _ . "1") dots (x . _ . "n") b))}
    @notation-index[#:key "f(a..)"]{@(math (f . $* . (a . _ . "1") dots (a . _ . "n"))) (関数適用)}
  ]
  @paragraph{
    @unordered-list[
      @list-item{@(math fun-type/symb)は右結合の演算子である。例えば、@(math (A . fun-type . (B . fun-type . C)))は@(math (A . fun-type . (paren (B . fun-type . C))))と読む。}
      @list-item{@(math (abs (x . _ . "1") (% dots (abs (x . _ . "n") b))))は@(math (abs* (x . _ . "1") dots (x . _ . "n") b))と略記することがある。}
      @list-item{@(math ((% (f . $ . (a . _ . "1")) dots) . $ . (a . _ . "n")))は@(math (f . $* . (a . _ . "1") dots (a . _ . "n")))と略記することがある。}
      @list-item{@(math (d-fun-type (x . elem-of . A) ""))の結合は弱い。例えば、@(math (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . B) (C . fun-type . D))))は@(math (d-fun-type (x . elem-of . A) (paren (d-fun-type (y . elem-of . B) (paren (C . fun-type . D))))))と読む。}
    ]
  }
]
