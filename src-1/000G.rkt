#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:000G)

(define part:000G
  @definition[
    #:id "000G"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。このとき、@($ (("A" . fun-type . "B") . elem-of . @universe{i}))を@($ @d-fun-type[("x" . elem-of . "A")]{B})と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000G)))
