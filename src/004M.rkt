#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@${@is-equiv{f}}と@${@is-hae{f}}は論理的に同値であることを示せ。(ヒント:@ref["002H"]の証明を拡張すれば@($ (@is-equiv{f} . fun-type . @is-hae{f}))を示せる。)
    }
  ])

(module+ main
  (require morg/text)
  (preview))
