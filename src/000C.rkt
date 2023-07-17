#lang morg

(require "lib/math.rkt")

@section[
  #:id (current-id)
  #:title @%{同一視型}
  @paragraph{
    @emph{同一視型}はホモトピー型理論において最も特徴的な型である。
  }
  (include-part "000P.rkt")
  @paragraph{
    @ref["HoTT-Book"]にならって同一視型に等号の記号を使うが、その意味は従来の数学の等号とは大きく異なる。従来の数学では、@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))といえば@($ ("a" . _ . "1"))と@($ ("a" . _ . "2"))が等しいという命題であるが、型理論では@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))はあくまで型である。従って、@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))の要素というものを考えることができ、それは非形式的には@($ ("a" . _ . "1"))と@($ ("a" . _ . "2"))の同一視のしかたと解釈される。
  }
  @paragraph{
    @ref["000P"]について説明する。@($ ((refl ("a" . _ . "1")) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "1"))))は@($ ("a" . _ . "1"))とそれ自身の自明な同一視を表す。残りの規則はいわゆる@emph{帰納法原理}の一例で、任意の@($ (("a" . _ . "2") . elem-of . "A"))と同一視型の要素@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を使ってなんらかを構成するためには@${p}が@($ (refl ("a" . _ . "1")))の場合の構成(@($ ("b" . elem-of . (fun-apply "B" (refl ("a" . _ . "1"))))))を与えれば十分であると読める。注意するべきこととして、この帰納法原理から@($ (("a" . _ . "1") . id-type . ("a" . _ . "1")))の要素は@($ (refl ("a" . _ . "1")))しか無いことは@emph{導出されない}。同一視型の規則の正しい読み方は型の族@($ ((abs "x" (("a" . _ . "1") . id-type . "x")) . elem-of . ("A" . fun-type . @universe{i})))が@($ ((refl ("a" . _ . "1")) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "1"))))で自由に生成されることであって、個々の型@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))については特に言えることはない。
  }
  @paragraph{
    @($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))が同一視型と呼ぶに価することを確認するために、いくつかの期待される関数を構成しよう。
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