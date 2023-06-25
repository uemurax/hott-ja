#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とすると、型@${@is-biinv{f}}は命題である。
    }
    #:proof @proof[
      @paragraph{
        @ref["0041"]より、@${f}が両側可逆であると仮定して@${@is-biinv{f}}が可縮であることを示せばよいが、@ref["004K"]より@${f}は同値なので、@ref["004Q"]から@${@is-biinv{f}}が可縮であることが従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
