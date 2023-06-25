#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/truncation.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{切り詰め}
    @paragraph{
      型は∞グルーポイドという高次元の構造を持つのであったが、その豊富な構造ゆえ型を解析するのは必ずしも容易ではない。高次元の構造を解析する常套手段はより低次元の構造で近似することである。型の@${n}型による最良の近似を導入する。
    }
    ;(include-part "0050.rkt")
    @paragraph{
      @ref["0050"]は帰納的型の規則と類似している。実際、@($ (trunc "n" "A"))を高次帰納的型(@ref["0003"])の一種と捉えることもできる。@($ (abs "a" (trunc:in "n" "a")))は構成子である。それより下の規則は@emph{帰納法原理}を表すが、帰納法が使える状況は@${B}が@${n}型の族である場合に制限されている。
    }
    ;(include-part "0051.rkt")
    @paragraph{
      @($ (trunc "n" "A"))の性質を調べる際には一価性が不可欠である。一価性をどう使うかは次の@ref["0056"]にまとめられる。
    }
    ;(include-part "0056.rkt")
    @paragraph{
      @ref["0056"]を使う例として、@($ (trunc "n" "A"))の同一視型の特徴付けを与える。@${n}が@($ trunc-level:-2)の場合は自明なので、興味があるのはそれ以外の場合である。
    }
    ;(include-part "0055.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
