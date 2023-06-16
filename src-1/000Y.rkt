#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:000Y)

(define part:000Y
  @definition[
    #:id "000Y"
    #:indexes @list[
      @index[#:key "いっかせい"]{一価性}
    ]
    @paragraph{
      @${i}を階層とする。宇宙@${@universe{i}}が@dfn{一価性(univalence)}を満たすとは、@($ (d-fun-type ("X" . elem-of . @universe{i}) (is-contr (d-pair-type ("Y" . elem-of . @universe{i}) ("X" . equiv . "Y")))))の要素があることである。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000Y)))
