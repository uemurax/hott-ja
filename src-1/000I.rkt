#lang at-exp typed/racket

(require morg/markup
         "lib/article.rkt"
         "lib/math.rkt")

(provide part:000I)

(define part:000I
  @terminology[
    #:id "000I"
    #:indexes @list[
      @index[#:key "かたのぞく"]{型の族}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。関数@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を@${A}上の@emph{型の族(type family)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000I)))
