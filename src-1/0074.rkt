#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。次は論理的に同値である。
      @ordered-list[
        @list-item{@${f}は全射である。}
        @list-item{@${f}は@($ trunc-level:-1)連結である。}
      ]
    }
    #:proof @proof[
      @paragraph{
        @($ ("y" . elem-of . "B"))を要素とする。@ref["0041"]より、@($ (trunc trunc-level:-1 (fiber (seq "f" "y"))))と@($ (is-contr (trunc trunc-level:-1 (fiber (seq "f" "y")))))は論理的に同値であるから主張が従う。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
