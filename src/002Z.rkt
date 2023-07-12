#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt"
         "lib/math/coproduct.rkt")

(provide-part (id)
  @rule[
    #:id id
    #:indexes @list[
      @index[#:key "よせき"]{余積}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。
      @unordered-list[
        @list-item{@dfn{余積(coproduct)}@($ (("A" . coproduct-type . "B") . elem-of . @universe{i}))を構成できる。}
        @list-item{要素@($ ("a" . elem-of . "A"))に対して、要素@($ (((coproduct-type:in 1) "a") . elem-of . ("A" . coproduct-type . "B")))を構成できる。}
        @list-item{要素@($ ("b" . elem-of . "B"))に対して、要素@($ (((coproduct-type:in 2) "b") . elem-of . ("A" . coproduct-type . "B")))を構成できる。}
        @list-item{@($ ("c" . elem-of . ("A" . coproduct-type . "B")))を要素、@${j}を階数、@($ ("D" . elem-of . (("A" . coproduct-type . "B") . fun-type . @universe{j})))を型の族、@($ (("d" . _ . "1") . elem-of . (d-fun-type ("x" . elem-of . "A") ("D" . fun-apply . ((coproduct-type:in 1) "x")))))を要素、@($ (("d" . _ . "2") . elem-of . (d-fun-type ("y" . elem-of . "B") ("D" . fun-apply . ((coproduct-type:in 2) "y")))))を要素とすると、要素@($ ((coproduct-type:ind (seq "c" "D" ("d" . _ . "1") ("d" . _ . "2"))) . elem-of . ("D" . fun-apply . "c")))を構成できる。}
        @list-item{@($ ("a" . elem-of . "A"))を要素、@${j}を階数、@($ ("D" . elem-of . (("A" . coproduct-type . "B") . fun-type . @universe{j})))を型の族、@($ (("d" . _ . "1") . elem-of . (d-fun-type ("x" . elem-of . "A") ("D" . fun-apply . ((coproduct-type:in 1) "x")))))を要素、@($ (("d" . _ . "2") . elem-of . (d-fun-type ("y" . elem-of . "B") ("D" . fun-apply . ((coproduct-type:in 2) "y")))))を要素とすると、@($ ((coproduct-type:ind (seq ((coproduct-type:in 1) "a") "D" ("d" . _ . "1") ("d" . _ . "2"))) . def-eq . (("d" . _ . "1") . fun-apply . "a")))と定義される。}
        @list-item{@($ ("b" . elem-of . "B"))を要素、@${j}を階数、@($ ("D" . elem-of . (("A" . coproduct-type . "B") . fun-type . @universe{j})))を型の族、@($ (("d" . _ . "1") . elem-of . (d-fun-type ("x" . elem-of . "A") ("D" . fun-apply . ((coproduct-type:in 1) "x")))))を要素、@($ (("d" . _ . "2") . elem-of . (d-fun-type ("y" . elem-of . "B") ("D" . fun-apply . ((coproduct-type:in 2) "y")))))を要素とすると、@($ ((coproduct-type:ind (seq ((coproduct-type:in 2) "b") "D" ("d" . _ . "1") ("d" . _ . "2"))) . def-eq . (("d" . _ . "2") . fun-apply . "b")))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
