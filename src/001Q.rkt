#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "どうち"]{同値}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math ((is-equiv . $ . f) . elem-of . (universe . $ . i)))を@(math (d-fun-type (y . elem-of . B) (is-contr . $ . (fiber . $* . f y))))と定義する。@(math (is-equiv . $ . f))の要素がある時、@(math f)は@dfn{同値(equivalence)}であると言う。
  }
]
