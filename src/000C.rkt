#lang morg

(require "lib/math.rkt")

(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define A "A")
(define p "p")
(define b "b")
(define B "B")
(define x "x")
(define i "i")
(define f "f")

@section[
  #:id (current-id)
  #:title @%{同一視型}
  @paragraph{
    @emph{同一視型}はホモトピー型理論において最も特徴的な型である。
  }
  (include-part "000P.rkt")
  @paragraph{
    @ref["HoTT-Book"]にならって同一視型に等号の記号を使うが、その意味は従来の数学の等号とは大きく異なる。従来の数学では、@(math (a1 . id-type . a2))といえば@(math a1)と@(math a2)が等しいという命題であるが、型理論では@(math (a1 . id-type . a2))はあくまで型である。従って、@(math (a1 . id-type . a2))の要素というものを考えることができ、それは非形式的には@(math a1)と@(math a2)の同一視のしかたと解釈される。
  }
  @paragraph{
    @ref["000P"]について説明する。@(math (refl . elem-of . (a1 . id-type . a1)))は@(math a1)とそれ自身の自明な同一視を表す。残りの規則はいわゆる@emph{帰納法原理}の一例で、任意の@(math (a2 . elem-of . A))と同一視型の要素@(math (p . elem-of . (a1 . id-type . a2)))を使ってなんらかを構成するためには@(math p)が@(math refl)の場合の構成(@(math (b . elem-of . (B . $ . refl))))を与えれば十分であると読める。注意するべきこととして、この帰納法原理から@(math (a1 . id-type . a1))の要素は@(math refl)しか無いことは@emph{導出されない}。同一視型の規則の正しい読み方は型の族@(math ((abs x (a1 . id-type . x)) . elem-of . (A . fun-type . (universe . $ . i))))が@(math (refl . elem-of . (a1 . id-type . a1)))で自由に生成されることであって、個々の型@(math (a1 . id-type . a2))については特に言えることはない。
  }
  @paragraph{
    同一視型からの関数を定義するには@emph{パターンマッチ}が便利である。パターンマッチは一般に帰納的型からの関数を構成子による場合分けで定義する手法である。同一視型の構成子は@(math refl)だけなのでその場合の定義だけを与えれば関数を定義できることになる。
  }
  (include-part "008D.rkt")
  @paragraph{
    パターンマッチが有効なのはもちろん@(math id-ind)を使ったものに書き直せる時だけである。例えば、「関数@(math (f . elem-of . ((a . id-type . a) . fun-type . B)))を@(math ((f . $ . refl) . def-eq . b))と定義する」という使い方はできない。
  }
  @paragraph{
    @(math (a1 . id-type . a2))が同一視型と呼ぶに価することを確認するために、いくつかの期待される関数を構成しよう。
  }
  (include-part "001C.rkt")
  (include-part "001G.rkt")
  (include-part "001D.rkt")
  (include-part "001E.rkt")
  (include-part "001H.rkt")
  (include-part "001F.rkt")
  (include-part "001I.rkt")
  #:subsections @list[
    (include-part "002N.rkt")
  ]
]
