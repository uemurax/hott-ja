#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt")

(provide part:000H)

(define part:000H
  @rule[
    #:id "000H"
    #:indexes @list[
      @index[#:key "かんすうがた"]{関数型}
      @index[#:key "かんすう"]{関数}
      @index[#:key "らむだちゅうしょう"]{ラムダ抽象}
      @index[#:key "かんすうてきよう"]{関数適用}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . @universe{i}))を仮定@($ ("x" . elem-of . "A"))の下での型とする。
      @unordered-list[
        @list-item{@dfn{関数型(function type)}@($ (@d-fun-type[("x" . elem-of . "A")]{B} . elem-of . @universe{i}))を構成できる。@${@d-fun-type[("x" . elem-of . "A")]{B}}の要素を@dfn{関数(function)}と呼ぶ。}
        @list-item{仮定@($ ("x" . elem-of . "A"))の下での要素@($ ("b" . elem-of . "B"))に対し、@dfn{ラムダ抽象(lambda abstraction)}@($ (@abs["x"]{b} . elem-of . @d-fun-type[("x" . elem-of . "A")]{B}))を構成できる。}
        @list-item{要素@($ ("f" . elem-of . @d-fun-type[("x" . elem-of . "A")]{B}))と@($ ("a" . elem-of . "A"))に対し、@dfn{関数適用(function application)}@($ (@fun-apply["f"]{a} . elem-of . (subst-apply "B" ("x" . subst-bin . "a"))))を構成できる。}
        @list-item{@($ ("b" . elem-of . "B"))を仮定@($ ("x" . elem-of . "A"))の下での要素、@($ ("a" . elem-of . "A"))を要素とする。このとき、@($ (@fun-apply[@abs["x"]{b}]{a} . def-eq . (subst-apply "b" ("x" . subst-bin . "a"))))と定義される。}
        @list-item{要素@($ ("f" . elem-of . @d-fun-type[("x" . elem-of . "A")]{B}))に対し、@($ ("f" . def-eq . @abs["x"]{@fun-apply["f"]{x}}))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000H)))
