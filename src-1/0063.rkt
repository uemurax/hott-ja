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
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。@${C}と@${D}が圏で、@${F}が充満忠実ならば、@($ (("F" . record-field . functor:obj) . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))))は埋め込みである。
    }
    #:proof @proof[
      @paragraph{
        @($ ("y" . elem-of . "D"))を対象とする。@${D}が圏であることから、@($ (fiber (seq ("F" . record-field . functor:obj) "y")))は@($ (iso-fiber (seq "F" "y")))のレトラクトであることが分かる。後者は@ref["006Z"]より命題である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
