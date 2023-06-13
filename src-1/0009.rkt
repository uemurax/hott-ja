#lang at-exp typed/racket

(require morg/markup
        "lib/math.rkt")

(require "000D.rkt"
         "000F.rkt"
         "000E.rkt")

(provide part:0009)

(define part:0009
  @section[
    #:id "0009"
    #:title @%{宇宙}
    @paragraph{
      要素が型であるような型を@emph{宇宙}と呼ぶ。本書で考える型理論は「可算個」の非有界な宇宙の列@disp{
        @($ (elem-of/chain
             @universe{0} @universe{1} @universe{2} dots))
      }を持つ。
    }
    @paragraph{
      数学を基礎付ける文脈では@($ (seq "0" "1" "2" dots))が何なのか分からないので、@emph{階数}の概念を導入する。階数は型でも要素でもない別の種類の対象である。
    }
    part:000D
    @paragraph{
      宇宙に関する規則は次の通りである。
    }
    part:000E
    part:000F
    @paragraph{
      本書で考える型理論では@ref["000E"]の他には形式的な意味での型を構成する規則は与えず、代わりに@($ @universe{i})の要素を構成する規則を与える。以降、@($ @universe{i})の要素を(階数@${i}の)@emph{型}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0009)))
