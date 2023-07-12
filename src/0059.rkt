#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/axiom.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt")

(provide-part (id)
  @axiom[
    #:id id
    #:title @%{排中律}
    #:indexes @list[
      @index[#:key "はいちゅうりつ"]{排中律}
    ]
    @paragraph{
      @dfn{排中律(law of excluded middle)}は任意の階数@${i}と型@($ ("P" . elem-of . @universe{i}))に対して、@${P}が命題ならば@($ ("P" . logic-or . @logic-neg{P}))が真であることを要請する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
