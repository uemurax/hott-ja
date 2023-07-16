#lang morg

(require "lib/markup/rule.rkt"
         "lib/math.rkt")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ついがた"]{対型}
    @index[#:key "つい"]{対}
    @index[#:key "しゃえい"]{射影}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。
    @unordered-list[
      @list-item{@dfn{対型(pair type)}@($ ((d-pair-type ("x" . elem-of . "A") (fun-apply "B" "x")) . elem-of . @universe{i}))を構成できる。}
      @list-item{要素@($ ("a" . elem-of . "A"))と@($ ("b" . elem-of . (fun-apply "B" "a")))に対し、@dfn{対(pair)}@($ ((pair (seq "a" "b")) . elem-of . (d-pair-type ("x" . elem-of . "A") (fun-apply "B" "x"))))を構成できる。}
      @list-item{要素@($ ("c" . elem-of . (d-pair-type ("x" . elem-of . "A") (fun-apply "B" "x"))))に対し、@dfn{射影(projection)}@($ (((proj 1) "c") . elem-of . "A"))と@($ (((proj 2) "c") . elem-of . (fun-apply "B" ((proj 1) "c"))))を構成できる。}
      @list-item{要素@($ ("a" . elem-of . "A"))と@($ ("b" . elem-of . (fun-apply "B" "a")))に対し、@($ (((proj 1) (pair (seq "a" "b"))) . def-eq . "a")), @($ (((proj 2) (pair (seq "a" "b"))) . def-eq . "b"))と定義される。}
      @list-item{要素@($ ("c" . elem-of . (d-pair-type ("x" . elem-of . "A") (fun-apply "B" "x"))))に対し、@($ ("c" . def-eq . (pair (seq ((proj 1) "c") ((proj 2) "c")))))と定義される。}
    ]
  }
]
