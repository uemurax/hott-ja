#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。@${f}は同値であると仮定して、次を示せ。
      @ordered-list[
        @list-item[#:id "0000"]{任意の型@($ ("X" . elem-of . @universe{i}))に対して、関数@($ ((abs "g" ("f" . fun-comp . "g")) . elem-of . ((paren ("X" . fun-type . "A")) . fun-type . (paren ("X" . fun-type . "B")))))は同値である。}
        @list-item[#:id "0001"]{任意の型@($ ("Y" . elem-of . @universe{i}))に対して、関数@($ ((abs "h" ("h" . fun-comp . "f")) . elem-of . ((paren ("B" . fun-type . "Y")) . fun-type . (paren ("A" . fun-type . "Y")))))は同値である。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
