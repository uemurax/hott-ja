#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("P" . elem-of . ("A" . fun-type . @universe{i})))と@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("c" . elem-of . (d-pair-type ("x" . elem-of . "A") ("P" . fun-apply . "x"))))を要素、@($ ("b" . elem-of . ("B" . fun-apply . ((proj 1) "c"))))を要素とする。@($ (d-fun-type ("x" . elem-of . "A") (is-prop ("P" . fun-apply . "x"))))の要素があり、@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は可縮であるならば、@($ (d-pair-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("P" . fun-apply . "x"))) ("B" . fun-apply . ((proj 1) "z"))))は可縮である。
    }
    #:proof @proof[
      @paragraph{
        並び換えによりレトラクト@($ ((d-pair-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("P" . fun-apply . "x"))) ("B" . fun-apply . ((proj 1) "z"))) . retract-rel . (d-pair-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("P" . fun-apply . ((proj 1) "z")))))を得る。後者は@ref["004F"]と@ref["004X"]より命題であり、要素@($ (pair (seq (pair (seq ((proj 1) "c") "b")) ((proj 2) "c"))))を持つので、@ref["0041"]より可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
