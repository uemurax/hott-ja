#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:0010)

(define part:0010
  @example[
    #:id "0010"
    #:indexes @list[
      @index[#:key "こうとうかんすう"]{恒等関数}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。@emph{恒等関数(identity function)}@($ (@id-fun{A} . elem-of . ("A" . fun-type . "A")))を@($ (abs "x" "x"))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0010)))
