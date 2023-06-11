#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt")

(provide part:0001)

@define[part:0001
  @section[
    #:id "0001"
    #:title @%{型理論}
    @paragraph{
      ホモトピー型理論は@emph{型理論}の一種であり、型理論は一般になんらかの対象を@emph{構成}するための規則群と構成されたものに関する@emph{定義}を表す規則群によって定められる。@ref["0001"]では、ホモトピー型理論の基礎となる構成規則を導入する。
    }
    @paragraph{
      型理論一般における概念や表記をいくつか導入する。以下の用語は形式的に定義することもできるが、当面は普通の自然言語の意味で解釈して問題ない。同じ種類の対象@math{α}と@math{β}が@emph{定義により等しい}ことを@math[(@%{α} . @def-eq . @%{β})]と書く。構成にはいくつかの@emph{仮定}が置かれることもある。@math{α}を仮定@math[(seq @%{@sub-sup[@%{x} #:_ @%{1}]} @dots @%{@sub-sup[@%{x} #:_ @%{n}]})]の下での対象、@math{@sub-sup[@%{a} #:_ @%{i}]}を@math{@sub-sup[@%{x} #:_ @%{i}]}と同じ種類の対象とするとき、@math{α}の構成において各@math{@sub-sup[@%{x} #:_ @%{i}]}を@math{@sub-sup[@%{a} #:_ @%{i}]}に@emph{置き換える}ことができ、その結果得られる対象を@math{@subst-apply[@%{α} @seq[(@sub-sup[@%{x} #:_ @%{1}] . subst-bin . @sub-sup[@%{a} #:_ @%{1}]) @dots (@sub-sup[@%{x} #:_ @%{n}] . subst-bin . @sub-sup[@%{a} #:_ @%{n}])]]}と書く。どのような種類の対象を構成できるかは型理論によって異なるが、通常は@emph{型}とその@emph{要素}が最も興味のある対象である。各要素には型が割り当てられており、要素@math{a}の型が@math{A}であることを明示するときは@math[(@%{a} . elem-of . @%{A})]と書く。
    }
  ]
]

(module+ main
  (require morg/text)
  (display (->text part:0001)))
