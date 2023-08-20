#lang morg

(require "lib/math.rkt"
         "lib/math/level.rkt")

(define i "i")
(define A "A")

@section[
  #:id (current-id)
  #:title @%{宇宙}
  @paragraph{
    型理論における対象は型と要素の二種類に分けられるが、型と要素を厳格に区別し続けることは時に理論を煩雑にする。そこで@emph{宇宙}を導入する。宇宙とは要素が型であるような型である。すべての型がある宇宙の要素になるように規則を設計することで、型を特別な要素とみなすことができる。本書で考える型理論は「可算個」の非有界な宇宙の列@disp{
      @(math (elem-of/chain
           (universe . $ . "0") (universe . $ . "1") (universe . $ . "2") dots))
    }を持つ。
  }
  @paragraph{
    数学を基礎付ける文脈では@(math (seq "0" "1" "2" dots))が何なのか分からないので、@emph{階数}の概念を導入する。階数は型でも要素でもない別の種類の対象である。
  }
  (include-part "000D.rkt")
  @paragraph{
    宇宙に関する規則は次の通りである。
  }
  (include-part "000E.rkt")
  (include-part "000F.rkt")
  @paragraph{
    @ref["000F"]の下で、@ref["000E"]は次のようにも書ける。
    @unordered-list[
      @list-item{
        階数@(math i)に対して、@(math ((universe . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を構成できる。
      }
      @list-item{
        階数@(math i)と要素@(math (A . elem-of . (universe . $ . i)))に対して、@(math A)は型である。
      }
      @list-item{
        階数@(math i)と要素@(math (A . elem-of . (universe . $ . i)))に対して、@(math (A . elem-of . (universe . $ . (level:succ . $ . i))))である。
      }
    ]
  }
  @paragraph{
    本書で考える型理論では@ref["000E"]の他には形式的な意味での型を構成する規則は与えず、代わりに@(math (universe . $ . i))の要素を構成する規則を与える。以降、@(math (universe . $ . i))の要素を(階数@(math i)の)@emph{型}と呼ぶ。
  }
]
