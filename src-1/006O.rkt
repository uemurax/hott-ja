#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(provide-part (id)
  @corollary[
    #:id id
    @paragraph{
      関数外延性と一価性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とすると、@${@presheaf{C}}は圏である。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
