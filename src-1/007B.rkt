#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。@${@universe{i}}が一価性を満たし、@${f}が同値ならば、任意の型@($ ("X" . elem-of . @universe{i}))に対して関数@($ ((abs "g" ("f" . fun-comp . "g")) . elem-of . ((paren ("X" . fun-type . "A")) . fun-type . (paren ("X" . fun-type . "B")))))は同値である。
    }
    #:proof @proof[
      @paragraph{
        一価性より、@${f}が恒等関数の場合を示せば十分であるが、@($ ((abs "g" ((id-fun "A") . fun-comp . "g")) . def-eq . (abs "g" "g")))なのでこれは同値である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
