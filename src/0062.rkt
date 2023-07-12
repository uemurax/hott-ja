#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。次は論理的に同値である。
      @ordered-list[
        @list-item[#:id "0000"]{@${f}は埋め込みである。}
        @list-item[#:id "0001"]{任意の@($ (("x" . _ . "1") . elem-of . "A"))に対して、@($ (d-pair-type (("x" . _ . "2") . elem-of . "A") (("f" . fun-apply . ("x" . _ . "1")) . id-type . ("f" . fun-apply . ("x" . _ . "2")))))は可縮である。}
      ]
    }
    #:proof @proof[
      @paragraph{
        @ref["005R"]より、@anchor-ref[#:node "0062" #:anchor "0000"]は任意の@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して@($ ((fun-apply-id "f") . elem-of . ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("f" . fun-apply . ("x" . _ . "1")) . id-type . ("f" . fun-apply . ("x" . _ . "2"))))))が同値であることと論理的に同値である。@ref["001S"]より、これは@anchor-ref[#:node "0062" #:anchor "0001"]と論理的に同値である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
