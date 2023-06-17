#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:000Z)

(define part:000Z
  @axiom[
    #:id "000Z"
    #:title @%{一価性公理}
    #:indexes @list[
      @index[#:key "いっかせいこうり"]{一価性公理}
    ]
    @paragraph{
      @dfn{一価性公理(univalence axiom)}は任意の階数の宇宙が一価性を満たすことを要請する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000Z)))
