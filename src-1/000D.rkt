#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:000D)

(define part:000D
  @rule[
    #:id "000D"
    #:indexes @list[
      @index[#:key "かいすう"]{階数}
    ]
    @paragraph{
      @emph{階数(level)}についての規則は次で与えられる。
      @unordered-list[
        @list-item{階数@($ level:zero)を構成できる。}
        @list-item{階数@${i}に対し、階数@${@level:succ{i}}を構成できる。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000D)))