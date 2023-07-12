#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。次の型は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@${@is-prop{A}}}
        @list-item[#:id "0001"]{@($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2")))))}
        @list-item[#:id "0002"]{@($ ("A" . fun-type . @is-contr{A}))}
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "0041" #:anchor "0000"]から@anchor-ref[#:node "0041" #:anchor "0001"]は定義からすぐである。
      }
      @paragraph{
        @anchor-ref[#:node "0041" #:anchor "0001"]から@anchor-ref[#:node "0041" #:anchor "0002"]を示す。@($ ("H" . elem-of . (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2"))))))と@($ ("a" . elem-of . "A"))を仮定する。@${a}があるので、@${A}が可縮であることを示すには@($ (d-fun-type ("x" . elem-of . "A") ("a" . id-type . "x")))の要素を構成すればよいが、@($ (abs "x" ("H" . fun-apply . (seq "a" "x"))))でよい。
      }
      @paragraph{
        @anchor-ref[#:node "0041" #:anchor "0002"]から@anchor-ref[#:node "0041" #:anchor "0000"]を示す。@($ ("H" . elem-of . ("A" . fun-type . @is-contr{A})))と@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))を仮定する。@($ (("x" . _ . "1") . id-type . ("x" . _ . "2")))が可縮であることを示すが、@($ (("H" . fun-apply . ("x" . _ . "1")) . elem-of . @is-contr{A}))があるので、@ref["001L"]を適用すればよい。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
