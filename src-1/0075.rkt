#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。@${D}が圏で、@${F}が本質的全射ならば、@($ (("F" . record-field . functor:obj) . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))))は全射である。
    }
    #:proof @proof[
      @paragraph{
        定義からすぐである。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))