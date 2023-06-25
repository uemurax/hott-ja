#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とする。次は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@${A}は@${n}型である。}
        @list-item[#:id "0001"]{関数@($ ((abs "x" (trunc:in "n" "x")) . elem-of . ("A" . fun-type . (trunc "n" "A"))))は同値である。}
        @list-item[#:id "0002"]{@${A}は@($ (trunc "n" "A"))のレトラクトである。}
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "0051" #:anchor "0001"]から@anchor-ref[#:node "0051" #:anchor "0002"]は自明である。@anchor-ref[#:node "0051" #:anchor "0002"]から@anchor-ref[#:node "0051" #:anchor "0000"]は@ref["0045"]による。
      }
      @paragraph{
        @anchor-ref[#:node "0051" #:anchor "0000"]から@anchor-ref[#:node "0051" #:anchor "0001"]を示す。@${A}が@${n}型なので、帰納法より関数@($ ("g" . elem-of . ((trunc "n" "A") . fun-type . "A")))であって任意の@($ ("a" . elem-of . "A"))に対して@($ (("g" . fun-apply . (trunc:in "n" "a")) . def-eq . "a"))となるものを構成できる。特に、@($ (("g" . fun-comp . (abs "x" (trunc:in "n" "x"))) . homotopy . @id-fun{A}))である。@($ (((abs "x" (trunc:in "n" "x")) . fun-comp . "g") . homotopy . (id-fun (trunc "n" "A"))))を示す。各@($ ("z" . elem-of . (trunc "n" "A")))に対して@($ ((trunc:in "n" ("g" . fun-apply . "z")) . id-type . "z"))は@ref["0052"]より@${n}型なので、帰納法により@($ (d-fun-type ("x" . elem-of . "A") ((trunc:in "n" ("g" . fun-apply . (trunc:in "n" "x"))) . id-type . (trunc:in "n" "x"))))を示せばよいがこれは定義から明らかである。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
