#lang morg

(require "lib/math.rkt"
         (prefix-in l: "lib/math/paren-level.rkt")
         morg/math)

(define times/symb (macro "times"))
(define times
  (binary #:level l:* times/symb))

(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define a3 (a . _ . "3"))

@section[
  #:id (current-id)
  #:title @%{構造同一原理}
  @paragraph{
    @ref["0022"]で構造同一原理の例をいくつか見たが、群や環などの数学的に興味深い構造については後回しにしていた。これは、型理論において「@(math (a1 . id-type . a2))」は単なる型なので公理を適切に記述するためには@ref["003Z"]の意味での命題の概念が必要だからである。例えば、ある二項演算@(math times/symb)の結合律を素直に@(math (((a1 . times . a2) . times . a3) . id-type . (a1 . times . (a2 . times . a3))))と書くと、これは公理というよりも構造の一部になってしまう。結合律を適切に公理として扱うためには、同一視型が命題であることを要請すればよい。
  }
  (include-part "004W.rkt")
  (include-part "004Y.rkt")
]
