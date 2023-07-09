#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("A" . elem-of . @presheaf{C}))を前層とする。@${C}が圏ならば、@${@is-repr-psh{A}}は命題である。
    }
    #:proof @proof[
      @paragraph{
        @ref["0071"]と@ref["006V"]と@ref["006Z"]から従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
