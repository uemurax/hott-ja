#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide part:000V)

(define part:000V
  @definition[
    #:id "000V"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . equiv . "B") . elem-of . @universe{i}))を@($ (record-type (seq (equiv:fun . elem-of . ("A" . fun-type . "B")) (equiv:is-equiv . elem-of . (is-equiv equiv:fun)))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000V)))
