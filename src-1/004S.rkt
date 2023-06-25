#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素とする。@${f}が同値ならば@($ ((fun-apply-id "f") . elem-of . ((("a" . _ . "1") . id-type . ("a" . _ . "2")) . fun-type . (("f" . fun-apply . ("a" . _ . "1")) . id-type . ("f" . fun-apply . ("a" . _ . "2"))))))は同値である。
    }
    #:proof @proof[
      @paragraph{
        @ref["004F"]と@ref["005R"]から従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
