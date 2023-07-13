#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/terminology.rkt"
         "lib/math.rkt")

(provide-part (id)
  @terminology[
    #:id id
    #:indexes @list[
      @index[#:key "かたのぞく"]{型の族}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。関数@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を@${A}上の@dfn{型の族(type family)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
