#lang morg

(require "lib/math.rkt"
         "lib/math/nat.rkt")

@section[
  #:id (current-id)
  #:title @%{自然数}
  @paragraph{
    今までに導入した型だけでは何も面白い数学はできない。数学を面白くするには@emph{自然数}の概念は必須であろう。自然数の型は@emph{帰納的型}の例として定義される。
  }
  (include-part "002V.rkt")
  @paragraph{
    一般に帰納的型はいくつかの@emph{構成子(constructor)}によって定められる。@($ nat)の場合、@($ nat:zero)と@($ nat:succ/symb)が構成子である。これらは@($ nat)の要素を構成する方法を与える。任意の@($ nat)の要素がこれらの構成子のみを使って構成されることを表すために、@emph{帰納法原理(induction principle)}を規則として認める。@($ nat:ind/symb)に関する規則は、自然数@${n}を使ってなんらかを構成するには、@($ nat:zero)の場合の構成(@($ ("a" . elem-of . ("A" . fun-apply . nat:zero))))と@${@nat:succ{x}}の場合の構成(@($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . nat)) (("A" . fun-apply . "x") . fun-type . ("A" . fun-apply . @nat:succ{x}))))))を与えれば十分であることを意味する。つまり、型理論の中の人にとっては自然数とは@($ nat:zero)と@($ nat:succ/symb)のみを使って構成されたものである。さらに、@($ nat:succ/symb)の場合の構成においては、@${x}の場合の構成(@${f}の引数@($ ("y" . elem-of . ("A" . fun-apply . "x"))))は既に定義されたと仮定してよい。これは@emph{再帰的定義(recursive definition)}を可能にする。
  }
  (include-part "002W.rkt")
  (include-part "002X.rkt")
  (include-part "002Y.rkt")
]
