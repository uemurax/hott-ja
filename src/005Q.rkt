#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数、@($ ("n" . elem-of . trunc-level))を要素とする。型@($ ((is-trunc-map (seq "n" "f")) . elem-of . @universe{i}))を@($ (d-fun-type ("y" . elem-of . "B") (is-trunc (seq "n" (fiber (seq "f" "y"))))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
