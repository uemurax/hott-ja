#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt")

(provide-part (id)
  @corollary[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とすると、@${@is-equiv{f}}は命題である。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
