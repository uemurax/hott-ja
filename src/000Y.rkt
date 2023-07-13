#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "いっかせい"]{一価性}
    ]
    @paragraph{
      @${i}を階層とする。宇宙@${@universe{i}}が@dfn{一価性(univalence)}を満たすとは、@($ (d-fun-type ("X" . elem-of . @universe{i}) (is-contr (d-pair-type ("Y" . elem-of . @universe{i}) ("X" . equiv . "Y")))))の要素があることである。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
