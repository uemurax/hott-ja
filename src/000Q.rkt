#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt")

(define f "f")
(define x "x")
(define y "y")
(define A "A")
(define B "B")
(define C "C")
(define a "a")
(define b "b")

@notation[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "あんもくてきひきすう"]{暗黙的引数}
  ]
  @paragraph{
    @(math (f . elem-of . (d-fun-type (implicit (x . elem-of . A)) (d-fun-type (y . elem-of . B) C))))のように引数を@(math (implicit (phantom x)))で囲った場合、その引数は@dfn{暗黙的(implicit)}であると約束する。つまり、要素@(math (a . elem-of . A))と@(math (b . elem-of . (B . subst-apply . (list x a))))に対して、関数適用を@(math (f . $* . a b))の代わりに@(math a)を省略して@(math (f . $ . b))と書く。@(math B)の構成で@(math x)を明示的に使う場合には実用上は曖昧性は無い。暗黙的な引数@(math a)だけを適用したい場合は@(math ((f . $i . a) . elem-of . (d-fun-type (y . elem-of . (B . subst-apply . (list x a))) (C . subst-apply . (list x a)))))と書く。
  }
]
