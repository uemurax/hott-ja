#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . pair-type . "B") . elem-of . @universe{i}))を@($ (d-pair-type ("x" . elem-of . "A") "B"))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
