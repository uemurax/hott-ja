#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数とする。次は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@${@universe{i}}のすべての関数型が関数外延性を満たす。}
        @list-item[#:id "0001"]{任意の型@($ ("A" . elem-of . @universe{i}))と型の族@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))に対して、@($ ((d-fun-type ("x" . elem-of . "A") (is-contr ("B" . fun-apply . "x"))) . fun-type . (is-contr (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))))の要素がある。}
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "0029" #:anchor "0000"]から@anchor-ref[#:node "0029" #:anchor "0001"]を示す。@($ ("c" . elem-of . (d-fun-type ("x" . elem-of . "A") (is-contr ("B" . fun-apply . "x")))))を仮定する。仮定@${c}より、関数@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と同一視@($ ("p" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . ("B" . fun-apply . "x")) (("f" . fun-apply . "x") . id-type . "y")))))を得る。同一視@($ ("q" . elem-of . (d-fun-type ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("f" . id-type . "g"))))を構成すればよい。任意の@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対して、@($ ((abs "x" ("p" . fun-apply . (seq "x" ("g" . fun-apply . "x")))) . elem-of . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))を得るが、関数外延性と@ref["001S"]により@($ ("f" . id-type . "g"))の要素を得る。
      }
      @paragraph{
        @anchor-ref[#:node "0029" #:anchor "0001"]から@anchor-ref[#:node "0029" #:anchor "0000"]を示す。@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を関数とする。@ref["001A"]より、@($ (d-pair-type ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))は@($ (d-fun-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) (("f" . fun-apply . "x") . id-type . "y"))))のレトラクトであるが、後者は仮定と@ref["001N"]により可縮である。よって、@ref["001K"]から前者も可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
