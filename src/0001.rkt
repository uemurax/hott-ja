#lang morg

(require "lib/math.rkt"
         (prefix-in tex: morg/math/tex))

(define α tex:alpha)
(define β tex:beta)
(define x "x")
(define n "n")
(define a "a")
(define i "i")
(define A "A")

@section[
  #:id (current-id)
  #:title @%{型理論}
  @paragraph{
    ホモトピー型理論は@emph{型理論}の一種であり、型理論は一般になんらかの対象を@emph{構成}するための規則群と構成されたものに関する@emph{定義}を表す規則群によって定められる。@ref["0001"]では、ホモトピー型理論の基礎となる構成規則を導入する。
  }
  @paragraph{
    型理論一般における概念や表記をいくつか導入する。以下の用語は形式的に定義することもできるが、当面は普通の自然言語の意味で解釈して問題ない。
  }
  (include-part "0086.rkt")
  @paragraph{
    定義により等しいとは、定義を表す規則を使って等しいと導けることを意味する。定義により等しい対象は全く同じものとして扱ってよい。
  }
  @paragraph{
    構成にはいくつかの@emph{仮定}が置かれることもある。仮定@(math x)の下での対象とは、どんな対象@(math x)に対しても妥当な構成で得られる対象である。
  }
  (include-part "0087.rkt")
  @paragraph{
    どのような種類の対象を構成できるかは型理論によって異なるが、通常は@emph{型}とその@emph{要素}が最も興味のある対象である。各要素には型が割り当てられている。
  }
  (include-part "0088.rkt")
  #:subsections @list[
    (include-part "0009.rkt")
    (include-part "000A.rkt")
    (include-part "000B.rkt")
    (include-part "000C.rkt")
    (include-part "002T.rkt")
    (include-part "002U.rkt")
  ]
]
