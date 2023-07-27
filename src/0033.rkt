#lang morg

(require "lib/math.rkt"
         "lib/math/fiber-coproduct.rkt"
         "lib/math/id-over.rkt")

(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define g "g")
(define E "E")
(define e "e")
(define e1 (e . _ . "1"))
(define e2 (e . _ . "2"))
(define p "p")
(define a "a")
(define b "b")
(define c "c")
(define d "d")

@section[
  #:id (current-id)
  #:title @%{ファイバー余積}
  @paragraph{
    @emph{ファイバー余積}は汎用的な高次帰納的型である。
  }
  (include-part "003R.rkt")
  @paragraph{
    高次帰納的型も通常の帰納的型と同様にいくつかの@emph{構成子}によって定められる。ファイバー余積の場合、@(math (fiber-coproduct-type:in 1))と@(math (fiber-coproduct-type:in 2))と@(math fiber-coproduct-type:glue)が構成子である。@(math (fiber-coproduct-type:in 1))と@(math (fiber-coproduct-type:in 2))は@(math (A . (fiber-coproduct-type f g) . B))の要素を構成する普通の構成子である。@(math fiber-coproduct-type:glue)が@emph{同一視}を構成するという点が新しい。要素を構成する構成子は@emph{point constructor}と、同一視を構成する構成子は@emph{path constructor}と呼ばれることもある。
  }
  @paragraph{
    残りの規則はファイバー余積の@emph{帰納法原理}で、型@(math (A . (fiber-coproduct-type f g) . B))が@(math (fiber-coproduct-type:in 1))と@(math (fiber-coproduct-type:in 2))と@(math fiber-coproduct-type:glue)で自由に生成されることを表す。ただし、@(math ((fiber-coproduct-type:ind . $* . ((fiber-coproduct-type:in 1) . $ . a) E e1 e2 p) . def-eq . (e1 . $ . a)))と@(math ((fiber-coproduct-type:ind . $* . ((fiber-coproduct-type:in 2) . $ . b) E e1 e2 p) . def-eq . (e2 . $ . b)))は定義であるのに対し、@(math ((fun-apply-id/d . $* . (abs d (fiber-coproduct-type:ind . $* . d E e1 e2 p)) (fiber-coproduct-type:glue . $ . c)) . id-type . (p . $ . c)))は同一視を構成する。理想的には@(math ((fun-apply-id/d . $* . (abs d (fiber-coproduct-type:ind . $* . d E e1 e2 p)) (fiber-coproduct-type:glue . $ . c)) . def-eq . (p . $ . c)))と定義したいところだが、これは単なる@(math fiber-coproduct-type:ind)の定義ではなく@(math fiber-coproduct-type:ind)と@(math fun-apply-id/d)に関する複合的な定義である。@(math fun-apply-id/d)はプリミティヴではなく我々が構成した関数(@ref["007I"])なので、それに関する新たな定義の正当性は無い。
  }
  @paragraph{
    ファイバー余積を使って構成できる型には次のようなものがある。
  }
  (include-part "007V.rkt")
  (include-part "003M.rkt")
  (include-part "007W.rkt")
]
