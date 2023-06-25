#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@${@is-equiv{f}}と@${@is-biinv{f}}は論理的に同値である。
    }
    #:proof @proof[
      @paragraph{
        @ref["0026"]と@ref["002G"]と@ref["002F"]と@ref["002H"]から従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
