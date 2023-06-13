#lang at-exp typed/racket

(require morg/markup
         "lib/article.rkt"
         "lib/math.rkt")

(provide part:000M)

(define part:000M
  @definition[
    #:id "000M"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . pair-type . "B") . elem-of . @universe{i}))を@($ (d-pair-type ("x" . elem-of . "A") "B"))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000M)))
