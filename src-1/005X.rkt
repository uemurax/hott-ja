#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とする。@${A}が@${n}型かつ@${n}連結ならば、@${A}は可縮である。
    }
    #:proof @proof[
      @paragraph{
        @ref["0051"]から従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
