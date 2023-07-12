#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt"
         "lib/math/truncation.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @rule[
    #:id id
    #:indexes @list[
      @index[#:key "[nきりつめ]"]{@${n}切り詰め}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とする。
      @unordered-list[
        @list-item{@dfn{@${n}切り詰め(@${n}-truncation)}@($ ((trunc "n" "A") . elem-of . @universe{i}))を構成できる。}
        @list-item{@($ (trunc "n" "A"))は@${n}型である(ことを示す要素を構成できる)。}
        @list-item{要素@($ ("a" . elem-of . "A"))に対して、要素@($ ((trunc:in "n" "a") . elem-of . (trunc "n" "A")))を構成できる。}
        @list-item{@($ ("c" . elem-of . (trunc "n" "A")))を要素、@${j}を階数、@($ ("B" . elem-of . ((trunc "n" "A") . fun-type . @universe{j})))を型の族、@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . (trunc:in "n" "x")))))を関数とする。@($ (d-fun-type ("z" . elem-of . (trunc "n" "A")) (is-trunc (seq "n" ("B" . fun-apply . "z")))))の要素があるなら、要素@($ (((trunc:ind "n" "A") (seq "c" "B" "f")) . elem-of . ("B" . fun-apply . "c")))を構成できる。}
        @list-item{@($ ("a" . elem-of . "A"))を要素、@${j}を階数、@($ ("B" . elem-of . ((trunc "n" "A") . fun-type . @universe{j})))を型の族、@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . (trunc:in "n" "x")))))を関数とする。@($ (d-fun-type ("z" . elem-of . (trunc "n" "A")) (is-trunc (seq "n" ("B" . fun-apply . "z")))))の要素があるなら、@($ (((trunc:ind "n" "A") (seq "a" "B" "f")) . def-eq . ("f" . fun-apply . "a")))を定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
