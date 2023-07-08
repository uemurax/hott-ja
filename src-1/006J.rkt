#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/theorem.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(provide-part (id)
  @theorem[
    #:id id
    @paragraph{
      関数外延性と一価性を仮定する。@${i}を階数とすると、@${@set-cat{i}}は圏である。
    }
    #:proof @proof[
      @paragraph{
        対象@($ ("A" . elem-of . @set-cat{i}))と@($ ("B" . elem-of . @set-cat{i}))に対して、@ref["006I"]より@($ (("A" . cat:iso . "B") . equiv . ("A" . equiv . "B")))を得て、一価性と@ref["0049"]より@($ (("A" . equiv . "B") . equiv . ("A" . id-type . "B")))を得る。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
