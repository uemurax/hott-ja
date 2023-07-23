#lang morg

(require "lib/math.rkt"
         "lib/math/nat.rkt")

(define n "n")
(define a "a")
(define A "A")
(define x "x")
(define y "y")
(define f "f")

@section[
  #:id (current-id)
  #:title @%{自然数}
  @paragraph{
    今までに導入した型だけでは何も面白い数学はできない。数学を面白くするには@emph{自然数}の概念は必須であろう。自然数の型は@emph{帰納的型}の例として定義される。
  }
  (include-part "002V.rkt")
  @paragraph{
    一般に帰納的型はいくつかの@emph{構成子(constructor)}によって定められる。@(math nat)の場合、@(math nat:zero)と@(math nat:succ)が構成子である。これらは@(math nat)の要素を構成する方法を与える。任意の@(math nat)の要素がこれらの構成子のみを使って構成されることを表すために、@emph{帰納法原理(induction principle)}を規則として認める。@(math nat:ind)に関する規則は、自然数@(math n)を使ってなんらかを構成するには、@(math nat:zero)の場合の構成(@(math (a . elem-of . (A . $ . nat:zero))))と@(math (nat:succ . $ . x))の場合の構成(@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . nat)) ((A . $ . x) . fun-type . (A . $ . (nat:succ . $ . x)))))))を与えれば十分であることを意味する。つまり、型理論の中の人にとっては自然数とは@(math nat:zero)と@(math nat:succ)のみを使って構成されたものである。さらに、@(math nat:succ)の場合の構成においては、@(math x)の場合の構成(@(math f)の引数@(math (y . elem-of . (A . $ . x))))は既に定義されたと仮定してよい。これは@emph{再帰的定義(recursive definition)}を可能にする。
  }
  (include-part "002W.rkt")
  (include-part "002X.rkt")
  (include-part "002Y.rkt")
]
