#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt"
         "lib/math/level.rkt")

(provide-part (id)
  @rule[
    #:id id
    #:indexes @list[
      @index[#:key "しぜんすうがた"]{自然数型}
      @index[#:key "しぜんすう"]{自然数}
    ]
    @paragraph{
      @unordered-list[
        @list-item{@dfn{自然数型(type of natural numbers)}@($ (nat . elem-of . (universe level:zero)))を構成できる。@($ nat)の要素を@dfn{自然数(natural number)}と呼ぶ。}
        @list-item{要素@($ (nat:zero . elem-of . nat))を構成できる。}
        @list-item{要素@($ ("n" . elem-of . nat))に対して、要素@($ (@nat:succ{n} . elem-of . nat))を構成できる。}
        @list-item{@($ ("n" . elem-of . nat))を要素、@${i}を階数、@($ ("A" . elem-of . (nat . fun-type . @universe{i})))を型の族、@($ ("a" . elem-of . ("A" . fun-apply . nat:zero)))を要素、@($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . nat)) (("A" . fun-apply . "x") . fun-type . ("A" . fun-apply . @nat:succ{x})))))を関数とすると、要素@($ ((nat:ind (seq "n" "A" "a" "f")) . elem-of . ("A" . fun-apply . "n")))を構成できる。}
        @list-item{@${i}を階数、@($ ("A" . elem-of . (nat . fun-type . @universe{i})))を型の族、@($ ("a" . elem-of . ("A" . fun-apply . nat:zero)))を要素、@($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . nat)) (("A" . fun-apply . "x") . fun-type . ("A" . fun-apply . @nat:succ{x})))))を関数とすると、@($ ((nat:ind (seq nat:zero "A" "a" "f")) . def-eq . "a"))と定義される。}
        @list-item{@($ ("n" . elem-of . nat))を要素、@${i}を階数、@($ ("A" . elem-of . (nat . fun-type . @universe{i})))を型の族、@($ ("a" . elem-of . ("A" . fun-apply . nat:zero)))を要素、@($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . nat)) (("A" . fun-apply . "x") . fun-type . ("A" . fun-apply . @nat:succ{x})))))を関数とすると、@($ ((nat:ind (seq @nat:succ{n} "A" "a" "f")) . def-eq . ("f" . fun-apply . (nat:ind (seq "n" "A" "a" "f")))))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
