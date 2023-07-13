#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/theorem.rkt"
         "lib/math.rkt")

(provide-part (id)
  @theorem[
    #:id id
    #:indexes @list[
      @index[#:key "どういつしがたのきほんていり"]{同一視型の基本定理}
    ]
    #:title @%{同一視型の基本定理}
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("a" . elem-of . "A"))を要素、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("b" . elem-of .  ("B" . fun-apply . "a")))を要素とする。次の型は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@($ (d-fun-type ("x" . elem-of . "A") (is-equiv (abs ("p" . elem-of . ("a" . id-type . "x")) (transport (seq "B" "p" "b"))))))}
        @list-item[#:id "0001"]{@($ (d-fun-type ("x" . elem-of . "A") (("a" . id-type . "x") . equiv . ("B" . fun-apply . "x"))))}
        @list-item[#:id "0002"]{@($ (d-fun-type ("x" . elem-of . "A") (retract (seq ("B" . fun-apply . "x") ("a" . id-type . "x")))))}
        @list-item[#:id "0003"]{@($ (is-contr (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))}
      ]
    }
    #:proof @proof[
      @paragraph{
        @($ (abs ("p" . elem-of . ("a" . id-type . "x")) (transport (seq "B" "p" "b"))))の型が@($ (("a" . id-type . "x") . fun-type . ("B" . fun-apply ."x")))であることから、@anchor-ref[#:node "001S" #:anchor "0000"]から@anchor-ref[#:node "001S" #:anchor "0001"]は@($ equiv/symb)の定義から自明である。
      }
      @paragraph{
        @anchor-ref[#:node "001S" #:anchor "0001"]から@anchor-ref[#:node "001S" #:anchor "0002"]は@ref["001V"]による。
      }
      @paragraph{
        @anchor-ref[#:node "001S" #:anchor "0002"]から@anchor-ref[#:node "001S" #:anchor "0003"]を示す。@anchor-ref[#:node "001S" #:anchor "0002"]を仮定すると、@ref["001W"]から@($ (retract (seq (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) (d-pair-type ("x" . elem-of . "A") ("a" . id-type . "x")))))の要素を得る。すると、@ref["001N"]と@ref["001K"]より@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は可縮である。
      }
      @paragraph{
        最後に@anchor-ref[#:node "001S" #:anchor "0003"]から@anchor-ref[#:node "001S" #:anchor "0000"]を示す。@anchor-ref[#:node "001S" #:anchor "0003"]を仮定し、@($ ("x" . elem-of . "A"))と@($ ("y" . elem-of . ("B" . fun-apply . "x")))を仮定する。@($ (fiber (seq (abs "p" (transport (seq "B" "p" "b"))) "y")))が可縮であることを示す。@($ fiber/symb)の定義より、@($ (d-pair-type ("p" . elem-of . ("a" . id-type . "x")) ((transport (seq "B" "p" "b")) . id-type . "y")))が可縮であることを示せばよい。@ref["001X"]と@ref["001K"]から、@($ ((pair (seq "a" "b")) . id-type . (pair (seq "x" "y"))))が可縮であることを示せばよいが、これは仮定と@ref["001L"]から従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
