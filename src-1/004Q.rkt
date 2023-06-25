#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(provide-part (id)
  @corollary[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。@${f}が同値ならば、@${@linv{f}}と@${@rinv{f}}は可縮である。
    }
    #:proof @proof[
      @paragraph{
        関数外延性から、レトラクト@($ (@rinv{f} . retract-rel . (fiber (seq (abs ("g" . elem-of . ("B" . fun-type . "A")) ("f" . fun-comp . "g")) @id-fun{B}))))を得て、右辺は@ref["004P"]より可縮である。@${@linv{f}}についても同様である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
