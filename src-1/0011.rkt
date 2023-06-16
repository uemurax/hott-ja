#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:0011)

(define part:0011
  @example[
    #:id "0011"
    #:indexes @list[
      @index[#:key "ごうせいかんすう"]{合成関数}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))を関数とする。@emph{合成関数(composed function)}@($ (("g" . fun-comp . "f") . elem-of . ("A" . fun-type . "C")))を@($ (abs "x" ("g" . fun-apply . ("f" . fun-apply . "x"))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0011)))