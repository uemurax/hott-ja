#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。次の型は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@${@is-set{A}}}
        @list-item[#:id "0001"]{@($ (d-fun-type ("x" . elem-of . "A") (is-contr ("x" . id-type . "x"))))}
        @list-item[#:id "0002"]{@($ (d-fun-type ("x" . elem-of . "A") (d-fun-type ("z" . elem-of . ("x" . id-type . "x")) (@refl{x} . id-type . "z")))) (@emph{Axiom K}と呼ばれる)}
        @list-item[#:id "0003"]{@($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (d-fun-type (("z" . _ . "1") . elem-of . (("x" . _ . "1") . id-type . ("x" . _ . "2"))) (d-fun-type (("z" . _ . "2") . elem-of . (("x" . _ . "1") . id-type . ("x" . _ . "2"))) (("z" . _ . "1") . id-type . ("z" . _ . "2"))))))) (@emph{uniqueness of identity principle (UIP)}と呼ばれる)}
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "004D" #:anchor "0000"]から@anchor-ref[#:node "004D" #:anchor "0001"]を示す。@${A}が集合であると仮定する。要素@($ ("x" . elem-of . "A"))に対して、@($ ("x" . id-type . "x"))は命題である。要素@($ (@refl{x} . elem-of . ("x" . id-type . "x")))があるので、@ref["0041"]より@($ ("x" . id-type . "x"))は可縮である。
      }
      @paragraph{
        @anchor-ref[#:node "004D" #:anchor "0001"]から@anchor-ref[#:node "004D" #:anchor "0002"]は@ref["001L"]による。
      }
      @paragraph{
        @anchor-ref[#:node "004D" #:anchor "0003"]において@($ ("z" . _ . "1"))について帰納法を使うと@anchor-ref[#:node "004D" #:anchor "0002"]そのものになるので@anchor-ref[#:node "004D" #:anchor "0002"]から@anchor-ref[#:node "004D" #:anchor "0003"]が従う。
      }
      @paragraph{
        @anchor-ref[#:node "004D" #:anchor "0003"]から@anchor-ref[#:node "004D" #:anchor "0000"]は@ref["0041"]による。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
