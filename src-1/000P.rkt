#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt")

(provide part:000P)

(define part:000P
  @rule[
    #:id "000P"
    #:indexes @list[
      @index[#:key "どういつしがた"]{同一視型}
      @index[#:key "どういつし"]{同一視}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))を要素とする。
      @unordered-list[
        @list-item{要素@($ (("a" . _ ."2") . elem-of . "A"))に対し、@dfn{同一視型(identity type)}@($ ((("a" . _ . "1") . id-type . ("a" . _ . "2")) . elem-of . @universe{i}))を構成できる。@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))の要素を@($ ("a" . _ . "1"))と@($ ("a" . _ . "2"))の@dfn{同一視(identification)}と呼ぶ。}
        @list-item{要素@($ ((refl ("a" . _ . "1")) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "1"))))を構成できる。}
        @list-item{@($ (("a" . _ . "2") . elem-of . "A"))と@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を要素、@${j}を階数、@($ ("B" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) ((("a" . _ . "1") . id-type . "x") . fun-type . @universe{j}))))を型の族、@($ ("b" . elem-of . (fun-apply "B" (refl ("a" . _ . "1")))))を要素とすると、要素@($ ((id-ind (seq "p" "B" "b")) . elem-of . (fun-apply "B" "p")))を構成できる。}
        @list-item{@${j}を階数、@($ ("B" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) ((("a" . _ . "1") . id-type . "x") . fun-type . @universe{j}))))を型の族、@($ ("b" . elem-of . (fun-apply "B" (refl ("a" . _ . "1")))))を要素とすると、@($ ((id-ind (seq (refl ("a" . _ . "1")) "B" "b")) . def-eq . "b"))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000P)))
