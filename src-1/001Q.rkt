#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt")

(provide part:001Q)

(define part:001Q
  @definition[
    #:id "001Q"
    #:indexes @list[
      @index[#:key "どうち"]{同値}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@($ (@is-equiv{f} . elem-of . @universe{i}))を@($ (d-fun-type ("y" . elem-of . "B") (is-contr (fiber (seq "f" "y")))))と定義する。@${@is-equiv{f}}の要素がある時、@${f}は@dfn{同値(equivalence)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001Q)))
